<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTinhocvanphongTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_tinhocvanphong', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('hs_id')->unsigned()->nullable();
            $table->foreign('hs_id')->references('id')->on('vp_kynang');
            $table->string('th_tenloaitinhoc');
            $table->string('capdo');
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
        Schema::dropIfExists('vp_tinhocvanphong');
    }
}
