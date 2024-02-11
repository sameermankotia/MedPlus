@extends('doctor.layout')
@section('title','Admin Dashboard')
@section('content')

<!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg mb-3" data-bs-toggle="modal" data-bs-target="#myModal">
      Hints
    </button>
    
    
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        
        <div class="modal-content text-center">
          <div class="modal-header">
            <h4 class="modal-title" id="myModalLabel">Hints</h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          
          </div>
          
          <div class="modal-body">
            <p class="text text-danger" id="no-hint"></p>
            @foreach ($hint1 as $hint)
            @if ($hint->hint_image_1 != "" || $hint->hint_image_2 != "" || $hint->hint_image_3 !="" || $hint->hint_first != "" || $hint->hint_second != "" || $hint->hint_third != "") 
                
                <div class="modal-split">
                    <div class="card" style="width: 18rem; margin:auto">
                        @if($hint->hint_image_1)
                        <img class="card-img-top" src="{{ asset('images/hint_images/'.$hint->hint_image_1) }}" alt="Card image cap">
                        @endif
                        <div class="card-body">
                          <p class="card-text">{{ $hint->hint_first }}</p>
                        </div>
                      </div>
                </div>

                <div class="modal-split">
                    <div class="card" style="width: 18rem; margin:auto">
                        @if($hint->hint_image_2)
                        <img class="card-img-top" src="{{ asset('images/hint_images/'.$hint->hint_image_2) }}" alt="Card image cap">
                        @endif
                        <div class="card-body">
                          <p class="card-text">{{ $hint->hint_second }}</p>
                        </div>
                    </div>
                </div>
                <div class="modal-split">
                    <div class="card" style="width: 18rem; margin:auto">
                        @if($hint->hint_image_3)
                        <img class="card-img-top" src="{{ asset('images/hint_images/'.$hint->hint_image_3) }}" alt="Card image cap">
                        @endif
                        <div class="card-body">
                          <p class="card-text">{{ $hint->hint_third }}</p>
                        </div>
                    </div>
                </div>
            @else
            <div class="card" style="width: 18rem; margin:auto">
                <div class="card-body">
                  <p class="card-text">There is no any Hint</p>
                </div>
            </div>
            @endif
            @endforeach  
    
          </div>
          
          <div class="modal-footer"></div>
        
        </div>
    </div>
</div>

<h3>Case Study: <span class="text-primary">{{$casestudies->title}}</span></h3>
<div class="card mt-3">
    <div class="card-header text-center"><b>History </b></div>
    <div class="card-body">
        <p>{{ $casestudies->history }}</p>
        @if($casestudies->history_image)
        <p>
            <img src="{{ asset('images/history_images/'.$casestudies->history_image) }}" class="img-fluid rounded-start" alt="...">
        </p>
        @endif    
    </div>
</div>

<div class="card mt-3">
    <div class="card-header text-center"><b>Vital Signs </b></div>
    <div class="card-body">
        <p>{{{ $casestudies->uital_signs }}}
        </p>
    </div>
</div>

@if ($attempt && $attempt->tests != null)
<div class="mt-4">
    @foreach ($results as $item)
    @if($item['image'] != "" || $item['result'] != "") 
    <div class="card mb-3" style="max-width:540px;">
        <div class="row g-0">
            <div class="col-md-6">
                @php
                    $imgs=explode(',',$item['image']);
                    foreach($imgs as $img){
                    @endphp
                    <img src="{{ asset('images/result_images/'.$img) }}" alt="" height="75" class="img-thumbnail" width="200">
                    @php
                    }
                @endphp
                <!-- <img src="{{ asset('images/result_images/'.$item['image']) }}" class="img-fluid rounded-start" alt="..."> -->
            </div>
            <div class="col-md-6">
                <div class="card-body">
                    <h5 class="card-title"> {{ $item['name'] }}</h5>
                    <p class="card-text">{{ $item['result'] }}</p>
                </div>
            </div>
        </div>
    </div>
    @else
    <div class="card mb-3" style="max-width:540px;  margin-left:15px;">
        <div class="row g-0">
            <div class="col-md-6"></div>
                <div class="card-header">{{ $item['name'] }}</div>
                <div class="card-body">
                    <h5 class="card-title">Normal</h5>
                    <p class="card-text">Normal</p>
                </div>
        </div>
    </div>
    @endif
    @endforeach
</div>
@endif



<p class="text-center mb-0 mt-4">
    <a href="{{ route('casestudies_quiz.get',$casestudies->id)}}" class="btn btn-success">Submit</a>
</p>

<script src="{{ asset('assets/js/modal.js') }}"></script>

@endsection