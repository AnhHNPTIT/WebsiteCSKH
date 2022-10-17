<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Admin;
use Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function member()
    {
        $users = User::orderBy('created_at', 'desc');
        return view('user.members_list', ['users' => $users->paginate()]);
    }

    public function show($id)
    {
        $user = User::find($id);
        return $user;
    }

    public function updateMember(Request $request, $id)
    {
        $data = $request->all();
        $user = User::find($data['id']);
        unset($data['_token']);

        if($user->status == 0)
        {
            $user->status = 1;
        }
        else{
            $user->status = 0; 
        }

        $flag = $user->save();
    }
}
