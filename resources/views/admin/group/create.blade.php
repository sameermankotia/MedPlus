@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
        <form method="POST" action="{{ route('group.store') }}" enctype="multipart/form-data">
            @csrf    
            <div class="form-group">
                <label for="name">Group Title:</label>
                <input type="text" class="form-control" name="title" id="title" value="{{ old('title') }}">
                @error('title')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div><br>  
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
@endsection