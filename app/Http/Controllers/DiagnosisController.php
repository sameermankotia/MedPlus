<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\diagnosis;

class DiagnosisController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = diagnosis::all();
        return view('admin.diagnosis.index',['list'=>$data])->with('i');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.diagnosis.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required|unique:diagnosis,title',
            'description'=>'required'
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/tests'), $imageName);
            diagnosis::create(array_merge($request->all(),['image'=>$imageName]));
        }else{
            diagnosis::create($request->all());
        }

        return redirect()->route('diagnosis.index')->with('success','Diagnosis has been Created successfully.');
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
        $diagnosis = diagnosis::find($id);
        return view('admin.diagnosis.edit',compact('diagnosis'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'title'=>'required|unique:diagnosis,title,'.$id .',id',
            'description'=>'required'
        ]); 

        $diagnosis = diagnosis::find($id);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/diagnosis'), $imageName);
            $response = $diagnosis->update(array_merge($request->all(),['image'=>$imageName]));
        }else{
            $response = $diagnosis->update($request->all());
        }


        return redirect()->route('diagnosis.index')->with('success','Diagnosis has been Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $diagnosis = diagnosis::find($id);
        $diagnosis->delete();
        return redirect()->route('diagnosis.index')->with('success','Diagnosis has been Deleted successfully.');
    }
}
