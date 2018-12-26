<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHosoungvienTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_hosoungvien', function (Blueprint $table) {
            $table->increments('id');
            $table->string('hs_img');
            $table->string('hs_vitriungtuyen');
            $table->string('hs_trinhdohocvan');
            $table->integer('hs_sonamkinhnghiem');
            $table->string('hs_quoctich');
            $table->string('hs_tinhtp');
            $table->string('hs_quanhuyen');
            $table->string('hs_diachi');
            $table->string('hs_tinhtranghonnhan');
            $table->integer('nd_id')->unsigned()->nullable();
            $table->foreign('nd_id')->references('id')->on('vp_nguoidung')->onDelete('cascade');
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
        Schema::dropIfExists('vp_hosoungvien');
    }
}
