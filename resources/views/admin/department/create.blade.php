@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
        <form method="POST" action="{{ route('department.store') }}" enctype="multipart/form-data">
            @csrf    
            <div class="form-group">
                <label for="name">Department Name:</label>
                <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}">
                @error('name')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div>
            <div class="form-group">
                <label for="detail">Description:</label>
                <textarea name="detail" class="form-control">{{ old('detail') }}</textarea>
                @error('detail')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div>
            <div class="form-group">
                <label for="detail">Image:</label>
                <input type="file" class="form-control" name="img" id="img">
                @error('img')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div><br>  
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
@endsection