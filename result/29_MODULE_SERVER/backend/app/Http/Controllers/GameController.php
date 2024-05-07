<?php

namespace App\Http\Controllers;

use App\Models\Game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Nette\Utils\Strings;

class GameController extends Controller
{
    public function index(Request $request)
    {
        $page = $request->query("page", 0) + 1;
        $size = $request->query("size", 10);
        $sort = $request->query("sortBy", 'title');
        $dir = $request->query("sortDir", 'asc');
        $games = Game::orderBy($sort, $dir)->paginate($size, ['*'], 'page', $page);
        $games = $games->toArray();
        return response([
            'page' => $games['current_page'] - 1,
            'size' => $games['per_page'],
            'totalElements' => $games['total'],
            'content' => $games['data']
        ]);
    }
    public function store(Request $request)
    {
        $rules = [
            'title' => 'required|min:3|max:60',
            'description' => 'required|min:0|max:200',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $violations = [];
            foreach ($validator->getMessageBag()->toArray() as $key => $error) {
                $violations[$key] = [
                    'message' => implode(',', $error)
                ];
            }
            return response([
                "status" => 'invalid',
                "message" => "Request body is not valid.",
                "violations" => $violations
            ], 400);
        }
        if (Game::where('title', $request->title)->count() > 0) {
            return response([
                'status' => 'invalid',
                'slug' => 'Game title already exists'
            ]);
        }
        $game = Game::create([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            // nanti
            'slug' => $request->input('title'),
            'created_by' => $request->user()->id,
            // 'slug' => Strings::slug($request->input('title'))
        ]);

        response([
            'status' => 'success',
            'slug' => $game->slug
        ], 201);
    }
    public function show(Request $request, $slug)
    {
        $game = Game::where('slug', $slug)->with('gameVersions')->first();
        return response($game);
    }
    public function destroy(Request $request, $slug)
    {
        $game = Game::where('slug', $slug)->with('gameVersions')->first();
        $game->delete();
    }
    public function update(Request $request, $slug)
    {
        $game = Game::where('slug', $slug)->with('gameVersions')->first();
        if ($game->created_by !== $request->user()->id) {
            return response([
                'status' => 'forbidden',
                'message' => "You are not the game author"
            ], 403);
        }
        $game->update($request->only(['title', 'description']));
        if ($game->created_by !== $request->user()->id) {
            return response([
                'status' => 'forbidden',
                'message' => "You are not the game author"
            ], 403);
        }
        return response()->json([
            'status' => 'success',
        ]);
        // $version
    }
}
