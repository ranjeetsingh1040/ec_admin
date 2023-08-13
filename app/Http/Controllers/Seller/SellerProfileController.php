<?php

namespace App\Http\Controllers\Seller;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SellerProfile;
use App\Models\User;
use Exception;
use App\Mail\RegisterNewUser;
use App\Mail\VerifyMail;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\Seller\SellerRegistrationRequest;
use App\Models\Mailtemplate;
use App\Traits\Common;
use App\Traits\LogActivity;
use Illuminate\Support\Facades\Auth;
use App\Traits\MobileMSG91;

class SellerProfileController extends Controller
{
    use Common, LogActivity, MobileMSG91;


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sellerprofile = SellerProfile::get();
        return $sellerprofile;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SellerRegistrationRequest $request) //SellerRegistration
    {
        $res = [];
        try {
            $sellerprofile = new SellerProfile;
            $sellerprofile->user_id = Auth::user()->id;
            $sellerprofile->status = "not_approved";
            $sellerprofile->business_name = $request->business_name;
            $sellerprofile->business_type = $request->business_type;
            $sellerprofile->pan_number = $request->pan_number;
            $sellerprofile->gstin = $request->gstin;
            $sellerprofile->business_address = $request->business_address;
            $sellerprofile->business_city = $request->business_city;
            $sellerprofile->business_state = $request->business_state;
            $sellerprofile->business_pincode = $request->business_pincode;
            $sellerprofile->bankaccount_name = $request->bankaccount_name;
            $sellerprofile->bankaccount_number = $request->bankaccount_number;
            $sellerprofile->business_url = $request->business_url;
            $sellerprofile->save();

            $user = User::find(Auth::user()->id);
            $user->profileStatus = 1;
            $user->save();
            //$this->sendSMS('123456',$request->mobileno);

            // $mailtemplate = Mailtemplate::where('name', 'register_new_user')->first();

            // if ($mailtemplate->status == 'active') {
            //     Mail::to($user->email)->queue(new RegisterNewUser($user));
            // }

            // Mail::to($user->email)->queue(new VerifyMail($user));

            try {
                $ip = $this->getRequestIP();
                $this->doActivityLog(
                    $sellerprofile,
                    Auth::user(),
                    ['ip' => $ip, 'details' => $_SERVER['HTTP_USER_AGENT']],
                    'LOGNAME_SELLER_PROFILE_STORED',
                    'Seller Profile Stored'
                );
            } catch (Exception $e) {
                //dd($e->getMessage());
            }

            return response()->json(['success' => true, 'message' => 'You have been successfully registered!. Please wait for the admin approval'], 200);
        } catch (Exception $e) {
            dump($e->getMessage());
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
        }
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
        $sellers = User::with('sellerprofile')->first();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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
}
