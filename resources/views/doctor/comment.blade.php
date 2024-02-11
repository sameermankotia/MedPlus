<!-- @extends('doctor.layout') -->
@section('title','Admin Dashboard')
@section('content')
<h3>Case Study: <span class="text-primary">{{$casestudies->title}}</span></h3>
<div class="card mt-3">
    <!-- <div class="card-header"><b>Patient Comments :</b></div> -->
    <form method="post" action="{{ route('comment.post',$casestudies->id) }}">
        @csrf
        <div class="card-body">
            <div class="form-group mt-5">
            <!-- <textarea name="patient_comment" class="form-control" id="" cols="30" rows="10"></textarea> -->
            <input type="hidden" name="patient_comment" value="hidden" />
            </div>
            <input type="hidden" name="case_id" value="{{ $casestudies->id }}">
            <p class="text-center mb-0 mt-4">
                <button class="btn btn-success">End Case</button>
            </p>
        </div>
    </form>
</div>
@endsection