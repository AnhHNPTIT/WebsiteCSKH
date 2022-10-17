<?php 
namespace App\Helpers;

use Request;
use App\LogActivity;
use Auth;

class UserHistory{
    public static function addToLogActivity($message)
    {
        $log = [];
        $log['subject'] = $message;
        $log['url'] = Request::url();
        $log['method'] = Request::method();
        $log['ip'] = Request::ip();
        $log['agent'] = Request::header('user-agent');
        if(Auth::check()){
            $log['user_id'] = Auth::user()->id;
            $log['name'] = Auth::user()->name;
        }
        LogActivity::create($log);
    }

    public static function logActivityLists()
    {
        $logs = LogActivity::latest()->get();
        return $logs;
    }
}
?>