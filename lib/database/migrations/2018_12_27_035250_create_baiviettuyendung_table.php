<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBaiviettuyendungTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vp_baiviettuyendung', function (Blueprint $table) {
            $table->increments('id');
            $table->string('bv_tieude');
            $table->string('bv_noidungtieude');
             $table->string('bv_noidungtuyen');
              $table->string('bv_tentp');
              $table->string('bv_diadiem');
               $table->string('bv_soluongtuyen');
               $table->string('bv_mucluong');
                $table->string('cb_id');
                $table->string('lh_id');
                $table->string('ct_id');
                $table->string('bc_id');
                $table->string('bv_mota');
                $table->string('bv_gioitinh');
                $table->string('bv_mota');
                $table->string('bv_quyenloi');
                $table->string('bv_kinhnghiem');
                $table->string('bv_hannophs');
                $table->string('bv_ngonnguvieths');
                $table->string('bv_yeucaucv');
                $table->string('bv_yeucauhs');
                $table->string('lhcty_id');
                $table->string('bv_nguoidang');
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
        Schema::dropIfExists('vp_baiviettuyendung');
    }
}
