<?php

use Illuminate\Database\Seeder;

class StateTableSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    //
    DB::table('states')->delete();
    $states = array(
      array('name' => "ANDHRA PRADESH", 'country_id' => 1),
      array('name' => "ASSAM", 'country_id' => 1),
      array('name' => "ARUNACHAL PRADESH", 'country_id' => 1),
      array('name' => "BIHAR", 'country_id' => 1),
      array('name' => "GUJRAT", 'country_id' => 1),
      array('name' => "HARYANA", 'country_id' => 1),
      array('name' => "HIMACHAL PRADESH", 'country_id' => 1),
      array('name' => "JAMMU & KASHMIR", 'country_id' => 1),
      array('name' => "KARNATAKA", 'country_id' => 1),
      array('name' => "KERALA", 'country_id' => 1),
      array('name' => "MADHYA PRADESH", 'country_id' => 1),
      array('name' => "MAHARASHTRA", 'country_id' => 1),
      array('name' => "MANIPUR", 'country_id' => 1),
      array('name' => "MEGHALAYA", 'country_id' => 1),
      array('name' => "MIZORAM", 'country_id' => 1),
      array('name' => "NAGALAND", 'country_id' => 1),
      array('name' => "ORISSA", 'country_id' => 1),
      array('name' => "PUNJAB", 'country_id' => 1),
      array('name' => "RAJASTHAN", 'country_id' => 1),
      array('name' => "SIKKIM", 'country_id' => 1),
      array('name' => "TAMIL NADU", 'country_id' => 1),
      array('name' => "TRIPURA", 'country_id' => 1),
      array('name' => "UTTAR PRADESH", 'country_id' => 1),
      array('name' => "WEST BENGAL", 'country_id' => 1),
      array('name' => "DELHI", 'country_id' => 1),
      array('name' => "GOA", 'country_id' => 1),
      array('name' => "PONDICHERY", 'country_id' => 1),
      array('name' => "LAKSHDWEEP", 'country_id' => 1),
      array('name' => "DAMAN & DIU", 'country_id' => 1),
      array('name' => "DADRA & NAGAR", 'country_id' => 1),
      array('name' => "CHANDIGARH", 'country_id' => 1),
      array('name' => "ANDAMAN & NICOBAR", 'country_id' => 1),
      array('name' => "UTTARANCHAL", 'country_id' => 1),
      array('name' => "JHARKHAND", 'country_id' => 1),
      array('name' => "CHATTISGARH", 'country_id' => 1),
    );
    DB::table('states')->insert($states);
  }
}
