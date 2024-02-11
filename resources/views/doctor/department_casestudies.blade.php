@extends('doctor.layout')
@section('title','All Case Studies')
@section('content')
<div class="row">
  <h3>All Case Studies ({{count($list)}})</h3>

  <div class="col-sm-8 col-12">
      <ul class="list-group mt-3">
        @foreach($list as $data)  
          <a href="{{route('casestudies_step_3.get',$data->id)}}" class="list-group-item list-group-item-action">
            <span class="text-primary">{{ $data->title }}</span>
            <p class="m-0"><small class="text-muted"><i>{{ $data->depart->name }}</i></small></p>
          </a>
        @endforeach
      </ul>
  </div>
</div>
@endsection