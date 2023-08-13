<?php

namespace App\Http\Controllers\Admin\Banner;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;
use App\Models\Banner;
use Illuminate\Support\Facades\File;

class BannerController extends Controller
{
    public function index()
    {
        $banner = Banner::all();
        return view('admin.banner.list', compact('banner'));
        // dd("ok");
    }
    public function show()
    {
        // dd("ok");
        return view('admin.banner.add');
    }
    public function store(Request $request)
    {
        $request->validate(
            [
                'bannerImage' => 'required|mimes:jpg,jpeg,png,svg,webp',
            ]
        );

        if (Auth::user()->usergroup_id == 1 && Auth::user()->name == 'admin') {
            $image = $request->file('bannerImage');
            $name = 'Banner' . '-' . time() . '.' . $image->getClientOriginalExtension();
            $imgpath = $image->getRealPath();
            $image_resize = Image::make($imgpath);
            $image_resize->resize(1600, 450);
            $image_resize->save(public_path('uploads/banner/' . $name));
            $imagepath = 'uploads/banner/' . $name;
            $banner = new Banner();
            $banner->bannerImage = $imagepath;
            $banner->status = 1;
            $banner->save();
            if ($request) {
                return redirect('admin/banner/')->with('success', 'Image Upload Successfully');
            } else {
                return back()->with('success', 'Failed');
            }
        }
    }
    public function change(Request $request, $id)
    {
        $request->validate(
            [
                'changeImage' => 'required|mimes:jpg,jpeg,png,svg,webp',
            ]
        );
        if (Auth::user()->usergroup_id == 1 && Auth::user()->name == 'admin') {

            $image = $request->file('changeImage');
            $name = 'Banner' . '-' . time() . '.' . $image->getClientOriginalExtension();
            $imgpath = $image->getRealPath();
            $image_resize = Image::make($imgpath);
            $image_resize->resize(1600, 450);
            $image_resize->save(public_path('uploads/banner/' . $name));
            $imagepath = 'uploads/banner/' . $name;
            $banner = Banner::find($id);
            if ($banner) {
                File::delete(public_path($banner->bannerImage));
                $banner->bannerImage = $imagepath;
                $banner->save();
                return back()->with('success', 'Deleted');
            } else {
                return back()->with('success', 'Failed');
            }
        }
    }
    public function delete($id)
    {

        if (Auth::user()->usergroup_id == 1 && Auth::user()->name == 'admin') {
            $banner = Banner::find($id);
            if ($banner) {
                File::delete(public_path($banner->bannerImage));
                $banner->delete();
                return back()->with('success', 'Deleted');
            } else {
                return back()->with('success', 'Failed');
            }
        }
    }
}
