<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PlanController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/', function () {
    return view('welcome');
});

Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    Artisan::call('route:cache');
    return 'Application cache has been cleared';
});

Route::get('/login', function () {
    return redirect()->route("login");
});

// Route::get('verify/success', [\App\Http\Controllers\HomeController::class, 'verifiedSuccess'])->name('verified.success');

// Route::get('/home', function (){
//     return 'as';
// })->name('plans');

// Route::middleware("auth")->group(function(){
//     Route::get('plans',[PlanController::class,'index']);
//     Route::get('plans/{plan}', [PlanController::class, 'show'])->name("plans.show");
//     Route::post('subscription', [PlanController::class, 'subscription'])->name("subscription.create");
// });

// Route::middleware(['auth:sanctum'])->prefix("admin")->group(function (){
//     Route::get('/users', [\App\Http\Controllers\Admin\AdminController::class, 'getUsers'])->name('getUsers');
//     Route::get('/users/{user}', [\App\Http\Controllers\Admin\AdminController::class,'userInfo'])->name('userInfo');
//     Route::post('/users/{user}/update', [\App\Http\Controllers\Admin\AdminController::class,'update']);
//     Route::post('/users/{user}/interest', [\App\Http\Controllers\Admin\AdminController::class,'interestUser']);
    

//     Route::get('/users/{user}/days',[\App\Http\Controllers\Admin\AdminController::class,'getDays'])->name('getDays');
//     // Route::get('/users/{user}/days/{day}',[\App\Http\Controllers\Admin\AdminController::class,'dayInfo'])->name('dayInfo');
//     Route::get('/users/{user}/days/create', [\App\Http\Controllers\Admin\AdminController::class,'createDay'])->name('createDay');   
//     // Route::post('/users/{user}/days',[\App\Http\Controllers\Admin\AdminController::class,'store'])->name('store');
//     Route::get('/users/{user}/days/{day}',[\App\Http\Controllers\Admin\AdminController::class,'showDay']);
//     // Route::post('/users/user',[\App\Http\Controllers\Admin\AdminController::class,'getUser'])->name('getUser');
//  })->middleware('admin');


Auth::routes(['register' => true]);