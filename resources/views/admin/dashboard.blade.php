@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
<div class="row">
    <div class="col-6 col-lg-4">
        <div class="card">
            <div class="card-body bg-warning-subtle text-center">
                <h4 class="m-0">Total Departments</h4>
                <hr/>
                <h3 class="m-0">{{App\Models\Department::count()}}</h3>
            </div>
        </div>
    </div>
    <div class="col-6 col-lg-4">
        <div class="card">
            <div class="card-body bg-warning-subtle text-center">
                <h4 class="m-0">Total Case Studies</h4>
                <hr/>
                <h3 class="m-0">{{App\Models\Casestudies::count()}}</h3>
            </div>
        </div>
    </div>
    <div class="col-6 col-lg-4">
        <div class="card">
            <div class="card-body bg-warning-subtle text-center">
                <h4 class="m-0">Total Doctors</h4>
                <hr/>
                <h3 class="m-0">{{App\Models\Doctor::count()}}</h3>
            </div>
        </div>
    </div>
</div>
@endsection