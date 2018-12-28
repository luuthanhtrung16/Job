<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLienhecongtyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_lienhecty', function (Blueprint $table) {
            $table->increments('id');
             $table->integer('cty_id')->unsigned()->nullable();
            $table->foreign('cty_id')->references('id')->on('vp_congty')->onDelete('cascade');
            $table->string('lhe_nguoilienhe');
            $table->integer('lhe_phone');
            $table->string('lhe_chucvu');
            $table->string('lhe_email',100);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vp_lienhecty');
    }
}
