<?php

namespace App\Http\Controllers\Attributes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Attributeset;
use App\Models\Attribute;
use App\Models\Category;
use App\Models\Product;
use App\Models\AttributesetCategory;
use App\Models\AttributeProduct;
use App\Models\ProductVariation;
use App\Models\Stock;
use App\Http\Resources\AttributeProductResource;
use App\Http\Requests\Product\AttributeProductRequest;
use App\Http\Resources\Admin\AttributesetResource;
use Exception;

class AttributesetController extends Controller
{

   public function displayAttributes($id)
   {

      $attributesetid;
      $attributesets = AttributesetCategory::where('category_id', $id)->get();
      foreach ($attributesets as $attributeset) {
         $attributesetid = $attributeset->attributeset_id;
      }
      $attributes = Attribute::where('attributeset_id', $attributesetid)->get();
      return $attributes;
   }

   public function store(Request $request)
   {
      $res = [];
      try {
         $getrequests = $request->json()->all();
         // $filtered = Arr::where($getrequests, function ($value, $key) {
         //              return ($value[$key]['attribute_value']);
         //         });
         // return response($getrequests[0]['price']);
         // return response(count($getrequests));
         $requestCount = count($getrequests);
         if ($requestCount == 0) {
            $res['message'] = "Please Enter Attribute Value";
            return $res;
         }
         if ($requestCount > 0) {
            for ($i = 0; $i < $requestCount; $i++) {

               if ($getrequests[$i]['stock'] == '') {
                  $res['message'] = "Please enter Stock";
                  return $res;
               }
               if ($getrequests[$i]['isvariation'] == true) {
                  if ($getrequests[$i]['isprice'] == '') {
                     $res['message'] = "Please enter price" . $i;
                     return $res;
                  }
               }

               // if ($getrequests[$i]['attribute_value'] != '' && $getrequests[$i]['stock'] != '') {
               $productvariation = new ProductVariation();
               $productvariation->product_id = $getrequests[$i]['product_id'];

               if ($getrequests[$i]['attribute_label'] != 'No Variation') {
                  $productvariation->name = $getrequests[$i]['attribute_value'];
               } else {
                  $productvariation->name = 'no variation';
               }
               if ($getrequests[$i]['isvariation'] == true) {
                  $productvariation->price = $getrequests[$i]['isprice'] * 100;
               } else {
                  $productvariation->price = $getrequests[$i]['price'] * 100;
               }
               $productvariation->order = $getrequests[$i]['order'];
               $productvariation->attribute_product_id = $getrequests[$i]['attribute_product_id'];
               $productvariation->save();
               $stock = new Stock();
               $stock->quantity = $getrequests[$i]['stock'];
               $stock->product_variation_id = $productvariation->id;
               $stock->save();
               // }
            }
            $res['message'] = "Success";
         } else {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
         }
         return response()->json(['success' => true, 'message' => 'Saved Successfully'], 200);
      } catch (Exception $exception) {
         // dd($exception->getMessage());
         return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
      }
   }



   public function update(Request $request) //AttributeProductRequest

   {
      $res = [];
      try {
         $getrequests = $request->json()->all();
         // dd($getrequests);
         if (count($getrequests) > 0) {
            for ($i = 0; $i < count($getrequests); $i++) {
               if (($getrequests[$i]['attribute_value'] === null && $getrequests[$i]['stock'] === null) && $getrequests[$i]['productvariationid'] !== null) {
                  ProductVariation::where('id', $getrequests[$i]['productvariationid'])->delete();
                  Stock::where('product_variation_id', $getrequests[$i]['productvariationid'])->delete();
               }
               if ($getrequests[$i]['attribute_value'] !== null && $getrequests[$i]['stock'] !== null) {

                  if ($getrequests[$i]['productvariationid'] !== null) {
                     $productvariation = ProductVariation::where('id', $getrequests[$i]['productvariationid'])->first();
                  } else {
                     $productvariation = new ProductVariation();
                  }
                  $productvariation->product_id = $getrequests[$i]['productid'];
                  $productvariation->name = $getrequests[$i]['attribute_value'];
                  $productvariation->price = $getrequests[$i]['isprice'] ? $getrequests[$i]['isprice'] * 100 : $getrequests[$i]['price'] * 100;
                  $productvariation->order = $getrequests[$i]['order'];
                  $productvariation->attribute_product_id = $getrequests[$i]['attribute_product_id'];
                  $productvariation->save();

                  if ($getrequests[$i]['productvariationid'] !== null) {
                     $orderStatus = Stock::where('product_variation_id', $getrequests[$i]['productvariationid'])
                        ->update([
                           'quantity' => $getrequests[$i]['stock'],
                        ]);
                  } else {
                     $stock = new Stock();
                     $stock->quantity = $getrequests[$i]['stock'];
                     $stock->product_variation_id = $productvariation->id;
                     $stock->save();
                  }
               }

               // if($getrequests[$i]['productvariationid']!=null)
               // {
               //   $productvariation=ProductVariation::find($getrequests[$i]['productvariationid']);
               //   $productvariation->product_id=$getrequests[$i]['product_id'];
               //   $productvariation->name=$getrequests[$i]['attribute_value'];

               //       if($getrequests[$i]['isvariation']==true){

               //           $productvariation->price=$getrequests[$i]['isprice'] *100;

               //       }
               //       else{
               //          $productvariation->price=$getrequests[$i]['price'];
               //       }



               //   $productvariation->order=$getrequests[$i]['order'];
               //   $productvariation->attribute_product_id=$getrequests[$i]['attribute_product_id'];
               //   $productvariation->save();

               //   $stock=Stock::where('product_variation_id',$getrequests[$i]['productvariationid'])->first();

               //   $stock->quantity=$getrequests[$i]['stock'];

               //   $stock->save();
               // }
               // else{
               //   $productvariation=new ProductVariation();
               //   $productvariation->product_id=$getrequests[$i]['product_id'];
               //   $productvariation->name=$getrequests[$i]['attribute_value'];
               //   if($getrequests[$i]['isvariation']==true){
               //     $productvariation->price=$getrequests[$i]['isprice']*100;
               //   }
               //   else{
               //      $productvariation->price=$getrequests[$i]['price']*100;
               //   }

               //   $productvariation->order=$getrequests[$i]['order'];
               //   $productvariation->attribute_product_id=$getrequests[$i]['attribute_product_id'];
               //   $productvariation->save();

               //   $stock=new Stock();
               //   $stock->quantity=$getrequests[$i]['stock'];
               //   $stock->product_variation_id=$productvariation->id;
               //   $stock->save();
               // }

            }
            $res['message'] = "Success";
         } else {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
         }
         return response()->json(['success' => true, 'message' => 'Saved Successfully'], 200);
      } catch (Exception $exception) {
         return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
      }
   }


   public function showattribute()
   {
      $attributeset = Attribute::with('attributesets')->get();
      return $attributeset;
   }
   public function getattribute()
   {
      $attributeset = Attribute::all();
      // return response()->json(['success' => true, 'message' => "$attributeset"], 200);
      return $attributeset;
   }

   public function getProductVariationlist($productid)
   {
      $productvariation = ProductVariation::where('product_id', $productid)->get();
      return $productvariation;
   }
}