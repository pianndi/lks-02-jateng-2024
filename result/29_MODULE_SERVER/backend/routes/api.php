<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\UserController;
use App\Http\Middleware\UserMiddleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::prefix('v1')->group(function () {
    Route::post('auth/signup', [AuthController::class, 'signup'])->name('signup');
    Route::post('auth/signin', [AuthController::class, 'signin'])->name('signin');

    Route::middleware('auth:sanctum')->group(function () {
        Route::get('users/{username}', [UserController::class, 'show']);

        Route::post('auth/signout', [AuthController::class, 'signout'])->name('signout');
        Route::middleware(UserMiddleware::class)->group(function () {
            Route::get('admins', [UserController::class, 'admin']);
            Route::post('users', [AuthController::class, 'signup']);
            Route::get('users', [UserController::class, 'user']);
            Route::put('users/{id}', [UserController::class, 'update']);
            Route::delete('users/{id}', [UserController::class, 'destroy']);
        });

        //
        Route::post('games', [GameController::class, 'store']);
        Route::get('games', [GameController::class, 'index']);
        Route::get('games/{slug}', [GameController::class, 'show']);
        Route::delete('games/{slug}', [GameController::class, 'destroy']);
        Route::put('games/{slug}', [GameController::class, 'update']);
    });
});


Route::fallback(function () {
    return response([
        'status' => 'not-found',
        'message' => 'Not found'
    ]);
});
