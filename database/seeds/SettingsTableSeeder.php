<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('settings')->Insert([
        'key'    => 'sitetitle',
        'name'      => 'Site Title',
        'description'=>'Shopping Cart site.',
        'value'=>'shoptown',
        'field'         => '{"name":"value","label":"Value", "title":"Site Title" ,"type":"text"}',
        'status'        => '1',
        'created_at'    => date("Y-m-d H:i:s"),
        'updated_at'    => date("Y-m-d H:i:s"),    
      ]);

        DB::table('settings')->Insert([
        'key'    => 'sitename',
        'name'      => 'shoptown',
        'description'=>'Shopping Cart site.',
        'value'=>'shoptown',
        'field'         => '{"name":"value","label":"Value", "title":"shoptown" ,"type":"text"}',
        'status'        => '1',
        'created_at'    => date("Y-m-d H:i:s"),
        'updated_at'    => date("Y-m-d H:i:s"),    
      ]);

       DB::table('settings')->Insert([
        'key'    => 'sitelogo',
        'name'      => 'Site Logo',
        'description'=>'Logo of the website. Recommended Size : 220px (w) x 45px (h)',
        'value'=>'images/shoptown-logo.png',
        'field'         => '{"name":"value","label":"Value" ,"type":"browse"}',
        'status'        => '1',
        'created_at'    => date("Y-m-d H:i:s"),
        'updated_at'    => date("Y-m-d H:i:s"),    
      ]);

       
    }
}
