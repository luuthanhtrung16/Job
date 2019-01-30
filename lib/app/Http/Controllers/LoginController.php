<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Auth;
use App\User;
class LoginController extends Controller
{
    public function getLogin(){
    	return view('backend.login');
    }
    public function postLogin(Request $request){
    	//tham số true là sẽ lưu đăng nhập, còn false là ko
    	// if($request->remember ="Remember Me"){
    	// 	$remember = true;
    	// }else{
    	// 	$remember=false;
    	// }
        $email = $request->email;
        $password = $request->password;
        // $password = $request->password;
        $attempt = Auth::attempt(['email' => $email, 'password' => $password]);
    	if(Auth::attempt(['email' => $email, 'password' => $password])){
    		return redirect()->intended('admin/admin/home');//chuyển qua cái rout admin/home đmmm rắc rối
            // dd('thanh cong1');
    	}else{
    		return back()->with('errors','Tài khoản hoặc mật khẩu chưa chính xác');	 
             // dd('that bai '.$email.' '.$password);
             // dd($attempt); 
            // dd(Auth::attempt(['email' => $email, 'password' => $password]));
    	}
        // $email = $request->email;
        // $pass = $request->password;
        // $data = User::where('email',$email)->where('password',$pass)->get();
        // if(count($data)>0){
        //     dd('thanhcong');
        // }else{
        //     dd('that bai '.$email);
        // }
    }
    public function getLogout(){
    	Auth::logout();
    	return redirect()->intended('admin/login');
    }
}
