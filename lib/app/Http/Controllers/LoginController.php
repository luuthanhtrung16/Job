<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Auth;//thêm Auth để sử dụng lớp đăng nhập
use Auth;
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
        $email = $request->email;
        $password = $request->input('password');
        $attempt = Auth::attempt(['email' => $email, 'password' => $password]);
    	if(Auth::attempt(['level' => $email, 'password' => $password],true)){
    		// return redirect()->intended('admin/home');//chuyển qua cái rout admin/home đmmm rắc rối
            dd('thanh cong');
    	}else{
    		// return back()->with('error','Tài khoản hoặc mật khẩu chưa chính xác');	 
            // dd('that bai '.$email.' '.$password);
             // dd($attempt); 
            dd(Auth::attempt(['email'=>'admin@gmail.com','password'=>' ']));
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
