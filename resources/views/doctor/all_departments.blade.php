@extends('doctor.layout')
@section('title','All Departments')
@section('content')
<div class="row">
  <h3>All Departments ({{count($list)}})</h3>
  @foreach($list as $data)  
  <div class="col-sm-3 mb-2">
    <div class="card mt-2 bg-warning">
      <div class="card-body text-center">
          <a href="{{route('doctor.department_casestudies',$data->id)}}" class="text-decoration-none text-dark card-title d-block">
            <!-- <img src="{{ asset('images/'.$data->img) }}" width="50" alt="" /> -->
            {{ $data->name }} ({{count($data->case_studies)}})
          </a>
      </div>
    </div>
  </div>
  @endforeach
</div>
@endsection