<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCongtyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_congty', function (Blueprint $table) {
            $table->increments('id');
            $table->string('cty_email');
            $table->string('cty_password');
            $table->string('cty_tencongty');
            $table->string('cty_diachi');
            $table->string('cty_tinhtp');
            $table->string('cty_quymocongty');
            $table->string('cty_mota');
            $table->string('cty_linkwebsite');
            $table->integer('cty_phone');
            $table->integer('cty_fax');
            $table->string('cty_logo');
            $table->string('cty_giayphepkinhdoanh');
            $table->string('email',100)->unique();
            $table->rememberToken();
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
        Schema::dropIfExists('vp_congty');
    }
}
