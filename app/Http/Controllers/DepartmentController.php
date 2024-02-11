<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Department;

class DepartmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Department::all();
        return view('admin.department.index',['list'=>$data])->with('i');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.department.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $request->validate([
            'name'=>'required',
            'detail'=>'required',
            'img' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $imageName = time().'.'.$request->img->extension();  
        $request->img->move(public_path('images'), $imageName);

        $response = Department::create([
            'name'=>$request->name,
            'detail'=>$request->detail,
            'img'=>$imageName,
        ]);

        return redirect()->route('department.index')->with('success','Department has been Created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Department $department)
    {
        return view('admin.department.edit',compact('department'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(Department $department)
    {
        return view('admin.department.edit',compact('department'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Department $department)
    {
        $request->validate([
            'name'=>'required',
            'detail'=>'required'
        ]);

        
        if ($request->img) { 
            $imageName = time().'.'.$request->img->extension();  
            $request->img->move(public_path('images'), $imageName);
            $department->update([
                'name'=>$request->name,
                'detail'=>$request->detail,
                'img'=>$imageName,
            ]);
        }else{
            $department->update($request->all());
        }
        
        return redirect()->route('department.index')->with('success','Department has been updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function destroy(Department $department)
    {
        $department->delete();
        return redirect()->route('department.index')->with('success','Department has been Deleted successfully');
    }
}
