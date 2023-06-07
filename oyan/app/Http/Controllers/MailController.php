<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use App\Mail\SuccessfulPayment;

class MailController extends Controller
{
    public function sendSuccessfulPaymentEmail()
    {
        $user = auth()->user(); 
        
       
        Mail::to('forcamp7@gmail.com')->send(new SuccessfulPayment($user));
        
        return view('subscription_success'); 
    }
}