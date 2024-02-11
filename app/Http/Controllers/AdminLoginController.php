<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Hash;
use Session;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Models\Employee;

class AdminLoginController extends Controller
{
    // Admin Login
    public function login(){
        // dd(Hash::make('nW*4RCdaPW@I8%xW'));
        // dd(Hash::make('123456'));
        return view('admin.login');
    }

    // Login Request
    public function login_request(Request $request){
        $data=$request->validate([
            'email'=>'required',
            'password'=>'required'
        ]);


        if(Auth::attempt($data)){
            return redirect('admin/dashboard');
        }else{
            return redirect('admin/login')->with('error','Invalid email/password!!');
        }
    }

    // Logout
    function logout(){
        Session::flush();
        Auth::logout();
        return redirect('admin/login');
    }
}
