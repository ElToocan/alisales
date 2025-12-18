<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect(route('dashboard'));
});

Auth::routes();

Route::get('/dashboard', [App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');

if(config('app.env') === 'local'){
    Route::get('autologin/{email}',function($email){
        Auth::login(\App\Models\User::firstWhere('email',$email));
        return redirect(route('dashboard'));
    })->name('autologin');
}

Route::resource('customers', App\Http\Controllers\CustomerController::class);

Route::resource('products', App\Http\Controllers\ProductController::class);
