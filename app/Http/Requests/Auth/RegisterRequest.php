<?php

namespace App\Http\Requests\Auth;

use Illuminate\Foundation\Http\FormRequest;

use Illuminate\Support\Facades\Validator;



class RegisterRequest extends FormRequest
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

    public function rules()
    {
        Validator::extend('checkspecialcharacter', function ($attribute, $value, $parameters, $validator) {
            $check = true;

            $sp = '"%*;<>?^`{|}~\\\'#=&';
            if (preg_match("/[" . $sp . "]/", $value)) {
                $check = false;
            }


            return $check;
        });

        return [
            'name' => 'required',
            'email' => 'required|email:rfc|unique:users,email',
            'mobileno' => 'required|unique:users|digits:10|numeric',
            'password' => 'required|min:6|confirmed',
            'password_confirmation' => 'required|min:6',
            // 'mobileno' => 'required|unique:users|numeric|digits:10|regex:/(01)[0-9]{9}',
        ];
    }
    public function messages()
    {
        return [
            'name.required' => trans('adduser.name'),
            'email.required' => trans('adduser.email'),
            'mobileno.required' => trans('adduser.mobileno'),
            'password.required' => trans('adduser.password'),
            'password_confirmation.required' => trans('adduser.password_confirmation'),
        ];
    }
    // protected function failedValidation(Validator $validator)
    // {
    //     throw new HttpResponseException(response()->json($validator->errors(), 422));
    // }
}
