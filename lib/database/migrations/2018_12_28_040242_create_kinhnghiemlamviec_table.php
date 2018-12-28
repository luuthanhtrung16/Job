<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKinhnghiemlamviecTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_knlamviec', function (Blueprint $table) {
            $table->increments('id');
             $table->integer('hs_id')->unsigned()->nullable();
            $table->foreign('hs_id')->references('id')->on('vp_hosoungvien')->onDelete('cascade');
            $table->string('knlv_chucdanh');
            $table->string('knlv_congty');
            $table->string('knlv_motacongviec');
             $table->date('knlv_thoigianbd');
             $table->string('knlv_thoigiankt');
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
        Schema::dropIfExists('vp_knlamviec');
    }
}
