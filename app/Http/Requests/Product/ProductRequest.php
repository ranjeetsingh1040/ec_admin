<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;
use App\Models\AttributesetCategory;
use App\Models\Attribute;
//use Illuminate\Validation\Rule;

class ProductRequest extends FormRequest
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


      Validator::extend('checkattribute', function ($attribute, $value, $parameters, $validator) {
         // dd($value);
         $attributeset = AttributesetCategory::where('category_id', $value)->first();
         // dd($attributeset);
         $attributesetid = $attributeset->attributeset_id;
         $attribute = Attribute::where('attributeset_id', '=', $attributesetid)->first();


         if (count($attribute) == 0) {
            return false;
         } else {
            return TRUE;
         }
      });

      $rules = [];

      $input = Request::input();


      if ($input['imagecount'] == 0) {
         $rules['product_image'] = 'required|mimes:jpg,jpeg,png,svg,webp';
      }
      $rules['store_id'] = 'required';
      $rules['category_id'] = 'required|checkattribute';
      $rules['name'] = 'required';
      $rules['brand'] = 'required';
      $rules['slug'] = 'required|unique:products';
      $rules['sku'] = 'required';
      $rules['price'] = 'required|numeric|min:1|max:1000000';
      $rules['weight'] = 'required|numeric';
      $rules['tax_id'] = 'required';
      $rules['type'] = 'required';
      $rules['status'] = 'required';
      $rules['description'] = 'required';
      return $rules;
   }
   public function messages()
   {


      $messages = [];
      $input = Request::input();


      // for ($i=1; $i<=$input['imagecount']; $i++)
      // { 

      //   dump('me');
      //   $messages['product_image'.$i.'.dimensions'] =trans('product.imageheight');
      // }
      $messages['category_id.checkattribute'] = trans('product.attributemsg');
      $messages['category_id.required'] = trans('product.categoryname');
      $messages['name.required'] = trans('product.productname');
      $messages['store_id.required'] = trans('product.storename');
      $messages['slug.required'] = trans('product.slug');
      $messages['sku.required'] = trans('product.sku');
      $messages['description.required'] = trans('product.description');
      $messages['price.required'] = trans('product.price');
      $messages['weight.required'] = trans('product.weight');
      $messages['product_image.required'] = trans('product.product_image');
      $messages['status.required'] = trans('product.status');

      return $messages;
      // return [
      //     'category_id.checkattribute' =>'Attach Subcategory with attributeset and add Attributes for selected Category', 


      // ];
   }
}
