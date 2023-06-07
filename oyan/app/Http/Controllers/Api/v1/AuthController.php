<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\UserRegisterRequest;
use App\Http\Traits\TJsonResponse;
use App\Http\Traits\Utils;
use App\Mail\RegisterSendMail;
use App\Models\User;
use App\Notifications\ConfirmEmailNotification;
use Illuminate\Http\Request;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    use TJsonResponse;

    public function register(UserRegisterRequest $request){
        $free_trial_day = "+1 week";

        $data = $request->validated();
        $data['password'] = Hash::make($request->get('password'));
        $data['uuid'] = Str::uuid();
        $data['role'] =  0;
        $data['trial_ends_at'] = date('Y-m-d H:i:s', strtotime($free_trial_day));
        $data['nickname'] = $request->nickname;
        $data['deviceId'] = $request->get('deviceId');
        $data['gender'] = 0;
        $user = User::query()->create($data);
        $data['id'] = $user->id;


        Notification::send($user, new ConfirmEmailNotification($data));
        return $this->successResponse(Utils::$MESSAGE_VERIFY_PHONE_SEND);
    }

    public function login(LoginRequest $request){
        
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)){

            $user = User::where('email', $credentials['email'])->first();
            $data['user'] = $user;
            $data['token'] = $user->createToken("API token")->plainTextToken;


            if(is_null($user->email_verified_at)){
                Notification::send($user, new ConfirmEmailNotification(["email"=>$user->email,
                "id"=>$user->id]));
                return $this->successResponse(Utils::$MESSAGE_VERIFY_PHONE_SEND);
            }else{
            return $this->successResponse(Utils::$MESSAGE_AUTHENTICATED,$data);
            }

        }else{
            return $this->failedResponse(Utils::$MESSAGE_LOGIN_INCORRECT,400);
        }
        

    }


}
