<?php

namespace App\Http\Requests\Seller;

use Illuminate\Foundation\Http\FormRequest;

use Illuminate\Support\Facades\Validator;


class SellerRegistrationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {

        Validator::extend('checkspecialcharacter', function ($attribute, $value, $parameters, $validator)
        {  
            $check=true;            
            
            $sp='"%*;<>?^`{|}~\\\'#=&';
            if(preg_match("/[".$sp."]/",$value))
            {
                $check=false;
            }

            
           return $check;
        });
        return [
             'business_name' =>'required|unique:sellerprofiles',//|alpha_dash
             'business_type' =>'required',
              'pan_number' =>'required',
              'gstin' =>'required',
            //  'pan_number' =>'required|regex:/^([a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1})$/',
            //  'gstin' =>'required|regex:/^[0-9]{2}[A-Z]{3}[ABCFGHLJPTF]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/',
             'business_pincode' =>'required|numeric|digits:6',
            //  'business_url'=>'url',
             
            //  'mobileno'=>'required|unique:sellerprofiles,mobileno|checkspecialcharacter',
            //  'email' => 'required|email:rfc,dns|unique:users,email',
            //  'password' => 'required|min:6|checkspecialcharacter',
            //  'company_name'=>'required|checkspecialcharacter',
            //  'aboutbusiness'=>'required',
        ];
    }

    public function messages()
      {
        return [
            'business_name.required'=>trans('adduser.business_name'),
            'business_type.required'=>trans('adduser.business_type'),
            'pan_number.required'=>trans('adduser.pan_number'),
            'gstin.required'=>trans('adduser.gstin'),
            // 'mobileno.required'=>trans('adduser.mobileno'),
            // 'email.required'=>trans('adduser.email'),
            // 'password.required'=>trans('adduser.password'),
            // 'company_name.required'=>trans('adduser.company_name'),
            // 'company_url.required'=>trans('adduser.company_url'),
            // 'aboutbusiness'=>trans('adduser.aboutbusiness'),
            // 'password.checkspecialcharacter'=>trans('adduser.specialchar'),
            // 'name.checkspecialcharacter'=>trans('adduser.specialchar'),
            // 'mobileno.checkspecialcharacter'=>trans('adduser.specialchar'),
            // 'company_name.checkspecialcharacter'=>trans('adduser.specialchar'),
             
        ];
     }
}
