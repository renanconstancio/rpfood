<?php

use App\Http\Controllers\Delivery\HomeController;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Delivery', 'as' => 'delivery.'], function () {
  Route::get('/teste', [HomeController::class, 'home'])->name('delivery');
});
