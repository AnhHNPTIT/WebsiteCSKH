<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// khai báo sử dụng loginRequest
use App\Http\Requests\LoginRequest;
use Auth;
use App\Admin;
use Validator;

use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
	public function homePage()
	{
		return view(
			'admin.home_page'
		);
	}
}
