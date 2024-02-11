@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
        <form method="POST" action="{{ route('department.update',$department->id) }}" enctype="multipart/form-data">
            @csrf    
            @method('PUT')
            <div class="form-group">
                <label for="name">Department Name:</label>
                <input type="text" class="form-control" name="name" id="name" value="{{ $department->name }}">
                @error('name')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div>
            <div class="form-group">
                <label for="detail">Description:</label>
                <textarea name="detail" class="form-control">{{ $department->detail }}</textarea>
                @error('detail')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div>
            <div class="form-group">
                <label for="detail">Image:</label>
                <input type="file" class="form-control" name="img" id="img"><br>
                <img src="{{ asset('images/'.$department->img) }}" width="150" />
                @error('img')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div><br>  
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
@endsection