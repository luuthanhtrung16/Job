<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBangcapTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_bangcap', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('hs_id')->unsigned()->nullable();
            $table->foreign('hs_id')->references('id')->on('vp_hosoungvien');
            $table->string('bc_truong');
            $table->string('bc_khoa');
            $table->string('bc_tenbangcap');
            $table->string('bc_chuyennganh');
            $table->string('bc_xeploai');
            $table->date('bc_thoigiannhaphoc');
            $table->date('bc_thoigianketthuc');
            $table->string('bc_thongtinbosung');
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
        Schema::dropIfExists('vp_bangcap');
    }
}
