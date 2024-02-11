@extends('admin.layout')
@section('title','Admin Dashboard')
@section('content')

        <form method="POST" action="{{ route('casestudies.store') }}" enctype="multipart/form-data">
            @csrf   
            {{-- {{ Session::get('form_session_value') }} --}}
            <div class="form-group mb-3">
                <label for="name"><b>Select Department: <span class="text text-danger">*</span></b></label>
                <select class="form-select" name="department">
                    <option value="">Select One</option>
                    @foreach($deparments as $val)
                    <option {{ old('department') == $val['id'] ? 'selected' : '' }} value="{{$val['id']}}">{{$val['name']}}</option>
                    @endforeach
                </select>
                @error('department')
                    <p class="text text-danger">{{$message}}</p>
                @enderror
            </div>

            <div class="form-group">
                <label for="name"><b>Title: <span class="text text-danger">*</span></b></label>
                <input type="text" class="form-control" name="title"  value="{{ old('title') }}">
                @error('title')
                    <p class="text text-danger">{{$message}}</p>
                @enderror
            </div> 
            
            <div class="card mt-3">
                <div class="card-header"><b>Mode: <span class="text text-danger">*</span></b></div>
                <div class="card-body">
                    <div class="form-check form-check-inline">
                        <label>
                            <input class="form-check-input mode" type="radio" name="mode" id="mode1" {{ old('mode') == 'class_mode' ? 'checked' : '' }} value="class_mode">
                            Clinic
                        </label>
                    </div>

                    <div class="form-check form-check-inline">
                        <label>
                            <input class="form-check-input mode" type="radio" {{ old('mode') == 'classic_mode' ? 'checked' : '' }} name="mode" id="mode1" value="classic_mode">
                            Classic
                        </label>
                    </div>

                    <div class="form-check form-check-inline">
                        <label>
                            <input class="form-check-input mode" type="radio" {{ old('mode') == 'study_mode' ? 'checked' : '' }} name="mode" id="mode3" value="study_mode">
                            Study
                        </label>
                    </div>

                    @error('mode')
                            <p class="text text-danger">{{$message}}</p>
                        @enderror
                </div>
            </div>

            <div class="form-group mt-3">
                <label for="name"><b>History: <span class="text text-danger">*</span></b></label>
                <textarea class="form-control" id="history" name="history" rows="8">{{ old('history') }}</textarea>
                @error('history')
                    <p class="text text-danger">{{$message}}</p>
                @enderror
            </div>

            <div class="form-group mt-3">
                <label for="image"><b>Image:</b></label>
                <input type="file" class="form-control" name="history_image" id="">
            </div>

            <div class="form-group mt-3">
                <label for="name"><b>Vital Signs: <span class="text text-danger">*</span></b></label>
                <textarea class="form-control" id="uital_signs" name="uital_signs" rows="8">{{ old('uital_signs') }}</textarea>
                @error('uital_signs')
                    <p class="text text-danger">{{$message}}</p>
                @enderror
            </div>

            <div class="form-check mt-4">
                <input class="form-check-input" @if(Session::get('quiz_optional_checkbox') == 'true') checked @endif type="checkbox" id="quiz_optional" name="quiz_optional">
                <label class="form-check-label" for="quiz_optional">
                    <b>Quiz</b>
                </label>
            </div>

            <div class="card mt-3" style="disply:none" id="check_quiz_optional">
                <div class="card-header"><b>Quiz:</b></div>
                <div class="card-body">
                    <div class="form-group mb-3">
                        <label for="name">Question:</label>
                        <input type="text" class="form-control" name="q_question" value="{{ old('q_question') }}">
                        @error('q_question')
                            <p class="text text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <div class="row mb-3">
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 1:</label>
                                <input type="text" class="form-control" name="option_1" value="{{ old('option_1') }}">
                                @error('option_1')
                                    <p class="text text-danger">{{$message}}</p>
                                @enderror
                            </div>  
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 2:</label>
                                <input type="text" class="form-control" name="option_2"  value="{{ old('option_2') }}">
                                @error('option_2')
                                    <p class="text text-danger">{{$message}}</p>
                                @enderror
                            </div>  
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 3:</label>
                                <input type="text" class="form-control" name="option_3"  value="{{ old('option_3') }}">
                                @error('option_3')
                                    <p class="text text-danger">{{$message}}</p>
                                @enderror
                            </div>  
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 4:</label>
                                <input type="text" class="form-control" name="option_4"  value="{{ old('option_4') }}">
                                @error('option_4')
                                    <p class="text text-danger">{{$message}}</p>
                                @enderror
                            </div>  
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name">Enter Correct one:</label>
                        <input type="text" class="form-control" name="correct_one" value="{{ old('correct_one') }}">
                        @error('correct_one')
                            <p class="text text-danger">{{$message}}</p>
                        @enderror
                    </div> 
                </div>
            </div>
            @php
            $number = !empty(Session::get('form_session_value')) ? Session::get('form_session_value') : 1;
            @endphp
            @for ($i = 0; $i < $number; $i++)
            <div class="card mt-3" id="sub_casestudies_form-{{$i}}">
                <div class="card-body">
                    
                    <div class="row">
                        <label class="col-sm-1" for="autoSizingSelect"><b>Type : <span class="text text-danger">*</span></b></label>
                        <div class="col-sm-11">
                            <select class="form-select type" id="type-{{$i}}" data-id="{{$i}}"name="addmore[{{$i}}][type]" id="autoSizingSelect">
                            <option value="">Choose...</option>
                            <option value="1" {{ old('addmore.'.$i.'.type') == 1 ? 'selected' : '' }}>Medications</option>
                            <option value="2" {{ old('addmore.'.$i.'.type') == 2 ? 'selected' : '' }}>Diagnosis</option>
                            <option value="3" {{ old('addmore.'.$i.'.type') == 3 ? 'selected' : '' }}>Procedures</option>
                            </select>
                            @error('addmore.'.$i.'.type')
                                <p class="text text-danger">{{$message}}</p>
                            @enderror
                        </div>
                    </div>


                    <div class="row mt-3">

                        <label class="col-sm-1" for=""><b>Name :<span class="text text-danger">*</span></b></label>
                        <div class="col-sm-11">
                            <select class="form-select select2" id="name-{{$i}}" data-id="{{$i}}" name="addmore[{{$i}}][name][]" id="autoSizingSelect">
                                @if(old('addmore.'.$i.'.name'))
                                @foreach (old('addmore.'.$i.'.name') as $item)
                                <option value="{{$item}}" selected>{{$item}}</option>
                                @endforeach
                                @endif
                            </select>
                            @error('addmore.'.$i.'.name')
                                <p class="text text-danger">{{$message}}</p>
                            @enderror
                        </div>

                        {{-- <label for="name" class="col-sm-1 col-form-label"><b>Name: <span class="text text-danger">*</span></b></label>
                        <div class="col-sm-11">
                          <input type="text" class="form-control" id="name" name="addmore[{{$i}}][name]">
                          @error('name')
                                <p class="text text-danger">{{$message}}</p>
                            @enderror
                        </div> --}}
                    </div>
                    <div class="row mt-3" style="display:none" id="show-result-{{$i}}">
                        <label for="name" class="col-sm-1 col-form-label"><b>Result:</b></label>
                        <div class="col-sm-5">
                        <textarea name="addmore[{{$i}}][result]" class="form-control" id="result" cols="30" rows="10">{{ old('addmore.'.$i.'.result') }}</textarea>
                          {{-- <input multiple type="text" class="form-control" id="result" name="addmore[{{$i}}][result]" value="{{ old('addmore.'.$i.'.result') }}"> --}}
                        </div>

                        <label for="name" class="col-sm-1 col-form-label"><b>Image:</b></label>
                        <div class="col-sm-5">
                          <input multiple type="file" class="form-control" id="image" name="addmore[{{$i}}][result_image][]">
                        </div>
                    </div>

            
                    <div class="card mt-3">
                        <div class="card-header"><b>Hint:</b></div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-7">
                                <input type="text" class="form-control" id="hint_first" name="addmore[{{$i}}][hint_first]" value="{{ old('addmore.'.$i.'.hint_first') }}">
                                </div>
                                <div class="col-sm-5">
                                <input type="file" class="form-control" id="image_first" name="addmore[{{$i}}][image_first]">
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-7">
                                <input type="text" class="form-control" id="hint_second" name="addmore[{{$i}}][hint_second]" value="{{ old('addmore.'.$i.'.hint_second') }}">
                                </div>
                                <div class="col-sm-5">
                                <input type="file" class="form-control" id="image_second" name="addmore[{{$i}}][image_second]">
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-7">
                                <input type="text" class="form-control" id="hint_third" name="addmore[{{$i}}][hint_third]" value="{{ old('addmore.'.$i.'.hint_third') }}">
                                </div>
                                <div class="col-sm-5">
                                <input type="file" class="form-control" id="image_third" name="addmore[{{$i}}][image_third]">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-check mt-4 followup_quiz">
                        <input class="form-check-input" @if(Session::get('follow_upquiz_checkbox') == 'true') checked @endif type="checkbox" id="followup_quiz-{{$i}}" data-id="{{$i}}" name="addmore[{{$i}}][followupquiz]">
                        <label class="form-check-label" for="followup_quiz">
                            <b>Followup Quiz</b>
                        </label>
                    </div>

                    <div class="card mt-3" style="display:none" id="followup_quiz_check_{{$i}}">
                        <div class="card-header"><b>Followup Quiz:</b></div>
                        <div class="card-body">
                            <div class="form-group mb-3">
                                <label for="name">Question:</label>
                                <input type="text" class="form-control" name="addmore[{{$i}}][followup_question]" value="{{ old('addmore.'.$i.'.followup_question') }}">
                                @error('followup_question')
                                    <p class="text text-danger">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="row mb-3" >
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 1:</label>
                                        <input type="text" class="form-control" name="addmore[{{$i}}][followup_option_1]" value="{{ old('addmore.'.$i.'.followup_option_1') }}">
                                        @error('followup_option_1')
                                            <p class="text text-danger">{{$message}}</p>
                                        @enderror
                                    </div>  
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 2:</label>
                                        <input type="text" class="form-control" name="addmore[{{$i}}][followup_option_2]"  value="{{ old('addmore.'.$i.'.followup_option_2') }}">
                                        @error('followup_option_2')
                                            <p class="text text-danger">{{$message}}</p>
                                        @enderror
                                    </div>  
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 3:</label>
                                        <input type="text" class="form-control" name="addmore[{{$i}}][followup_option_3]"  value="{{ old('addmore.'.$i.'.followup_option_3') }}">
                                        @error('followup_option_3')
                                            <p class="text text-danger">{{$message}}</p>
                                        @enderror
                                    </div>  
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 4:</label>
                                        <input type="text" class="form-control" name="addmore[{{$i}}][followup_option_4]"  value="{{ old('addmore.'.$i.'.followup_option_4') }}">
                                        @error('followup_option_4')
                                            <p class="text text-danger">{{$message}}</p>
                                        @enderror
                                    </div>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name">Enter Correct one:</label>
                                <input type="text" class="form-control" name="addmore[{{$i}}][followup_correct_one]" value="{{ old('addmore.'.$i.'.followup_correct_one') }}">
                                @error('followup_correct_one')
                                    <p class="text text-danger">{{$message}}</p>
                                @enderror
                            </div> 
                        </div>
                    </div>

                    <div class="card mt-3"> 
                        <div class="card-header">Feedback <span class="text text-danger">*</span></div>
                        <div class="card-body"> 
                            <div class="form-group mt-3">
                                <textarea class="form-control" id="feedback" name="addmore[{{$i}}][feedback_text]" rows="8">{{ old('addmore.'.$i.'.feedback_text') }}</textarea>
                                @error('addmore.'.$i.'.feedback_text')
                                    <p class="text text-danger">{{$message}}</p>
                                @enderror
                            </div>

                            <div class="form-group mt-3">
                                <label for="detail">Image:</label>
                                <input type="file" class="form-control" name="addmore[{{$i}}][feedback_image]" id="feedback_image">
                            </div>
                        </div>
                    </div>
                    @if($i!=0)
                    <button data-id="{{$i}}" class="remove_form btn btn-danger mt-4 float-end">Remove</button>
                    @endif
                </div>
            </div>
            @endfor

            <div id="append_form"></div>
            <button id="add_more" class="btn btn-primary mt-4 float-end">Add More</button>
            
            <div class="mt-3">
                <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </form>
