@extends('doctor.layout')
@section('title','All Case Studies')
@section('content')
<h3 class="mb-3">Research</h3>
  
<div class="card">
  <div class="card-header text-center">Procedures</div>
      <div class="card-body">
          <div class="row">
            <div class="col-sm-12">
                <select class="form-select select2" multiple="multiple" id="select2" name="tests[]">   
                  @foreach ($tests as $val)
                  <option value="{{$val->id}}_test">{{$val->title}}</option>
                  @endforeach
                </select>
            </div>
          </div>
          @foreach ($tests as $val)
          <div class="card show mt-3" id="show-{{$val->id}}_test">
              <div class="card-body">{{$val->description}}</div>
          </div>
          @endforeach
  </div>
</div>


<div class="card mt-5">
  <div class="card-header text-center">Diagnosis</div>
      <div class="card-body">
          <div class="row">
            <div class="col-sm-12">
                <select class="form-select select2" multiple="multiple" id="" name="tests[]">   
                  @foreach ($diagnosis as $diag)
                  <option value="{{$diag->id}}_diag">{{$diag->title}}</option>
                  @endforeach
                </select>
            </div>
          </div>
          @foreach ($diagnosis as $diag)
          <div class="card show mt-3" id="show-{{$diag->id}}_diag">
              <div class="card-body">{{$diag->description}}</div>
          </div>
          @endforeach
  </div>
</div>


<div class="card mt-5">
  <div class="card-header text-center">Medication</div>
      <div class="card-body">
          <div class="row">
            <div class="col-sm-12">
                <select class="form-select select2" multiple="multiple" id="" name="tests[]">   
                  @foreach ($medications as $medi)
                  <option value="{{$medi->id}}_med">{{$medi->title}}</option>
                  @endforeach
                </select>
            </div>
          </div>
          @foreach ($medications as $medi)
          <div class="card show mt-3" id="show-{{$medi->id}}_med">
              <div class="card-body">{{$medi->description}}</div>
          </div>
          @endforeach
  </div>
</div>

<script src="{{ asset('assets/js/research.js') }}"></script>    
@endsection