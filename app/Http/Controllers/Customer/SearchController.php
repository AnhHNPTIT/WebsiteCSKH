<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\WordSearch;
use App\Product;

class SearchController extends Controller
{
    public function search(Request $request){
        return view('home');
    }
}
