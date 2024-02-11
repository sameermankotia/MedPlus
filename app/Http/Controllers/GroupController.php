<?php

namespace App\Http\Controllers;

use App\Models\Group;
use Illuminate\Http\Request;
use App\Imports\DataImport;
use Maatwebsite\Excel\Facades\Excel;


class GroupController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Group::all();
        return view('admin.group.index',['list'=>$data])->with('i');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.group.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required'
        ]);

        Group::create($request->all());

        return redirect()->route('group.index')->with('success','Group has been Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Group $group)
    {
        //return view('admin.casestudies.edit',compact('department'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Group $group)
    {
        return view('admin.group.edit',compact('group'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Group $group)
    {
        $request->validate([
            'title'=>'required'
        ]);

        $group->update($request->all());

        return redirect()->route('group.index')->with('success','Group has been Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Group $group)
    {
        $group->delete();
        return redirect()->route('group.index')->with('success','Group has been Deleted successfully.');
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    public function import() 
    {
        Excel::import(new DataImport,request()->file('file'));
               
        return back();
    }


    function getImport() {
        return view('admin.group.data');
    }
}
