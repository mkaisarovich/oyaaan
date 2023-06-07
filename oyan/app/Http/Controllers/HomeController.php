<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;


class HomeController extends Controller
{
    public function verifiedSuccess(Request $request){


        $user = User::query()->find($request->get('id'));
        if (!$user)
            return 'not_found';

        $user->email_verified_at = now();
        $user->save();
        return 'email verified successfully, try to log in!';
    }
}
