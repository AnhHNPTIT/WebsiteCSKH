<?php

namespace App\Http\Controllers\Customer;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Question;
use App\Intro;
use App\Policy;
use App\Regular;
use App\Payment;
use App\Contact;
use Validator;

use Illuminate\Support\Facades\DB;

class NavigatorController extends Controller
{
    public function getIntro(){
        $intro = DB::table('introductions')->select('content')->where('content', '!=', null)->get()->first();
        return view('common_information', ['intro' => $intro]);
    }
}
