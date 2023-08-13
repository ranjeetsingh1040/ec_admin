<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;

class AttributeProductRequest extends FormRequest
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
  public function rules(Request $request)
  {
    $rules = [];
    // $input = $this->json()->all();
    $input = $request->json()->all();
    // $input[0]['attribute_value']

    if (count($input) > 0) {
      // if ($input[0]['attribute_label'] != 'No Variation') {
      for ($i = 0; $i < count($input); $i++) {
          $rules[$i]['stock'.$i] = 'required';
        // if ($input[$i]['attribute_value'] == '' && $input[$i]['stock'] == '') {
        //   $rules['attribute_value' . $i] = 'required';
        // }
        // if (($input[$i]['attribute_value'] != '' && $input[$i]['stock'] == '') || ($input[$i]['isprice'] == true &&
        //   $input[$i]['stock'] == '')) {
        // }

        // if ($input[$i]['isvariation'] == true) {
        //   $rules['isprice' . $i] = 'required';
        // }
      }
    } 
    else {
      $rules['attribute_value'] = 'required';
      $rules['ttttttt'] = 'required';
    }
    return $rules;
  }

  // public function messages()
  // {
  //   $messages = [];
  //   $input = $this->json()->all();

  //   if (count($input) > 0) {
  //     for ($i = 0; $i < count($input); $i++) {
  //       $messages['stock' . $i . '.required'] = trans('product.stack_required_detail');
  //       $messages['attribute_value' . $i . '.required'] = trans('product.attribute_value_required_detail');
  //       $messages['isprice' . $i . '.required'] = trans('product.isprice_required_detail');
  //     }
  //   }


  //   return $messages;
  // }

  // public function messages()
  // {
  //     $messages = [];
  //     $input = Request::input();

  //     if(count($input)>0)
  //     {
  //         for($i=0;$i<count($input);$i++)
  //         {
  //             $messages['product_id'.$i.'.required'] = "Product_Id is required";                  
  //             $messages['attribute_product_id'.$i.'.required'] = "Attribute_Id is required";
  //             $messages['attribute_value'.$i.'.required'] = "Attribute_value is required";
  //             $messages['stock'.$i.'.required'] = "Stock is required";

  //         }  
  //     }
  //     else{
  //         $messages['attribute_value.required']='Please enter attribute_value,stock';
  //     }



  //    // dump($messages);
  //     return $messages;
  // }
}
