<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use App\Models\User;
// use Hash;
use App\Traits\Common;
use App\Traits\LogActivity;
use Illuminate\Support\Facades\Auth;
use Exception;
use App\Mail\ResetPassword;
use App\Mail\ResetPasswordBuyer;
use App\Http\Requests\Auth\ResetPasswordEmailRequest;
use App\Http\Requests\Auth\ResetPasswordRequest;
use App\Http\Requests\SellerResetPasswordRequest;
use App\Mail\ChangePassword;
use App\Models\Mailtemplate;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Carbon\Carbon;



class ForgotPasswordController extends Controller
{
  use Common, LogActivity;

  /**
   * Create a new controller instance.
   *
   * @return void
   */
  public function __construct()
  {
    //$this->middleware('guest');
  }


  public function resetpassword(ResetPasswordEmailRequest $request)
  {
    $res = [];
    $url = '';
    $user = User::where('email', $request->email)->where('usergroup_id', $request->usergroup_id)->first();

    if ($user == null) {
      $res['message'] = 'Email does not exist';
      return $res;
    }

    DB::table('password_resets')
      ->where('email', $user->email)
      ->delete();


    $token = Str::random(60);
    $email = $user->email;


    DB::table('password_resets')->insert([
      'email' => $request->email,
      'token' => $token,
      'created_at' => Carbon::now()
    ]);
    if($request->usergroup_id==4){
      $url = config('mail.Buyer_Url');
      // config('mail.Seller_Url')
    }
    elseif($request->usergroup_id==3){
      $url = config('mail.Seller_Url');
    }

    Mail::send('emails.reset-password', ['token' => $token, 'name' => $user->name, 'url'=>$url], function ($message) use ($email) {
      $message->to($email);
      $message->subject('Reset Your Password');
    });



    // Mail::to($user->email)->send(new ResetPasswordBuyer($token));
    // return response()->json(['message' => 'Reset password email sent']);



    // $mailtemplate = Mailtemplate::where('name', 'reset_passsword')->first();
    // if ($mailtemplate->status != 'active') {
    //   $res['message'] = 'This feature has been stoped by administration team';
    //   return $res;
    // }
    // $token = str_random(8);

    // $user->password = Hash::make($token);

    // if ($user->save()) {

    //   Mail::to($user->email)->send(new ResetPassword($user, $token));

    //   \Session::put('successmessage', __('admin_user.user_password_reset'));
    // } else {
    //   \Session::put('successmessage', __('admin_user.user_password_plsreset'));
    // }
    try {
      $ip = $this->getRequestIP();
      $this->doActivityLog(
        $user,
        Auth::user(),
        ['ip' => $ip, 'details' => $_SERVER['HTTP_USER_AGENT']],
        'LOGNAME_RESET_PASSWORD',
        'Reset Password'
      );
    } catch (Exception $e) {
    }
    // return response()->json(['message' => 'Password reset link sent']);
    // $res['message'] = 'Email send successfully.Please check your email.';
    $res['message'] = 'Password reset link sent. check your email.';
    return $res;
  }

  public function ResetPasswordMail(ResetPasswordRequest $request)
  {
    $res = [];
    // Delete Token older than 60 minute
    $formatted = Carbon::now()->subMinutes(60)->toDateTimeString();
    DB::table('password_resets')->where('created_at', '<=', $formatted)->delete();


    // $validator = Validator::make($request->all(), [
    //   'token' => 'required|string',
    //   'password' => 'required|string|min:6'
    // ]);

    // if ($validator->fails()) {
    //   return response()->json(['message' => $validator->errors()->first()], 422);
    // }

    $passwordReset = DB::table('password_resets')->where('token', $request->token)->first();

    if (!$passwordReset) {
      $res['message'] = 'Invalid token';
      return $res;
      // return response()->json(['message' => 'Invalid token'], 422);
    }

    $user = User::where('email', $passwordReset->email)->first();

    if (!$user) {
      $res['message'] = 'Unable to find user with this email';
      return $res;
      // return response()->json(['message' => 'Unable to find user with this email'], 422);
    }

    $user->update(['password' => Hash::make($request->password)]);

    DB::table('password_resets')->where('email', $user->email)->delete();

    $res['message'] = 'Password reset successfully';
    return $res;

    // return response()->json(['message' => 'Password reset successfully'], 200);
    // return response()->json(['success' => $request->all(), 'message' => 'Address Saved Successfully'], 200);
    // return response("dffsdf",$request->all());
  }

  public function sellerResetPassword(ResetPasswordEmailRequest $request)
  {
    // return response()->json(['success'=>true,'message'=>'Password send successfully. Please check your email.'],200);
    $res = [];
    $user = User::where('email', $request->email)->where('usergroup_id', $request->usergroup_id)->first();

    if ($user == null) {
      $res['message'] = 'Email does not exist';
      return $res;
    }
    $mailtemplate = Mailtemplate::where('name', 'reset_passsword')->first();
    if ($mailtemplate->status != 'active') {
      $res['message'] = 'This feature has been stoped by administration team';
      return $res;
    }
    $token = str_random(60);
    $user->password = Hash::make($token);

    if ($user->save()) {


      Mail::to($user->email)->send(new ResetPassword($user, $token));

      \Session::put('successmessage', __('admin_user.user_password_reset'));
    } else {
      \Session::put('successmessage', __('admin_user.user_password_plsreset'));
    }
    try {
      $ip = $this->getRequestIP();
      $this->doActivityLog(
        $user,
        Auth::user(),
        ['ip' => $ip, 'details' => $_SERVER['HTTP_USER_AGENT']],
        'LOGNAME_RESET_PASSWORD',
        'Reset Password'
      );
    } catch (Exception $e) {

      //dd($e->getMessage());
    }
    $res['message'] = 'Password send successfully. Please check your email.';
    return $res;
  }




  // public function sellerResetPassword(SellerResetPasswordRequest $request)
  // {
  //     $res=[];

  //     $email=$request->email;

  //      $user=User::where('email',$email)->first();

  //      $hashedPassword = $user->password;


  //       $user->password=Hash::make($request->password);
  //       $user->save();

  //       Mail::to($user->email)->queue(new ChangePassword($user));



  //       try{
  //             $ip = $this->getRequestIP();
  //             $this->doActivityLog(                                    
  //               $user,
  //               Auth::user(),
  //               ['ip' => $ip, 'details' => $_SERVER['HTTP_USER_AGENT']],
  //               'LOGNAME_PASSWORD_UPDATED',
  //               'Password Updated'
  //             );

  //          }
  //         catch(Exception $e)
  //         {

  //          //ssdd($e->getMessage());
  //         } 
  //       $res['message']="Password is changed successfully";

  //     return $res;
  // }



}
