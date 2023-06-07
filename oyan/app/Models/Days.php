<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Days extends Model
{
    use HasFactory;

    // protected $guarded = [];

    // protected $table = 'days';
    // // protected $fillable = ['title'];
    // protected $guarded = false;

    protected $fillable = [
        'day',
        'user_id',
        'note',
    ];
}
