@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
        <form method="POST" action="{{ route('medication.store') }}" enctype="multipart/form-data">
            @csrf    
            <div class="form-group">
                <label for="name">Title:</label>
                <input type="text" class="form-control" name="title" id="title" value="{{ old('title') }}">
                @error('title')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div>
            <div class="form-group">
                <label for="detail">Description:</label>
                <textarea name="description" class="form-control">{{ old('description') }}</textarea>
                @error('description')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div>
            <div class="form-group">
                <label for="image">Image:</label>
                <input type="file" class="form-control" name="image" id="">
            </div>
            <button type="submit" class="btn btn-success mt-4">Submit</button>
        </form>
@endsection