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
// trang chu
Route::get('/', function(){
	return view('home');
});

// login
Route::get('/dang-ki-dich-vu', function(){
	return view('register_service');
});

// tao tai khoan
Route::post('/create/contact', 'Customer\RegisterController@createAccount');

// tim kiem san pham
Route::get('/search','Customer\SearchController@search');

// tat ca bai viet
Route::get('/goc-tin-tuc', 'Customer\HomeController@index');

// bai viet theo tag
Route::get('/tag/{slug}', 'Customer\HomeController@postTag');

// bai viet theo chuyen muc
Route::get('/chuyen-muc/{slug}', 'Customer\HomeController@postTopic');

// chi tiet + noi dung bai viet
Route::get('/tin-tuc/{slug}', 'Customer\HomeController@postDetail');
Route::get('/dich-vu-internet/{slug}', 'Customer\HomeController@postDetail');
Route::get('/dich-vu-truyen-hinh/{slug}', 'Customer\HomeController@postDetail');
Route::get('/dich-vu-camera/{slug}', 'Customer\HomeController@postDetail');

Route::group(['prefix' => '/', 'middleware' => 'CheckUserLogin'], function () {
	// my account
	Route::get('/my/account/{user_id}', 'Customer\AccountController@myAccount');
	// update account information
	Route::post('/my/account', 'Customer\AccountController@updateMyAccount');

	// change password
	Route::get('/change/password','Customer\ChangePasswordController@getFormChangePassword');
	Route::post('/change/password','Customer\ChangePasswordController@changePassword');
});

// link
Route::get('/gioi-thieu', 'Customer\NavigatorController@getIntro');
Route::get('/lien-he', 'Customer\NavigatorController@getFormContact');
Route::post('/lien-he', 'Customer\NavigatorController@postFormContact');

// admin
Route::group(['prefix' => 'admin', 'middleware' => 'CheckAdminLogin'], function () {
	// users member
	Route::get('/user/member', 'UserController@member');
	Route::put('/user/member/{id}', 'UserController@updateMember');
	Route::delete('/user/member/{id}', 'UserController@destroyMember');

	// chart
	Route::get('/chart', 'AdminController@index');
});

// admin-collaborator
Route::group(['prefix' => 'admin', 'middleware' => 'CheckAdmin'], function () {

	// get home page admin
	Route::get('/', 'AdminController@homePage');
	Route::get('/home', 'AdminController@homePage');

	// get change pass
	Route::get('/change/password', 'Auth_Admin\LoginController@getChangePassword');
	Route::post('/change/password', 'Auth_Admin\LoginController@changePassword');

    // category
	Route::resource('category', 'CategoryController');
	Route::post('/update_category', 'CategoryController@edit');
	Route::get('/new/category', function(){
		return view('category.new_category');
	});

    // posts
	Route::resource('post', 'PostController');
	Route::get('post/detail/{id}', 'PostController@showPost');
	Route::post('post/update', 'PostController@updatePost');
	Route::get('/new/post', function(){
		return view('post.new_post');
	});

    // tags
	Route::resource('tag', 'TagController');
	Route::get('/new/tag', function(){
		return view('tag.new_tag');
	});

	// users
	Route::get('/user/member/{id}', 'UserController@show');

	// contacts
	Route::get('/contact', 'ContactController@index');
	Route::delete('/contact/{id}', 'ContactController@destroy');

	// slides
	Route::get('/slide', 'SlideController@index');
	Route::get('/slide/{id}', 'SlideController@show');
	Route::post('/slide', 'SlideController@store');
	Route::post('/update_slide', 'SlideController@edit');
	Route::put('/update_status/{id}', 'SlideController@updateStatus');
	Route::get('/new/slide', function(){
		return view('slide.new_slide');
	});
	Route::delete('/slide/{id}', 'SlideController@destroy');

	// counterparts
	Route::get('/counterpart', 'CounterpartController@index');
	Route::get('/counterpart/{id}', 'CounterpartController@show');
	Route::post('/update_counterpart', 'CounterpartController@updateCounterpart');
	Route::post('/counterpart', 'CounterpartController@store');
	Route::get('/new/counterpart', function(){
		return view('counterpart.new_counterpart');
	});
	Route::delete('/counterpart/{id}', 'CounterpartController@destroy');

	// introductions
	Route::get('/edit/intro', 'IntroController@intro');
	Route::post('/intro/update', 'IntroController@updateIntro');
});

// admin
Route::group(['prefix' => 'admin'], function () {
	// authentication routes...
	Route::get('/login', 'Auth_Admin\LoginController@showLoginForm')->name('login');
	Route::post('/login', 'Auth_Admin\LoginController@postLoginAdmin');
	Route::get('/logout', 'Auth_Admin\LoginController@logoutAdmin')->name('logout');
});
