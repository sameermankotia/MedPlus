<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tests;

class TestController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = tests::all();
        return view('admin.tests.index',['list'=>$data])->with('i');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.tests.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required|unique:tests,title',
            'description'=>'required'
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/tests'), $imageName);
            tests::create(array_merge($request->all(),['image'=>$imageName]));
        }else{
            tests::create($request->all());
        }

        

        return redirect()->route('tests.index')->with('success','Tests has been Created successfully.');
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
        $tests = tests::find($id);
        return view('admin.tests.edit',compact('tests'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        $request->validate([
            'title'=>'required|unique:tests,title,'.$id .',id',
            'description'=>'required'
        ]); 

        $tests = tests::find($id);
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/tests'), $imageName);
            $response = $tests->update(array_merge($request->all(),['image'=>$imageName]));
        }else{
            $response = $tests->update($request->all());
        }

        return redirect()->route('tests.index')->with('success','Tests has been Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $tests = tests::find($id);
        $tests->delete();
        return redirect()->route('tests.index')->with('success','Tests has been Deleted successfully.');
    }
}
