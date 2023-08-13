<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePincodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pincodes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('pincode');
            $table->integer('seller_id')->unsigned()->index();
            $table->foreign('seller_id')->references('id')->on('users');
            // $table->integer('country_id')->unsigned()->index();
            // $table->foreign('country_id')->references('id')->on('countries');
            // $table->integer('state_id')->unsigned()->index();
            // $table->foreign('country_id')->references('id')->on('countries');
            // $table->integer('city_id')->unsigned()->index();
            // $table->foreign('country_id')->references('id')->on('countries');
            $table->integer('delivered')->unsigned()->index();
            $table->boolean('status')->default(true);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pincodes');
    }
}
