@extends('doctor.layout')
@section('title','Admin Dashboard')
@section('content')

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#myModal">
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
          @foreach ($hints as $hint)
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

<h3 class="mt-3">Case Study: <span class="text-primary">{{$casestudies->title}}</span></h3>
<div class="card mt-3">
    <div class="card-header"><b>Medication :</b></div>
    @php
        if($attempt->medication != null){
            $explode = explode(", ",$attempt->medication); 
        }
    @endphp
    <form method="post" action="{{ route('quiz_medication.post',$casestudies->id) }}">
        @csrf
        <div class="card-body">
            <div class="row">
                <div class="col-sm-8">
                    <select class="form-select select2" multiple="multiple" id="select2" name="medication[]">
                    
                        @if ($attempt->medication == null)
                            @foreach ($medications as $val)
                            <option value="{{$val->id}}">{{$val->title}}</option>
                            @endforeach
                        @else
                            @foreach ($medications as $val)
                                @foreach($explode as $subvalue)
                                    <option value="{{$val->id}}" @if($subvalue == $val->id) selected @endif>{{$val->title}}</option>
                                @endforeach
                            @endforeach
                        @endif

                    </select>

                    @if ($attempt->medications == null)
                        @foreach ($medications as $val)
                            <div class="card show mt-3" id="show-{{$val->id}}">
                                <div class="card-body">{{$val->description}}</div>
                            </div>
                        @endforeach
                    @else
                        @foreach ($medications as $val)
                            @foreach($explode as $subvalue)
                                @if($subvalue == $val->id)
                                    <div class="card mt-3">
                                        <div class="card-body">{{$val->description}}</div>
                                    </div>
                                @endif
                            @endforeach
                        @endforeach
                    @endif

                </div>

                <div class="col-sm-4">
                    <div class="card order_list">
                        <div class="card-header">Orders list:</div>
                        <div class="card-body">
                            <ul class="list-group test_order"></ul>
                            <button class="btn btn-success mt-4">Submit Orders</button>
                        </div>
                    </div>

                    @foreach ($feedback as $item)
                        <div class="card mt-3">
                            <div class="card-body">{{$item->feedback_text}}</div>
                        </div> 
                    @endforeach

                </div>
            </div>
            @error('test_answer')
                <p class="text text-danger">{{$message}}</p>
            @enderror

        </div>
    
    

    <input type="hidden" name="case_id" value="{{ $casestudies->id }}">

    <ul class="pagination justify-content-center mt-3">
        <!-- <li class="page-item"><a class="page-link" href="#">Previous</a></li> -->
        {{-- <button type="submit" class="btn btn-success">Next</button> --}}
        <!-- <li class="page-item"><a class="btn btn-success" href="#">Next</a></li> -->
    </ul>
</form>
</div>
<script>
    $(document).ready(function(){
        
        $('.select2').select2();
        
        $(".show").hide();
        $(".order_list").hide();
        
        var $select = $('#select2');

        $select.on('change',function(){
            var multi = $.map($("#select2 option:selected"), function (el, i) {
                return $(el).text();
            });
            var tests = multi.join(", ");
            var testArr = tests.split(', ');
            
            if(multi != ""){
                $(".order_list").show();
            }else{
                $(".order_list").hide();
            }
            
            $(".test_order").empty();
            
            testArr.forEach(ele => {
                $(".test_order").append("<li class='list-group-item'>"+ele+"</li>")
            });

        });
        
        $select.on('select2:unselect', function(e) {
            var id = e.params.data.id;
            $("#show-"+id).hide();
        });
        
        $select.on('select2:select', function(e) {
            var id = e.params.data.id;
            $("#show-"+id).show();
        });

        if ($("#select2 option:selected").length>0){

            var multi = $.map($("#select2 option:selected"), function (el, i) {
                return $(el).text();
            });

            var tests = multi.join(", ");
            var testArr = tests.split(', ');
            $(".order_list").show();

            testArr.forEach(ele => {
                $(".test_order").append("<li class='list-group-item'>"+ele+"</li>")
            });

        }

    });
</script>
<script src="{{ asset('assets/js/modal.js') }}"></script>
@endsection