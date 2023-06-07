<?php 

namespace App\Mail;

use Illuminate\Mail\Mailable;

class SuccessfulPayment extends Mailable
{
    public $user;
    public $plan;

    public function __construct($user,$plan)
    {
        $this->user = $user;
        $this->plan = $plan;
    }

    public function build()
    {
        return $this->from('forcamp7@gmail.com')
                    ->view('success_payment');
    }
}
