<?php

namespace App\Http\Controllers\Delivery;

use App\Http\Controllers\Controller;

class HomeController extends Controller
{
  public function home()
  {
    return view('delivery.home', []);
  }
}
