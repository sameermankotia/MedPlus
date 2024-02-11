@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
        <form method="POST" action="{{ route('group.update',$group->id) }}" enctype="multipart/form-data">
            @csrf    
            @method('PUT')
            <div class="form-group">
                <label for="name">Department Name:</label>
                <input type="text" class="form-control" name="title" id="title" value="{{ $group->title }}">
                @error('title')
					<p class="text text-danger">{{$message}}</p>
				@enderror
            </div><br>  
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
@endsection