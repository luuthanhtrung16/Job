<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;//thêm Auth để sử dụng lớp đăng nhập
// use Auth;
use App\User;
class LoginController extends Controller
{
    public function getLogin(){
    	return view('backend.login');
    }
    public function postLogin(Request $request){
    	//tham số true là sẽ lưu đăng nhập, còn false là ko
    	if($request->remember ="Remember Me"){
    		$remember = true;
    	}else{
    		$remember=false;
    	}
    	if(Auth::attempt(['email'=>$request->email,'password'=>$request->password],$remember)){
    		// return redirect()->intended('admin/home');//chuyển qua cái rout admin/home đmmm rắc rối
            dd('thanh cong');
    	}else{
    		// return back()->with('error','Tài khoản hoặc mật khẩu chưa chính xác');	 
            dd('thất bại');
    	}
    }
    public function getLogout(){
    	Auth::logout();
    	return redirect()->intended('admin/login');
    }
}
