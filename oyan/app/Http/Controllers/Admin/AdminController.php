<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
// use App\Http\Requests\DayRequest;
use App\Http\Controllers\Controller;
// use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Traits\Utils;
use App\Models\Plan;
use App\Http\Traits\TJsonResponse;
use App\Models\Days;
use App\Models\Interest;

class AdminController extends Controller
{
    use TJsonResponse;

    public function getUsers(){
        $users = User::get();
        for($i=0;$i<sizeof($users);$i++){
            $users[$i]['interests'] = User::query()
            ->join('interests', 'users.id', '=', 'interests.user_id')
            ->select('interests.id','interests.interest')
            ->where('users.id', $users[$i]['id'])
            ->get();
        }
        // $users['interests'] = Interest::find(3);
        // dd($users);
        return $this->successResponse(Utils::$MESSAGE_GET_USERS,$users)->header('Cache-Control', 'no-cache');
       
    }

    public function userInfo(User $user){
        $user['csrf']= csrf_token();
            // dd(Interest::find(3));

        $user['interests'] =  User::query()
        ->join('interests', 'users.id', '=', 'interests.user_id')
        ->select('interests.id','interests.interest')
        ->where('users.id', $user['id'])
        ->get();
        
//query()->select("interest")->where('user_id','=',$user['id'])

        return $this->successResponse(Utils::$MESSAGE_GET_USER,$user)->header('Cache-Control', 'no-cache');
    }

    public function update(Request $request){
        User::query()
      ->where('id', $request->id)
      ->update(['name' =>$request->name,'about_me'=>$request->get('about_me')]);
      return $this->successResponse("Успешно изменился  ");
    }


    public function getDays(){
        $days = Days::get();
        return $this->successResponse(Utils::$MESSAGE_GET_Days,$days);
    }

    public function dayInfo(Days $day){
        // dd($day);
        return $this->successResponse(Utils::$MESSAGE_GET_Day,$day);
    }


    public function store(Request $request){
        // return view('post.create');
        Days::query()->create([
            'day' => $request->get('day'),
            'user_id' => $request->get('user_id'),
            'note' => $request->get('note'),
            // 'live' => $request->live ? 1 : 0,
        ]);

        return $this->successResponse(Utils::$MESSAGE_SUCCESS_POST);
    }
    
    // public function store(Request $request){
    //     Days::query()->create([
    //         'day' => $request->get('day'),
    //         'user_id' => $request->get('user_id'),
    //         'note' => $request->get('note'),
    //         // 'live' => $request->live ? 1 : 0,
    //     ]);

    //     return $this->successResponse(Utils::$MESSAGE_SUCCESS_POST);
    // }

    public function showDay (Days $day){
        return $this->successResponse(Utils::$MESSAGE_GET_Day,$day);
    }

    public function interestUser(Request $request){

        Interest::query()->create(
            ['user_id' => $request->get('id'),
            'interest' => $request->get('interest'),]
        );

        return $this->successResponse("Успешно добавился");

    }
    // public function (Request $request){
    //     $info = User::find($request->id);
    //     dd($info)
    //     // $user = User::table('users')->where()
    // }

}