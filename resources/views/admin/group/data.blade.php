@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
<form action="{{ route('data.import') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="file" name="file" class="form-control">
                <br>
                <button class="btn btn-success">Import User Data</button>
            </form>
@endsection