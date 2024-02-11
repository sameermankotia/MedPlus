@extends('doctor.layout')
@section('title','Admin Dashboard')
@section('content')

<h3>Case Study: <span class="text-primary">{{$casestudies->title}}</span></h3>
<form method="post" action="{{ route('quiz.post',$casestudies->id)}}">
    @csrf
<div class="card mt-3">
    <div class="card-header"><b>Quiz :</b></div>
    <div class="card-body">
        <label><b>Question</b>: {{$casestudies->q_question}}</label>
        @if ($casestudies->options != "")
        <ul class="list-group mt-3">
            @foreach(explode(', ', $casestudies->options) as $option)
            <li class="list-group-item mt-3 @if($attempt && $attempt->quiz_answer != null && $option == $casestudies->correct_one) bg-success text-white @elseif($attempt &&  $attempt->quiz_answer!="") bg-danger text-white @else  @endif">
            <div class="form-check mt-2">
                
                    <label>
                         <input class="form-check-input" @if($attempt && $attempt->quiz_answer !=null && $option != $attempt->quiz_answer) disabled @endif type="radio" name="quiz_answer" id="q_answer" value="{{ $option }}" @if(!empty($attempt->quiz_answer) && $option == $attempt->quiz_answer) checked @endif>
                         {{ $option }}
                            
                    </label>    
            
            </div>
            </li>
        </ul>

        @endforeach
        @endif
        @error('quiz_answer')
            <p class="text text-danger">{{$message}}</p>
        @enderror

    </div>
    <input type="hidden" name="case_id" value="{{ $casestudies->id }}">
    <ul class="pagination justify-content-center mt-3">
        <!-- <li class="page-item"><a class="page-link" href="#">Previous</a></li> -->
        <!-- <button type="submit" class="btn btn-success">Next</button> -->
        @if ($attempt && $attempt->quiz_answer == null)
        <button type="submit" class="btn btn-success">Submit</button>
        @else
        <a class="btn btn-success mt-4" href="{{ route('tests.get',$casestudies->id) }}">Next</a>
        @endif
        <!-- <li class="page-item"><a class="btn btn-success" href="#">Next</a></li> -->
    </ul>
    </form>
</div>
@endsection