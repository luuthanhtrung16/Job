<?php

Route::get('/', function () {
    return view('frontend.index');
});
Route::group(['prefix'=>'admin'],function(){
	Route::get('/',function(){
		return view('backend.index');
	});
});
