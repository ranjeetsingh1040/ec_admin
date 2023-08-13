<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;

use App\Http\Resources\PrivateUserResource;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\Auth\RegisterRequest;
use App\Mail\RegisterNewUser;
use App\Mail\VerifyMail;
use Illuminate\Support\Facades\Mail;
use Exception;
use App\Models\Mailtemplate;
use App\Traits\Common;
use App\Traits\LogActivity;
use Auth;
use App\Traits\MobileMSG91;
use Config;

class RegisterController extends Controller
{
  use Common, LogActivity; //,MobileMSG91;

  public function action(RegisterRequest $request)
  {
    try {

      if ($request->usergroup_id == 1 || $request->usergroup_id == 2) {
        return response()->json(['status' => false, 'message' => 'Unprocessable Entity'], 422);
      }

      // $user = User::create($request->only('email', 'name', 'password','usergroup_id'));
      if ($request->usergroup_id == 3 || $request->usergroup_id == 4) {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->mobileno = $request->mobileno;
        $user->password = $request->password;
        $user->usergroup_id = $request->usergroup_id;
        $user->profileStatus = 0;
        $user->image = 'uploads/profile_image/defult.png';
        $user->token = sha1(time());
        $user->save();
        // $this->sendSMS('')
      }

      try {
        $ip = $this->getRequestIP();
        $this->doActivityLog(
          $user,
          Auth::user(),
          ['ip' => $ip, 'details' => $_SERVER['HTTP_USER_AGENT']],
          'LOGNAME_USER_REGISTERED',
          'User Registered'
        );
        $mailtemplate = Mailtemplate::where('name', 'register_new_user')->first();

        Mail::to($user->email)->queue(new VerifyMail($user));

        if ($mailtemplate->status == 'active') {
          Mail::to($user->email)->queue(new RegisterNewUser($user));
        }

        return response()->json(['status' => true, 'message' => 'Thanks for your registration, please check your inbox!'], 200);
      } catch (Exception $e) {
        return response()->json(['status' => false, 'message' => 'Mail Sending Fails'], 422);
      }
      // return new PrivateUserResource($user);
    } catch (Exception $e) {
      return response()->json(['status' => false, 'message' => 'Unprocessable Entity'], 422);
    }
  }

  public function verifyUser($token)
  {
    try {
      // $status;
      $user = User::where('token', $token)->first();
      if (isset($user)) {
        $user->email_verified_at = now()->timestamp;
        $user->save();

        $status = "Your e-mail is verified. You can now login.";

        try {
          $ip = $this->getRequestIP();
          $this->doActivityLog(
            $user,
            Auth::user(),
            ['ip' => $ip, 'details' => $_SERVER['HTTP_USER_AGENT']],
            'LOGNAME_EMIL_VERIFIED',
            'Email Verified'
          );
        } catch (Exception $e) {

          //dd($e->getMessage());
        }
      } else {
        if ($user->usergroup_id == 4) {
          return redirect(env('Buyer_Url') . 'auth/signin')->with('warning', "Sorry your email cannot be identified.");
        } elseif ($user->usergroup_id == 3) {
          return redirect(env('Seller_Url') . 'auth/signin')->with('warning', "Sorry your email cannot be identified.");
        }
      }
      if ($user->usergroup_id == 4) {
        return redirect(config('mail.Buyer_Url') . 'auth/signin')->with('status', $status);
      } elseif ($user->usergroup_id == 3) {
        return redirect(config('mail.Seller_Url') . 'auth/signin')->with('status', $status);
      }
    } catch (Exception $e) {
      // dd($e->getMessage());

    }
  }
}
