<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PlanController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('user')->group(function (){
    Route::post('register', [\App\Http\Controllers\Api\v1\AuthController::class, 'register']);
    Route::post('login', [\App\Http\Controllers\Api\v1\AuthController::class, 'login']);
});

Route::middleware("auth:sanctum")->group(function(){
    Route::get('plans',[PlanController::class,'index']);
    Route::get('plans/{plan}', [PlanController::class, 'show'])->name("plans.show");
    Route::post('subscription', [PlanController::class, 'subscription'])->name("subscription.create");
});

Route::get('verify/success', [\App\Http\Controllers\HomeController::class, 'verifiedSuccess'])->name('verified.success');


Route::middleware(['auth:sanctum'])->prefix("admin")->group(function (){
    Route::get('/users', [\App\Http\Controllers\Admin\AdminController::class, 'getUsers'])->name('getUsers');
    Route::get('/users/{user}', [\App\Http\Controllers\Admin\AdminController::class,'userInfo']);
    Route::post('/users/{user}/update', [\App\Http\Controllers\Admin\AdminController::class,'update']);
    Route::post('/users/{user}/interest', [\App\Http\Controllers\Admin\AdminController::class,'interestUser']);
    

    Route::get('/users/{user}/days',[\App\Http\Controllers\Admin\AdminController::class,'getDays'])->name('getDays');
    // Route::get('/users/{user}/days/{day}',[\App\Http\Controllers\Admin\AdminController::class,'dayInfo'])->name('dayInfo');
    Route::post('/users/{user}/days/create', [\App\Http\Controllers\Admin\AdminController::class,'store']);   
    // Route::post('/users/{user}/days',[\App\Http\Controllers\Admin\AdminController::class,'store'])->name('store');
    Route::get('/users/{user}/days/{day}',[\App\Http\Controllers\Admin\AdminController::class,'showDay']);
    // Route::post('/users/user',[\App\Http\Controllers\Admin\AdminController::class,'getUser'])->name('getUser');
 })->middleware('admin');
// Route::middleware(['auth:sanctum'])->prefix("admin")->group(function (){
//     Route::get('/users', [\App\Http\Controllers\Admin\AdminController::class, 'getUsers'])->name('getUsers');
//  })->middleware('admin');
