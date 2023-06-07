<?php

namespace App\Http\Controllers;

use App\Http\Traits\TJsonResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Plan;
use App\Models\User;
use App\Http\Traits\Utils;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Support\Facades\Mail;
use App\Http\Notifications\DemoEmail;
use App\Mail\SuccessfulPayment;




class PlanController extends Controller
{
    
use TJsonResponse;

    public function index(){
        $plans = Plan::get();
        // dd($plans);
        // return view("plans",compact("plans"));
        return $this->successResponse(Utils::$MESSAGE_GET_PLANS,$plans);
    }

    public function show(Plan $plan, Request $request)
    {
        $intent = auth()->user()->createSetupIntent();
        // return $this->successResponse(Utils::$MESSAGE_GET_PLAN,$plan);
        return view("subscription", compact("plan", "intent"));
    }


    public function subscription(Request $request)
    {
        // dd($request);
        $plan = Plan::find($request->plan);
        // dd($plan);
        $subscription = $request->user()->newSubscription($request->plan, $plan->stripe_plan)
        ->trialDays(30)
        ->create($request->token);
        $user = auth()->user(); 
        

        // dd($user);
        Mail::to('forcamp7@gmail.com')->send(new SuccessfulPayment($user,$plan));
    

        return view('subscription_success');                

        // return sendSuccessfulPaymentEmail();
    }


}
