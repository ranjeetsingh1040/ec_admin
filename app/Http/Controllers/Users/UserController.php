<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Http\Requests\UserRequest;
use App\Http\Requests\EditUserRequest;
use Illuminate\Support\Facades\Auth;
// use File;
use App\Traits\Common;
use App\Traits\LogActivity;
use App\Mail\VerifyMail;
use Illuminate\Support\Facades\Mail;
use App\Http\Resources\SellerResource;
use App\Http\Resources\SellerProfileResource;
use Exception;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\File;


class UserController extends Controller
{
  use Common, LogActivity;
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    $users = User::where('id', Auth::id())->first();
    return $users;
  }

  public function sellerdetail()
  {
    $sellers = User::with('sellerprofile')->where('id', Auth::id())->first();
    return new SellerResource($sellers);
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
    //
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
    //
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    //
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
    //
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(EditUserRequest $request)
  {
    $res = [];
    try {
      if (User::where('name', $request->name)->where('email', $request->email)->where('mobileno', $request->mobileno)->first()) {
        return response()->json(['success' => false, 'message' => 'Profile not updated'], 200);
      }
      if (User::where('email', $request->email)->where('id', '!=', $request->id)->first()) {
        return response()->json(['success' => false, 'message' => 'Email Already Exists.'], 200);
      }
      if (User::where('mobileno', $request->mobileno)->where('id', '!=', $request->id)->first()) {
        return response()->json(['success' => false, 'message' => 'Mobile no Already Exists.'], 200);
      }

      $user = User::where('id', $request->id)->first();
      $user->name = $request->name;
      if ($user->email != $request->email) {
        $user->email_verified_at = null;
        $user->token = sha1(time());
      }
      $user->email = $request->email;
      $user->mobileno = $request->mobileno;




      // if($request->image!="null")
      //     { 
      //         //$user =User::where('id',Auth::id())->first();
      //         if($user->image!="")
      //         {
      //             $oldimage=$user->image;
      //             File::delete('profile/'.$user->image);
      //         }
      //         $imageName = $user->name.time().'.'.request()->image->getClientOriginalExtension();
      //         request()->image->move(public_path('profile'), $imageName);
      //         $user->image = 'profile/'.$imageName;
      //        // $user->save();    
      //     }
      $user->save();
      if ($user->email_verified_at == null) {
        Mail::to($user->email)->queue(new VerifyMail($user));
      }
      return response()->json(['success' => true, 'message' => 'Profile Updated Successfully.'], 200);
    } catch (Exception $e) {
      return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
    }
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
    //
  }
  public function changeavatar(Request $request)
  {
    $request->validate([
      'profileImage' => 'required|mimes:png,jpg,jpeg',
    ]);
    try {
      $user = User::where('id', $request->id)->first();
      $username = $user->name;
      $stringwithoutspace = str_replace(' ', '-', $username);
      $image = $request->file('profileImage');
      $name = $stringwithoutspace . '_' . time() . '.' . $image->getClientOriginalExtension();
      $imgpath = $image->getRealPath();
      $image_resize = Image::make($imgpath);
      $image_resize->resize(400, 400);
      $image_resize->save(public_path('uploads/profile_image/' . $name));
      $imagepath = 'uploads/profile_image/' . $name;
      
      
      // $request->file('profileImage')->store('pictures');
      
      // return response()->json(['status' => true, 'message' => $request->toArray()], 200);
      // return response()->json(['success' => $imagepath, 'message' => 'test succesfull.'], 200);
      if (auth()->user()->id == $request->id || auth()->user()->id == $request->user()->id) {
        // if ($user->image != '' && $user->image != null) {
          if ($user->image != 'uploads/profile_image/defult.png') {
            File::delete(public_path($user->image));
          }
          $user->image = $imagepath;
          // return response()->json(['success' => $request->all(), 'message' => 'test succesfull.'], 200);
        $user->save();
        return response()->json(['success' => true, 'message' => 'Profile image updated.'], 200);
      }
      return response()->json(['success' => false, 'message' => 'Unprocessable Entity 9999'], 422);
    } catch (Exception $e) {
      return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
    }
  }
}
