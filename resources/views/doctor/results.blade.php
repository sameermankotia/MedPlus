@extends('doctor.layout')
@section('title','Admin Dashboard')
@section('content')
@if ($casestudies->mode == 'classic_mode')
<div class="alert alert-info" role="alert">
<b>Hint</b> : {{ $casestudies->hint }}
</div>
@endif
<h3>Case Study: <span class="text-primary">{{$casestudies->title}}</span></h3>
<div class="card mt-3"  style="height: 500px; overflow-y: auto">
    <div class="card-header"><b>Results :</b></div>
        @csrf
        <div class="card-body">
            <div class="row">
                <div class="col-sm-8">
                    @foreach ($results as $item)
                    <h4>{{ $item['name'] }}</h4>
                    @if($item['image'] != "" || $item['result'] != "") 
                        @if ($item['image']!= "")
                        <img src="{{ asset('images/result_images/'.$item['image']) }}" alt="" height="75" class="img-thumbnail" width="45%">
                        @endif
                        <p class="mt-2">{{ $item['result'] }}</p>
                        <hr/>
                    @else
                         <p class="mt-2">Normal</p>
                    @endif
                    @endforeach
                    <ul class="pagination justify-content-center mt-3">
                        <a class="btn btn-success" href="{{ route('followup_quiz_test.get',$casestudies->id) }}" role="button">Next</a>
                    </ul>

@endsection