<?php 
namespace App\Helpers;

use Request;
use App\LogActivity;
use Auth;

class History{
    public static function addToLogActivity($message)
    {
        $log = [];
        $log['subject'] = $message;
        $log['url'] = Request::url();
        $log['method'] = Request::method();
        $log['ip'] = Request::ip();
        $log['agent'] = Request::header('user-agent');
        if(Auth::guard('admin')->check()){
            $log['user_id'] = Auth::guard('admin')->user()->id;
            $log['name'] = Auth::guard('admin')->user()->name;
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