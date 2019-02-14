<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function(){
	return view('frontend.index');
});

Route::group(['prefix'=>'admin'],function(){
	//Route::get('/','HomeController@getHome');
	Route::group(['prefix'=>'login','middleware'=>'CheckLogIn'],function(){
		Route::get('/','LoginController@getLogin');
		Route::post('/','LoginController@postLogin');
	});
	Route::get('logout','LoginController@getLogout');
	Route::group(['prefix'=>'admin','middleware'=>'CheckLogOut'],function(){
		Route::get('home','HomeController@getHome');
		Route::group(['prefix'=>'user'],function(){
			Route::get('/','BackendController@getUser');
			Route::get('add','BackendController@getAddUser');
			Route::post('add','BackendController@postAddUser');
		});
	});
});

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
