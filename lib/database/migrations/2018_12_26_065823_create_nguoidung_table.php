<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNguoidungTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_nguoidung', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nd_hoten');
            $table->date('nd_ngaysinh');
            $table->integer('nd_gioitinh');
            $table->string('nd_email',100)->unique();
            $table->string('nd_phone',15);
            $table->string('nd_password');
            $table->string('nd_avatar');
            $table->string('nd_level');
            $table->timestamps();
            $table->rememberToken();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vp_nguoidung');
    }
}
