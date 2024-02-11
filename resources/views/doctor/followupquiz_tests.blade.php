@extends('doctor.layout')
@section('title','Admin Dashboard')
@section('content')

<h3>Case Study: <span class="text-primary">{{$casestudies->title}}</span></h3>
<form method="post" action="{{ route('followup_quiz_test.post',$casestudies->id)}}">
    @csrf
<div class="card mt-3">
    <div class="card-header"><b>Followup Quiz :</b></div>
    
    @php
        if($attempt->followup_tests != null){
            $explode = explode(", ",$attempt->followup_tests); 
        }
    @endphp

    @foreach ($followupquiz as $item)
    <div class="card-body">
       
        <label><b>Question</b>: {{$item->followup_question}}</label>
        <ul class="list-group mt-3">
            <li class="list-group-item mt-3 @if($attempt->followup_tests 
            != null && $item->followup_correct_one == $item->followup_option_1) bg-success text-white @elseif($attempt->followup_tests != null) bg-danger text-white @else @endif">
            <div class="form-check mt-2">
                    <label>
                         <input class="form-check-input" type="radio" name="quiz_answer[{{ $item->id }}]" id="q_answer" value="{{ $item->followup_option_1 }}" @if($attempt->followup_tests != null) disabled @endif>
                         {{ $item->followup_option_1 }}
                            
                    </label>    
            
            </div>
            </li>

            <li class="list-group-item mt-3 @if($attempt->followup_tests 
                != null && $item->followup_correct_one == $item->followup_option_2) bg-success text-white @elseif($attempt->followup_tests 
            != null) bg-danger text-white @else @endif">
                <div class="form-check mt-2">
                    
                        <label>
                             <input class="form-check-input" type="radio" name="quiz_answer[{{ $item->id }}]" id="q_answer" value="{{ $item->followup_option_2 }}" @if($attempt->followup_tests != null) disabled @endif>
                             {{ $item->followup_option_2 }}
                                
                        </label>    
                
                </div>
            </li>
            <li class="list-group-item mt-3 @if($attempt->followup_tests 
                != null && $item->followup_correct_one == $item->followup_option_3) bg-success text-white @elseif($attempt->followup_tests 
            != null) bg-danger text-white @else @endif">
                <div class="form-check mt-2">
                    
                        <label>
                             <input class="form-check-input" type="radio" name="quiz_answer[{{ $item->id }}]" id="q_answer" value="{{ $item->followup_option_3 }}" @if($attempt->followup_tests != null) disabled @endif>
                             {{ $item->followup_option_3 }}
                                
                        </label>    
                
                </div>
            </li>

            <li class="list-group-item mt-3 @if($attempt->followup_tests 
                != null && $item->followup_correct_one == $item->followup_option_4) bg-success text-white @elseif($attempt->followup_tests 
            != null) bg-danger text-white @else @endif">
                <div class="form-check mt-2">
                    
                        <label>
                             <input class="form-check-input" type="radio" name="quiz_answer[{{ $item->id }}]" id="q_answer" value="{{ $item->followup_option_4 }}" @if($attempt->followup_tests != null) disabled @endif>
                             {{ $item->followup_option_4 }}
                                
                        </label>    
                
                </div>
            </li>

        </ul>
        @error('quiz_answer')
            <p class="text text-danger">{{$message}}</p>
        @enderror

    </div>
    @endforeach
    <input type="hidden" name="case_id" value="{{ $casestudies->id }}">
    <ul class="pagination justify-content-center mt-3">
        @if($attempt->followup_tests == null)
        <button class="btn btn-success mt-4">Submit Orders</button>
        @else
        <a class="btn btn-success mt-4" href="{{ route('diagnosis.get',$casestudies->id) }}">Next</a>
        @endif
    </ul>
    </form>
</div>
@endsection