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

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Title</th>
                    <th>Image</th>
                    <th width="280px">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($list as $data)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $data->name }}</td>
                        <td><img src="{{ asset('images/'.$data->img) }}" width="50" /></td>
                        <td>
                            <form action="{{ route('department.destroy',$data->id) }}" method="Post">
                                <!-- Update -->
                                <a title="{{__('Update')}}" class="btn btn-outline-primary btn-sm" href="{{ route('department.edit',$data->id) }}"><i class="fa fa-pencil"></i></a>
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
</script>

@endsection