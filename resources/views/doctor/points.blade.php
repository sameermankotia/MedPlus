@extends('doctor.layout')
@section('title','Admin Dashboard')
@section('content')
<div class="row">

  @if ($attempt->score)
    <div class="alert alert-success">
        <p>Congrtulations! You have earned total score {{ $attempt->score }}.</p>
    </div>
  @else 
  <div class="alert alert-success">
        <p>Congrtulations! You have earned total score 0.</p>
    </div>
  @endif


  @if($attempt->quiz_score)
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem; margin-left:10px;">
    <div class="card-header">Quiz</div>
    <div class="card-body">
      <h5 class="card-title">{{$attempt->quiz_score}}</h5>
    </div>
  </div>
  @else 
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem; margin-left:10px;">
    <div class="card-header">Quiz</div>
    <div class="card-body">
      <h5 class="card-title">0</h5>
    </div>
  </div>
  @endif

  @if($attempt->tests_score)
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem; margin-left:10px;">
    <div class="card-header">Tests Score</div>
    <div class="card-body">
      <h5 class="card-title">{{$attempt->tests_score}}</h5>
    </div>
  </div>
  @else 
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem; margin-left:10px;">
    <div class="card-header">Tests Score</div>
    <div class="card-body">
      <h5 class="card-title">0</h5>
    </div>
  </div>
  @endif

  @if($attempt->diagnosis_score)
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem; margin-left:10px;">
    <div class="card-header">Diagnosis Score</div>
    <div class="card-body">
      <h5 class="card-title">{{$attempt->diagnosis_score}}</h5>
    </div>
  </div>
  @else 
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem; margin-left:10px;">
    <div class="card-header">Diagnosis Score</div>
    <div class="card-body">
      <h5 class="card-title">0</h5>
    </div>
  </div>
  @endif

  @if($attempt->medication_score)
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Medication Score</div>
    <div class="card-body">
      <h5 class="card-title">{{$attempt->medication_score}}</h5>
    </div>
  </div>
  @else 
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Medication Score</div>
    <div class="card-body">
      <h5 class="card-title">0</h5>
    </div>
  </div>
  @endif

  @if($attempt->followup_quiz_tests_score)
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Followup Quiz Tests</div>
    <div class="card-body">
      <h5 class="card-title">{{$attempt->followup_quiz_tests_score}}</h5>
    </div>
  </div>
  @else 
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Followup Quiz Tests</div>
    <div class="card-body">
      <h5 class="card-title">0</h5>
    </div>
  </div>
  @endif

  @if($attempt->followup_quiz_diagnosis_score)
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Followup Quiz Diagnosis</div>
    <div class="card-body">
      <h5 class="card-title">{{$attempt->followup_quiz_diagnosis_score}}</h5>
    </div>
  </div>
  @else 
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Followup Quiz Diagnosis</div>
    <div class="card-body">
      <h5 class="card-title">0</h5>
    </div>
  </div>
  @endif

  @if($attempt->followup_quiz_medication_score)
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Followup Quiz Medication</div>
    <div class="card-body">
      <h5 class="card-title">{{$attempt->followup_quiz_medication_score}}</h5>
    </div>
  </div>
  @else 
  <div class="card text-white bg-primary mb-3 text-center" style="max-width: 18rem;  margin-left:10px;">
    <div class="card-header">Followup Quiz Medication</div>
    <div class="card-body">
      <h5 class="card-title">0</h5>
    </div>
  </div>
  @endif

@foreach ($feedback as $item)
    <div class="card mt-3">
        <div class="card-body">{{$item->feedback_text}}</div>
    </div> 
@endforeach

</div>
@endsection