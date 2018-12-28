<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCongviecmongmuonTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_congviecmongmuon', function (Blueprint $table) {
            $table->increments('id');
             $table->integer('hs_id')->unsigned()->nullable();
            $table->foreign('hs_id')->references('id')->on('vp_hosoungvien')->onDelete('cascade');
            $table->string('cvmm_noilamviec');
             $table->integer('ct_id')->unsigned()->nullable();
             $table->foreign('ct_id')->references('id')->on('vp_chitietnganh')->onDelete('cascade');
             $table->integer('lh_id')->unsigned()->nullable();
             $table->foreign('lh_id')->references('id')->on('vp_loaihinh')->onDelete('cascade');
             $table->integer('cb_id')->unsigned()->nullable();
             $table->foreign('cb_id')->references('id')->on('vp_capbac')->onDelete('cascade');
             $table->string('cvmm_mucluong');
             $table->string('cvmm_muctieunghenghiep');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vp_congviecmongmuon');
    }
}
