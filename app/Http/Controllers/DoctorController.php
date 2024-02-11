<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Session;
use App\Models\Doctor;
use App\Models\Group;
use Hash;
use App\Models\Department;

class DoctorController extends Controller
{
    public function index(){
        // dd(Hash::make('nW*4RCdaPW@I8%xW'));
        // dd(Hash::make('123456'));
        return view('doctor.login');
    }


    public function registration()
    {
        return view('doctor.registration');
    }

    public function postRegistration(Request $request)
    {  
        $request->validate([
            'username' => 'required',
            'email' => 'required|email|unique:doctors',
            'password' => 'required|min:6',
        ]);
           
        $data = $request->all();
        $check = Doctor::create([
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => Hash::make($data['password'])
        ]);

        if ($check) {

            if(Auth::guard('doctor')->attempt($request->only(['email', 'password']))){
            
                return redirect()->route('doctor.dashboard')->withSuccess('You have Successfully loggedin');
            }
        }
         
        return redirect("doc/login")->withSuccess('Opps! You do not have access');
    }

    public function postLogin(Request $request)
    {

        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        if(Auth::guard('doctor')->attempt($request->only(['email', 'password']))){
        
            return redirect()->route('doctor.dashboard');
        }

        return redirect()->back()->with('error', 'Invalid Credentials');
    }


    public function dashboard()
    {
        if(Auth::guard('doctor')->check()){
            $user = Auth::guard('doctor')->user();
            $deparments = Department::all()->toArray();
            return view('doctor.dashboard', ['departments'=>$deparments,'user'=>$user]);
        }
  
        return redirect("doc/login")->withSuccess('Opps! You do not have access');
    }

    public function logout() {
        Auth::guard('doctor')->logout();
        return redirect()->route('doctor.login');
    }

    function DoctorList() {
        $data = Doctor::all()->toArray();
        foreach ($data as $key => $val){
            if ($val['group']){
                $group = Group::find($val['group'])->toArray();
                $data[$key] = array_merge($data[$key],["group"=>$group['title']]);
            }else{
                $data[$key] = $data[$key];
            }
        }
        $group = Group::all();
        return view('admin.group.doctor_list',['list'=>$data,'group'=>$group])->with('i'); 
    }

    function DoctorShow($id){
        $doctor = Doctor::find($id);
        $group = Group::all();
        return view('admin.group.doctor_edit',compact('doctor','group'));
    }

    function DoctorEdit(Request $req, $id){
        $doctor = Doctor::find($id);
        $doctor->update([
            'group' => isset($req->group) ? $req->group : ""
        ]);

        return redirect()->route('doctor.list')->with('success','Group has been Assigned successfully.');
    }



}
