<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKynangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_kynang', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('hs_id')->unsigned()->nullable();
            $table->foreign('hs_id')->references('id')->on('vp_hosoungvien');
            $table->string('kn_motachuyenmon');
            // $table->string('kn_chuyenmon');
            // $table->string('kn_ngoaingu'); lấy bảng riêng
            // $table->string('kn_tinhocvanphong'); lấy bảng riêng
           
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
        Schema::dropIfExists('vp_kynang');
    }
}
