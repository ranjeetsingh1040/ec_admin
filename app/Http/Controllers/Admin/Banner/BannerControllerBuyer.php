<?php

namespace App\Http\Controllers\Admin\Banner;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;
use App\Models\Banner;
use Illuminate\Support\Facades\File;

class BannerControllerBuyer extends Controller
{
    public function index()
    {
        $banner = Banner::all();
        return $banner;
    }
}
