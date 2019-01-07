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
            // $table->string('bv_tieude');
            // $table->string('bv_slug');
            // $table->string('bv_noidungtieude');
            // $table->string('bv_noidungtuyen');
            // $table->string('bv_tentp');
            // $table->string('bv_diadiem');
            // $table->integer('bv_soluongtuyen');
            // $table->integer('bv_mucluong');
            // $table->integer('cb_id')->unsigned()->nullable();
            // $table->foreign('cb_id')->references('id')->on('vp_capbac');
            // $table->integer('lh_id')->unsigned()->nullable();
            // $table->foreign('lh_id')->references('id')->on('vp_loaihinh');
            // $table->integer('ct_id')->unsigned()->nullable();
            // $table->foreign('ct_id')->references('id')->on('vp_congty');
            // $table->integer('bc_id')->unsigned()->nullable();
            // $table->foreign('bc_id')->references('id')->on('vp_bangcap');
            // $table->string('bv_mota');
            // $table->integer('bv_gioitinh');
            
            // $table->string('bv_quyenloi');
            // $table->string('bv_kinhnghiem');
            // $table->date('bv_hannophs');
            // $table->string('bv_ngonnguvieths');
            // $table->string('bv_yeucaucv');
            // $table->string('bv_yeucauhs');
            // $table->integer('lhcty_id')->unsigned()->nullable();
            // $table->foreign('lhcty_id')->references('id')->on('vp_lienhecty');
            // $table->string('bv_nguoidang');
            // $table->integer('bv_luotxem');
            // $table->integer('bv_noibat');
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
