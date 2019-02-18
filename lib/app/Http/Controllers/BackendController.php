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
        $this->validate($req,
            [
                'name' =>'required|min:1|max:100',
                'email' => 'required' 
                // cái ni là id của loại tin
                // không nhập, trùng trong bảng loại tin với cột tên
            ],
            [
                    'name.required' =>"Bạn chưa nhập tên loại tin",
                'name.unique' =>"Tên loại tin đã tồn tại",
                'name.min' => 'Bạn phải nhập độ dài từ 1 đến 100 ký tự!',
                'name.max' => 'Bạn chỉ được nhập độ dài từ 1 đến 100 ký tự!',
                'email.required' => "Bạn chưa chọn thể loại!",
                'email.unique'=>"Bạn đã nhập trùng email"

            ]
        );
    	$data['addU'] = new User;
        if($req->has('user_img'))
            $data['addU']->user_img = $req->user_img;
        if($req->hasFile('user_img'))
        {
        $file = $req->file('user_img');// gắn hình vào $file 
        $duoi = $file->getClientOriginalExtension();
        if($duoi!='jpg' && $duoi!='png' && $duoi !='jpeg')
        {
           return redirect('admin/admin/user/add/')->with('error','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
       }
        $name = $file->getClientOriginalName();//lấy tên hình
        $user_img = str_random(4)."_".$name;//tên hình
        //kiểm tra file có tồn tại ko file_exists()
        while(file_exists("public/upload/tintuc/".$user_img))
        {
           $user_img = str_random(4)."_".$name;
       }
         //lưu hình
       $file->move("public/upload/tintuc/",$user_img);
       $data['addU']->user_img = $user_img;
   }
    else
    {
        $data['addU']->user_img = '';
    }

    	// $data['addU']->user_img = "đâs";
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
