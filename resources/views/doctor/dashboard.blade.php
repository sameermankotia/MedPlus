@extends('doctor.layout')
@section('title','Admin Dashboard')
@section('content')

@if (Session('message'))
    <div class="alert alert-danger">
        <p>{{ Session('message') }}</p>
    </div>
@endif
    <div class="card">
        <div class="card-header text-center">Casestudies</div>
        <div class="card-body">
            <form method="post"action="{{ route('mode_and_dept.post') }}">
                @csrf
                @if ($user->group)
                <label for="name"><b>Choose Mode:</b></label>
                <div class="form-check">
                    <label>
                        Clinic Mode
                        <input class="form-check-input" type="radio" name="mode" id="mode1" value="class_mode">
                    </label>
                </div>
                @endif

                <div class="form-check">
                    <label>
                        Classic Mode
                        <input class="form-check-input" type="radio" name="mode" id="mode2" value="classic_mode">
                    </label>
                </div>

                <div class="form-check">
                    <label>
                        Study Mode
                        <input class="form-check-input" type="radio" name="mode" id="mode3" value="study_mode">
                    </label>
                </div>

                @error('mode')
                    <p class="text text-danger">{{$message}}</p>
                @enderror 
                
                <div class="form-group mt-5">
                        <label for="name"><b>Select Department:</b></label>
                        <select class="form-select" name="department">
                            <option value="">Select One</option>
                            @foreach($departments as $val)
                            <option value="{{$val['id']}}">{{$val['name']}}</option>
                            @endforeach
                        </select>
                        @error('department')
                            <p class="text text-danger">{{$message}}</p>
                        @enderror
                </div>

                <ul class="pagination justify-content-center mt-5">
                    <!-- <li class="page-item"><a class="page-link" href="#">Previous</a></li> -->
                    <button type="submit" class="btn btn-success">Next</button>
                    <!-- <li class="page-item"><a class="btn btn-success" href="#">Next</a></li> -->
                </ul>
            </form>
        </div>
    </div>
@endsection