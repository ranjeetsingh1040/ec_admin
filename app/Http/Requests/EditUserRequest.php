<?php

namespace App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use Illuminate\Foundation\Http\FormRequest;

class EditUserRequest extends FormRequest
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

        return [
            "name" => 'required',
            "email" => 'required|email:rfc',
            "mobileno" => 'required|digits:10|numeric'

        ];
    }

    public function messages()
    {
        return [
            'name.required' => trans('user.name'),
            'email.required' => trans('user.email'),


        ];
    }
}
