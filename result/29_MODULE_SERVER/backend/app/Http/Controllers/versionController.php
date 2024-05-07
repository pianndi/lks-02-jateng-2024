<?php

namespace App\Http\Controllers;

use App\Models\Game;
use Illuminate\Http\Request;

class versionController extends Controller
{
    public function index(Request $request, $slug)
    {
        $game = Game::where('slug', $slug)->with('gameVersions')->first();
        // r
    }
}
