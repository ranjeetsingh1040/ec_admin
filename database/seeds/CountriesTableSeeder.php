<?php

use App\Models\Country;
use Illuminate\Database\Seeder;

class CountriesTableSeeder extends Seeder
{
    
    public function run()
    {
     $countries = array(
        array('id' => 1,'code' => 'IN','name' => "India",'phonecode' => 91,'status'=>'active','created_at' => date("Y-m-d H:i:s"),'updated_at' => date("Y-m-d H:i:s")),
      );

     DB::table('countries')->insert($countries);
         }
}