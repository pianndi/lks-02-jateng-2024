<?php

namespace App\Http\Controllers;

use App\Models\Administrator;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function signup(Request $request)
    {
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
        $user = User::create(
            $request->only("username", "password")
        );

        return response([
            "status" => "success",
            'token' => $user->createToken('user')->plainTextToken
        ], 201);
    }
    public function signin(Request $request)
    {
        $rules = [
            'username' => 'required|min:4|max:60',
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
        // if (!User::where("username", $request->input("username"))->first()) {
        //     return response([],
        // }
        $admin = Administrator::where('username', $request->input('username'))->first();
        if ($admin) {
            if (Hash::check($request->input('password'), $admin->password)) {
                return response([
                    "status" => "success",
                    'token' => $admin->createToken('user', ["adminToken"])->plainTextToken
                ]);
            }
        }
        $user = User::where("username", $request->input("username"))->first();
        if ($user) {
            if (Hash::check($request->input("password"), $user->password)) {
                return response([
                    "status" => "success",
                    'token' => $user->createToken('user', ["userToken"])->plainTextToken
                ]);
            }
        }

        return response([
            "status" => "invalid",
            "message" => "Wrong username or password"
        ], 401);
    }
    public function signout(Request $request)
    {
        $request->user()->tokens()->delete();
        return response([
            'status' => 'success'
        ]);
    }
}
