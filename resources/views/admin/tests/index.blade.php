@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')
<h2 class="my-4">All Departments ({{count($list)}})</h2>
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif

        @if ($message = Session::get('error'))
            <div class="alert alert-danger">
                <p>{{ $message }}</p>
            </div>
        @endif        

        <table id="dataTable">
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th width="280px">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($list as $data)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $data->title }}</td>
                        <td>{{ $data->description }}</td>
                        <td>
                            <form action="{{ route('tests.destroy',$data->id) }}" method="Post">
                                <!-- Update -->
                                <a title="{{__('Update')}}" class="btn btn-outline-primary btn-sm" href="{{ route('tests.edit',$data->id) }}"><i class="fa fa-pencil"></i></a>
                                <!-- End -->
                                @csrf
                                @method('DELETE')
                                <button title="{{__('Delete')}}" type="submit" id="delete" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i></button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
            </tbody>
        </table>
<script>
  
$(document).on('click','#delete',function(e){
    var confirmation = confirm("Are you sure you want to delete it");
    if( confirmation == false) {
        e.preventDefault();
    }
});

$(document).ready(function() {
    $('#dataTable').DataTable();
});

</script>

@endsection