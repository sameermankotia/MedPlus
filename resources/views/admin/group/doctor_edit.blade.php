@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
        <form method="POST" action="{{ route('doctor.edit',$doctor->id) }}" enctype="multipart/form-data">
            @csrf    
            @method('PUT')
            <div class="form-group">
                <label for="name">Username:</label>
                <input type="text" class="form-control" name="username" id="username" readonly value="{{ $doctor->username }}">
            </div>

            <div class="form-group">
                <label for="name">Email:</label>
                <input type="text" class="form-control" name="email" id="email" readonly value="{{ $doctor->email }}">
            </div>

            <div class="form-group mb-3">
                <label for="name">Select Group:</label>
                <select class="form-select" name="group">
                    <option value="">Select One</option>
                    @foreach($group as $val)
                    <option value="{{$val['id']}}" @if($val['id'] == $doctor->group) selected @endif>{{$val['title']}}</option>
                    @endforeach
                </select>
                @error('group')
                    <p class="text text-danger">{{$message}}</p>
                @enderror
            </div>
            
            <br>  
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
@endsection