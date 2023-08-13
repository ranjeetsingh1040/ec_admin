<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSellerprofilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sellerprofiles', function (Blueprint $table) {
            $table->increments('id');
            $table->Integer('user_id')->unsigned()->nullable();
            $table->foreign('user_id')->references('id')->on('users');
            $table->string('business_name');
            $table->string('business_type');
            $table->string('gstin');
            $table->string('pan_number');
            $table->string('bankaccount_name')->nullable();
            $table->string('bankaccount_number')->nullable();
            $table->string('business_address')->nullable();
            $table->string('business_city')->nullable();
            $table->string('business_state')->nullable();
            $table->string('business_pincode')->nullable();
            $table->string('business_url')->nullable();
            $table->Integer('approved_by')->unsigned()->nullable();
            $table->foreign('approved_by')->references('id')->on('users');
            $table->timestamps();
            $table->softDeletes();

            // $table->string('mobileno')->unique()->nullable();
            // $table->string('email');
            // $table->string('company_name')->nullable();
            // $table->string('company_url')->nullable();
            // $table->enum('status', ['not_approved', 'approved'])->default('not_approved');
            // $table->string('aboutbusiness')->nullable();
            // $table->string('pan_number')->nullable();
            // $table->string('bankaccount_number')->nullable();
            // $table->string('bankaccountdetail')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sellerprofiles');
    }
}
