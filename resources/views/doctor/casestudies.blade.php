@extends('doctor.layout')
@section('title','All Case Studies')
@section('content')
<div class="row">

@if (Session('message'))
    <div class="alert alert-danger">
        <p>{{ Session('message') }}</p>
    </div>
@endif

  <h3>All Case Studies  ({{count($casestudies)}})</h3>
  <div class="table-responsive">
        <table id="dataTable" class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Department</th>
              <th>Casestudies</th>
              <th>Attempt Status</th>
              <th>Score</th>
            </tr>
          </thead>
        <tbody>
          @foreach($casestudies as $data)
          @php
          $quizCheck=App\Models\Quiz_attempt::where('case_id',$data->id)->where('user_id',auth()->guard('doctor')->user()->id)->get();
          @endphp
          <tr>
            <td>{{ $data->depart->name }}</td>
            <td>
            @if($data->mode == 'clinic' && $quizCheck->count() > 0)
              {{ $data->title }} 
            @else
              <a href="{{route('casestudies_history.get',$data->id)}}">{{ $data->title }}</a>
            @endif 
            </td>
            <td>
              @if($quizCheck->count() > 0)
              Yes
              @else
              No
              @endif 
            </td>
            <td>@if($quizCheck->count() > 0)
              {{$quizCheck[0]->score}}
              @else
              0
              @endif</td>
          </tr>
        @endforeach 
      </tbody>
    </table>
  </div>
</div>


<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" /> -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" />
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
  let table = new DataTable('#dataTable');
</script>

@endsection