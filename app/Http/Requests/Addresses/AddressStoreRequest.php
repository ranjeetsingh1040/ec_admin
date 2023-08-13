<?php

namespace App\Http\Requests\Addresses;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Validator;
use App\Models\City;
use App\Models\State;

class AddressStoreRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {

        // Validator::extend('checkcity', function ($attribute, $value, $parameters, $validator)
        // {  
        //     $city=City::where('id',$value)->first();

        //     if($city->state_id==request()->state)
        //     {
        //       return true;
        //     }
        //    return false;
        // });


        // Validator::extend('checkstate', function ($attribute, $value, $parameters, $validator)
        // {  
        //     $state=State::where('id',$value)->first();

        //     if($state->country_id==request()->country_id)
        //     {
        //       return true;
        //     }
        //    return false;
        // });


        return [
            // 'firstname' => 'required|unique:addresses|checkspecialcharacter',
            'firstname' => 'required|alpha|max:50',
            'lastname' => 'required|alpha|max:50',
            'mobileno' => 'required|numeric|digits:10',
            'address_1' => 'required',
            // 'email' => 'required',
            // 'mobileno'=>'required|unique:addresses,mobileno|numeric',
            // 'city' => 'required|checkcity',
            // 'state' => 'required|checkstate',
            'city' => 'required',
            'state' => 'required',
            'postal_code' => 'required|numeric|digits:6',
            'country_id' => 'required|exists:countries,id',
        ];
    }

    public function messages()
    {
        return [
            'firstname.required' => trans('address.firstname'),
            // 'firstname.checkspecialcharacter' => trans('address.specialcharacter'),
            'lastname.required' => trans('address.lastname'),
            'mobileno.required' => trans('address.mobileno'),
            'mobileno.numeric' => trans('address.numeric'),
            'address_1.required' => trans('address.address_1'),
            // 'address_2.required' => trans('address.address_2'),
            'city.required' => trans('address.city'),
            'state.required' => trans('address.state'),
            'postal_code' => trans('address.postal_code'),
            'mobileno.digits' => trans('address.mobilenosize'),
            'postal_code.digits' => trans('address.postal_codesize'),
            'country_id.required' => trans('address.country_id'),
            // 'city.checkcity' => trans('address.checkcity'),
            // 'state.checkstate' => trans('address.checkstate'),
        ];
    }
}
