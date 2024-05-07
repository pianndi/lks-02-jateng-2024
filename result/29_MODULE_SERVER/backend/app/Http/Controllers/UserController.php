<?php

namespace App\Http\Controllers;

use App\Models\Administrator;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function admin(Request $request)
    {
        $users = Administrator::all(['username', 'last_login_at', 'created_at', 'updated_at']);
        return response([
            "totalElements" => $users->count(),
            "content" => $users
        ]);
    }
    public function user(Request $request)
    {
        $users = User::all(['username', 'last_login_at', 'created_at', 'updated_at']);
        return response([
            "totalElements" => $users->count(),
            "content" => $users
        ]);
    }
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        if (!$user) {
            return response([
                'status' => 'not-found',
                'message' => 'User Not Found'
            ], 403);
        }
        $rules = [
            'username' => 'required|unique:users,username|min:4|max:60',
            'password' => 'required|min:5|max:20',
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
        if (User::where("username", $request->username)->exists()) {
            return response([
                'status' => 'invalid',
                'message' => 'Username already exists'
            ], 400);
        }
        $user->update($request->only("username", "password"));

        return response([
            "status" => "success",
            'username' => $user->username
        ], 201);
    }
    public function destroy($id)
    {
        $user = User::find($id);
        if (!$user) {
            return response([
                'status' => 'not-found',
                'message' => 'User Not Found'
            ], 403);
        }
        $user->delete();
        return response('', 204);
    }
    public function show(Request $request, $username)
    {
        $user = User::where('username', $username)->first();
        return response([
            "username" => $user->username,
            'registeredTimestamp' => $user->created_at,
            'authoredGames' => $user->games()->only(['slug', 'title', 'description'])
        ]);
    }
}
