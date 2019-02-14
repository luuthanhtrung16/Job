<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
class BackendController extends Controller
{
    public function getUser(){
    	$data['userhome'] = User::all();
    	return view("backend.user",$data);
    }
    public function getAddUser(){
    	return view("backend.adduser");
    }
    public function postAddUser(Request $req){
    	$data['addU'] = new User;
    	$data['addU']->user_img = "đâs";
    	$data['addU']->name = $req->name;
    	$data['addU']->ngaysinh = $req->birthday;
    	$data['addU']->email = $req->email;
    	$data['addU']->password = bcrypt($req->password);
    	$data['addU']->level = $req->level;
    	// $data['addU']->rememberToken();
    	 // $data['addU']->created_at = getdate();
    	$data['addU']->save();

    	return redirect('admin/admin/user/add/')->with('success','Bạn đã tạo tài khoản thành công!');	 ;


    }
}
