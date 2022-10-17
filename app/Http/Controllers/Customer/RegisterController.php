<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\OtpSms;
use App\User;
use Validator;
use Session;
use Redirect;
use Auth;
use Illuminate\Support\Facades\DB;

class RegisterController extends Controller
{
    // get form
    public function fulfill(){
        return view('fulfill_information');
    }

    public function register(Request $request){
        $validator = Validator::make($request->all(), [
            'phone_number' => 'required'
        ],
        [
            'required' => 'Lỗi: Vui lòng nhập các trường bắt buộc (*).',
        ]);

        if ($validator->fails()) {
            return response()->json(['is' => 'failed', 'error'=>$validator->errors()->all()]);
        }
        $phone_number = $request->phone_number;
        Session::put('phone_number', $phone_number);

        $flag = User::where('phone_number', $phone_number)->first();
        if($flag){
            return response()->json(['is' => 'unsuccess', 'uncomplete'=>'Số điện thoại này đã đăng kí.']);
        }
        // redirect provide account information
        return response()->json(['is' => 'success']);
    }

    public function formConfirmOtp(){
        if(Session::has('phone_number')){
            $phone_number = Session::get('phone_number');
            if($phone_number){
                return view('confirm_otp', compact('phone_number'));
            }
        }
        return view('404');
    }

    public function confirmOtp(Request $request){
        $validator = Validator::make($request->all(), [
            'otp' => 'required',
            'phone_number' => 'required',
        ],
        [
            'otp.required' => 'Lỗi: Vui lòng nhập mã xác thực',
            'phone_number.required' => 'Thao tác thất bại! Bạn cần nhập lại số điện thoại',
        ]);

        if ($validator->fails()) {
            return Redirect::back()->withInput()->withErrors($validator->errors());
        }
        $inputs = $request->only('otp', 'phone_number');
        $sms = OtpSms::where($inputs)->first();
        if($sms) {
            if(Session::has('phone_number')){
                Session::forget('phone_number');
            }
            return view('fulfill_information', ['phone_number' => $request->phone_number]);
        }
        return Redirect::back()->withErrors(['message' => 'Mã xác thực không hợp lệ!']);
    }

    public function resendOtp(){
        $phone_number = Session::get('phone_number');
        if($phone_number){
            $sms = OtpSms::where('phone_number', $phone_number)->first();
            if($sms->count >= 15){
                return response()->json(['is' => 'unsuccess', 'uncomplete'=>'Không gửi được mã xác thực quá nhiều lần. Bạn vui lòng liên hệ Hotline CSKH để được hỗ trợ.']);
            }
            $otp = rand(100000, 999999);
            if ($this->eSms->sendOtp($phone_number, $otp)) {
                $sms->increment('count');
                $sms->otp = $otp;
                $sms->save();
                return response()->json(['is' => 'success', 'complete'=>'Đã gửi lại mã xác thực!']);
            }
            return response()->json(['is' => 'unsuccess', 'uncomplete'=>'Đã có sự cố xảy ra. Bạn vui lòng liên hệ Hotline CSKH đê được hỗ trợ.']);
        }
    }

    public function createAccount(Request $request){
        $validator = Validator::make($request->all(), [
            'name'=> 'required|max:255',
            'address'=> 'required|max:255',
            'phone_number'=>'min:9|max:11',
            'service_package' => 'required',
            'payment_method' => 'required',
        ],[
            'name.max'=>'Họ tên vượt quá 255 kí tự',
            'name.required'=>'Bạn chưa nhập tên',
            'address.max'=>'Họ tên vượt quá 255 kí tự',
            'address.required'=>'Bạn chưa nhập tên',
            'phone_number.max'=>'Số điện thoại này không hợp lệ',
            'phone_number.min'=>'Số điện thoại này không hợp lệ',
        ]);

        if ($validator->fails()) {
            return response()->json(['is' => 'failed', 'error' => $validator->errors()->all()]);
        }

        $data['name'] = $request->name;
        $data['phone_number'] = $request->phone_number;
        $data['address'] = $request->address;
        $data['service_package'] = $request->service_package;
        $data['payment_method'] = $request->payment_method;

        unset($data['_token']);
        $member = User::Create($data);

        if($member){
            return response()->json(['is' => 'success', 'complete'=>'Thông tin dịch vụ được đăng ký thành công']);
        }
        return response()->json(['is' => 'unsuccess', 'uncomplete'=>'Quá trình đăng ký dịch vụ không thành công']);
    }
}