<script>
    $(document).ready(function(){

        $('.select2').select2();

        if($("#quiz_optional").is(":checked")) {
            $("#check_quiz_optional").show();
        }else{
            $("#check_quiz_optional").hide();
        }
        
        $("#quiz_optional").click(function(){
            var checked = $(this).is(':checked');
            $.ajax({
                type: "GET",
                url: "{{ route('check_quiz_optional') }}",
                data: { checked: checked },
                success: function (data) {
                    console.log('success:', data);
                },
                error: function (data) {
                    console.log('Error:', data);
                }
            });

            if(checked){
                $("#check_quiz_optional").show();
            }else{
                $("#check_quiz_optional").hide();
            }
        
        });

        var value = $('input[name="mode"]:checked').val();
        if(value=="study_mode"){
            $(".followup_quiz").hide();
        }else{
            $(".followup_quiz").show();
        }

        $(document).on('click', '.mode', function(){
            var value = $('input[name="mode"]:checked').val();
            if(value=="study_mode"){
                $(".followup_quiz").hide();
            }else{
                $(".followup_quiz").show();
            }
        });

        $(document).on('change', '.type', function(){
            let value = $(this).val();
            let id = $(this).attr('data-id');
            $("#name-"+id).empty();
            $.ajax({
                type: "GET",
                data:{value:value},
                url: "{{ route('get_names') }}",
                success: function (data) {
                    data.forEach(ele => {
                        $('<option class="dynamic_option">').val(ele.title).text(ele.title).appendTo('#name-'+id);
                    });
                },
                error: function (data) {
                    console.log('Error:', data);
                }
            });
        
        });

        $(document).on('click','[id*=followup_quiz]', function() {
            var id = $(this).attr('data-id');
            
            if($("#followup_quiz-"+id).is(":checked")){
                $("#followup_quiz_check_"+id).show();
            }else{
                $("#followup_quiz_check_"+id).hide();
            }

        });
        
        $(document).on('click', ".remove_form", function(e){
            e.preventDefault();
            var id = $(this).attr('data-id');

            $.ajax({
                type: "GET",
                url: "{{ route('remove_form_session') }}",
                success: function (data) {
                    $("#sub_casestudies_form-"+id).hide();
                    console.log('success:', data);
                },
                error: function (data) {
                    console.log('Error:', data);
                }
            });

        });

        $(document).on('change',"[id*=type]",function(){
            var id = $(this).attr('data-id');
            var value = $(this).val();
            if(value == 3){
                $("#show-result-"+id).show();
            }else{
                $("#show-result-"+id).hide();
            }

        })
            
        var i = {{ $addFormSession }};
        $("#add_more").click(function(e){
             ++i;
            e.preventDefault();

            $.ajax({
                type: "GET",
                url: "{{ route('add_form_session') }}",
                success: function (data) {
                    console.log('success:', data);
                },
                error: function (data) {
                    console.log('Error:', data);
                }
            });

            $("#append_form").append('<div class="card mt-3" id="sub_casestudies_form-'+i+'"><div class="card-body">'+
                    
                    '<div class="row">'+
                        '<label class="col-sm-1" for="autoSizingSelect"><b>Type :</b></label>'+
                        '<div class="col-sm-11">'+
                            '<select class="form-select type" id="type-'+i+'" data-id='+i+' name="addmore['+i+'][type]" id="autoSizingSelect">'+
                            '<option value="">Choose...</option>'+
                            '<option value="1">Medications</option>'+
                            '<option value="2">Diagnosis</option>'+
                            '<option value="3">Procedures</option>'+
                            '</select></div></div>'+

                    // '<div class="row mt-3"><label for="name" class="col-sm-1 col-form-label"><b>Name:</b></label><div class="col-sm-11"><input type="text" class="form-control" id="name" name="addmore['+i+'][name]"></div></div>'+
                    
                    '<div class="row mt-3"><label class="col-sm-1" for=""><b>Name :</b></label><div class="col-sm-11"><select class="form-select select2" id="name-'+i+'" data-id="'+i+'" name="addmore['+i+'][name][]" id="autoSizingSelect"></select></div></div>'+

                    '<div class="row mt-3" style="display:none" id="show-result-'+i+'"> <label for="name" class="col-sm-1 col-form-label"><b>Result:</b></label><div class="col-sm-5"> <textarea name="addmore['+i+'][result]" class="form-control" id="result" cols="30" rows="10"></textarea></div>'+

                    '<label for="name" class="col-sm-1 col-form-label"><b>Image:</b></label> <div class="col-sm-5"><input type="file" class="form-control" id="image" name="addmore['+i+'][result_image]"> </div></div>'+

                    '<div class="card mt-3"><div class="card-header"><b>Hint:</b></div><div class="card-body">'+
                            '<div class="row"><div class="col-sm-7"><input type="text" class="form-control" id="hint_first" name="addmore['+i+'][hint_first]"></div> <div class="col-sm-5"><input type="file" class="form-control" id="image_first" name="addmore['+i+'][image_first]"></div></div>'+

                            '<div class="row mt-3"> <div class="col-sm-7"><input type="text" class="form-control" id="hint_second" name="addmore['+i+'][hint_second]"></div> <div class="col-sm-5"><input type="file" class="form-control" id="image_second" name="addmore['+i+'][image_second]"> </div> </div>'+

                            '<div class="row mt-3"> <div class="col-sm-7"><input type="text" class="form-control" id="hint_third" name="addmore['+i+'][hint_third]"> </div><div class="col-sm-5"><input type="file" class="form-control" id="image_third" name="addmore['+i+'][image_third]"></div></div> </div></div>'+

                            '<div class="form-check mt-4 followup_quiz"><input class="form-check-input" type="checkbox" id="followup_quiz-'+i+'" data-id="'+i+'"name="followup_quiz"><label class="form-check-label" for="followup_quiz"><b>Followup Quiz</b></label></div>'+

                        '<div class="card mt-3" style="display:none" id="followup_quiz_check_'+i+'"> <div class="card-header"><b>Followup Quiz:</b></div><div class="card-body"><div class="form-group mb-3"><label for="name">Question:</label> <input type="text" class="form-control" name="addmore['+i+'][followup_question]"></div>'+
                        
                        '<div class="row mb-3"><div class="col-3"><div class="form-group"><label for="name">Option 1:</label> <input type="text" class="form-control" name="addmore['+i+'][followup_option_1]"></div> </div>'+
                            
                            '<div class="col-3"> <div class="form-group"> <label for="name">Option 2:</label><input type="text" class="form-control" name="addmore['+i+'][followup_option_2]" "></div></div>'+
                            
                            '<div class="col-3"> <div class="form-group"> <label for="name">Option 3:</label> <input type="text" class="form-control" name="addmore['+i+'][followup_option_3]"></div></div>'+
                            
                            '<div class="col-3">  <div class="form-group"><label for="name">Option 4:</label><input type="text" class="form-control" name="addmore['+i+'][followup_option_4]" ></div>   </div> </div>'+

                            '<div class="form-group">  <label for="name">Enter Correct one:</label> <input type="text" class="form-control" name="addmore['+i+'][followup_correct_one]"></div> </div></div>'+

                    '<div class="card mt-3"> <div class="card-header">Feedback <span class="text text-danger">*</span></div> <div class="card-body"> <div class="form-group mt-3"> <textarea class="form-control" id="feedback" name="addmore['+i+'][feedback_text]" rows="8"></textarea></div>'+

                            '<div class="form-group mt-3"> <label for="detail">Image:</label><input type="file" class="form-control" name="addmore['+i+'][feedback_image]" id="feedback_image"></div></div></div>'+

                            '<button data-id="'+i+'" class="remove_form btn btn-danger mt-4 float-end">Remove</button>'+

                '</div></div>');
                $('.select2').select2();
        });
    });
    
</script>
@endsection