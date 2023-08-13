<?php

use Illuminate\Database\Seeder;

class SellerProfileSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    DB::table('sellerprofiles')->Insert([
      'user_id'    => 3,
      'status'      => 'approved',
      'business_name'      => 'seller1',
      'business_type'      => 'individual',
      'gstin'      => 'GSTIN8599IN',
      'pan_number'      => 'TIN859',
      'bankaccount_name'      => 'SBI',
      'bankaccount_number'      => '454545555445589',
      'business_address'      => '25 Shopbagh Pura',
      'business_city'      => 'Udaipur',
      'business_state'      => 'Rajashthan',
      'business_pincode'      => '313001',
      'business_url'      => 'www.gogogol.com',
      'created_at'    => date("Y-m-d H:i:s"),
      'updated_at'    => date("Y-m-d H:i:s"),
      'approved_by' => 1


      // 'pan_number'      => 'GYPD$58B',
      // 'mobileno'=>'7845869475',
      // 'email'=>'seller1@gegocart.com',
      // 'company_name'=> 'test',
      // 'company_url'=> 'test',
      // 'status'=> 'approved',
      // 'aboutbusiness'=> 'test',
      // 'pan_number'=> '545478787',
      // 'bankaccount_number'=> null,
      // 'bankaccountdetail'=> null,
    ]);


    // DB::table('sellerprofiles')->Insert([
    //   'user_id'    => 3,
    //   'business_name'      => 'seller2',
    //   'business_type'      => 'mobiles',
    //   'gstin'      => 'AUS56996d',
    //   'pan_number'      => 'PURWDF6565',
    //   'bankaccount_name'      => 'UCO',
    //   'bankaccount_number'      => '3345458631211',
    //   'business_address'      => '999 california',
    //   'business_city'      => 'los angilies',
    //   'business_state'      => 'Rajashthan',
    //   'business_pincode'      => '659656',
    //   'business_url'      => 'www.microsoft.com',
    //   'created_at'    => date("Y-m-d H:i:s"),
    //   'updated_at'    => date("Y-m-d H:i:s"),
    //   'approved_by' => 1
    // ]);


    //   DB::table('sellerprofiles')->Insert([
    //   'user_id'    => 5,
    //   'seller_name' => 'seller3',
    //   'mobileno'=>'5695869475',
    //   'email'=>'seller3@gegocart.com',
    //   'company_name'=> 'testseller3',
    //   'company_url'=> 'testseller3',
    //   'status'=> 'approved',
    //   'aboutbusiness'=> 'test',
    //   'pan_number'=> '545478787',
    //   'bankaccount_number'=> null,
    //   'bankaccountdetail'=> null,
    //   'created_at'    => date("Y-m-d H:i:s"),
    //   'updated_at'    => date("Y-m-d H:i:s"), 
    //   'approved_by'=>1   
    // ]);

    //   DB::table('sellerprofiles')->Insert([
    //   'user_id'    => 9,
    //   'seller_name'      => 'admin-seller',
    //   'mobileno'=>'7845869421',
    //   'email'=>'admin-seller@gegocart.com',
    //   'company_name'=> 'test',
    //   'company_url'=> 'test',
    //   'status'=> 'approved',
    //   'aboutbusiness'=> 'test',
    //   'pan_number'=> '545478787',
    //   'bankaccount_number'=> null,
    //   'bankaccountdetail'=> null,
    //   'created_at'    => date("Y-m-d H:i:s"),
    //   'updated_at'    => date("Y-m-d H:i:s"), 
    //   'approved_by'=>1   
    // ]);
  }
}
