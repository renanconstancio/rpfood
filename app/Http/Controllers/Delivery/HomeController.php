<?php

namespace App\Http\Controllers\Delivery;

use App\CentralLogics\BannerLogic;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
  public function home()
  {

    $banners = BannerLogic::get_banners(null);

    return view('delivery.home', compact($banners));
  }
}
