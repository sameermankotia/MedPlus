<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\medication;

class MedicationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = medication::all();
        return view('admin.medication.index',['list'=>$data])->with('i');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.medication.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required|unique:medications,title',
            'description'=>'required'
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/medications'), $imageName);
            medication::create(array_merge($request->all(),['image'=>$imageName]));
        }else{
            medication::create($request->all());
        }

        return redirect()->route('medication.index')->with('success','Medication has been Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $medication = medication::find($id);
        return view('admin.medication.edit',compact('medication'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'title'=>'required|unique:medications,title,'.$id .',id',
            'description'=>'required'
        ]); 

        $medication = medication::find($id);
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/medications'), $imageName);
            $response = $medication->update(array_merge($request->all(),['image'=>$imageName]));
        }else{
            $response = $medication->update($request->all());
        }

        return redirect()->route('medication.index')->with('success','Medication has been Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $medication = medication::find($id);
        $medication->delete();
        return redirect()->route('medication.index')->with('success','Medication has been Deleted successfully.');
    }
}
