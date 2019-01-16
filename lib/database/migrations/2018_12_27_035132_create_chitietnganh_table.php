<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChitietnganhTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_chitietnganh', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('nn_id')->unsigned()->nullable();
            $table->foreign('nn_id')->references('id')->on('vp_nganhnghe')->onDelete('cascade');
            $table->string('ct_tennganh');
            $table->string('ct_tennganhslug');
            $table->string('ct_hinhanh');
            $table->string('ct_tenthanhpho');
            $table->string('ct_noidung');
            $table->integer('ct_luong');
            $table->date('ct_ngaydang');
            $table->date('ct_thoigianhethan');
            $table->string('ct_noibat');
            $table->string('ct_luotxem');
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
        Schema::dropIfExists('vp_chitietnganh');
    }
}
