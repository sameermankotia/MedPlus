<?php $__env->startSection('title','Admin Dashboard'); ?>
<?php $__env->startSection('content'); ?>

        <form method="POST" action="<?php echo e(route('casestudies.store')); ?>" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>   
            
            <div class="form-group mb-3">
                <label for="name"><b>Select Department: <span class="text text-danger">*</span></b></label>
                <select class="form-select" name="department">
                    <option value="">Select One</option>
                    <?php $__currentLoopData = $deparments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option <?php echo e(old('department') == $val['id'] ? 'selected' : ''); ?> value="<?php echo e($val['id']); ?>"><?php echo e($val['name']); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
                <?php $__errorArgs = ['department'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <p class="text text-danger"><?php echo e($message); ?></p>
                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>

            <div class="form-group">
                <label for="name"><b>Title: <span class="text text-danger">*</span></b></label>
                <input type="text" class="form-control" name="title"  value="<?php echo e(old('title')); ?>">
                <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <p class="text text-danger"><?php echo e($message); ?></p>
                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div> 
            
            <div class="card mt-3">
                <div class="card-header"><b>Mode: <span class="text text-danger">*</span></b></div>
                <div class="card-body">
                    <div class="form-check form-check-inline">
                        <label>
                            <input class="form-check-input mode" type="radio" name="mode" id="mode1" <?php echo e(old('mode') == 'class_mode' ? 'checked' : ''); ?> value="class_mode">
                            Clinic
                        </label>
                    </div>

                    <div class="form-check form-check-inline">
                        <label>
                            <input class="form-check-input mode" type="radio" <?php echo e(old('mode') == 'classic_mode' ? 'checked' : ''); ?> name="mode" id="mode1" value="classic_mode">
                            Classic
                        </label>
                    </div>

                    <div class="form-check form-check-inline">
                        <label>
                            <input class="form-check-input mode" type="radio" <?php echo e(old('mode') == 'study_mode' ? 'checked' : ''); ?> name="mode" id="mode3" value="study_mode">
                            Study
                        </label>
                    </div>

                    <?php $__errorArgs = ['mode'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="text text-danger"><?php echo e($message); ?></p>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group mt-3">
                <label for="name"><b>History: <span class="text text-danger">*</span></b></label>
                <textarea class="form-control" id="history" name="history" rows="8"><?php echo e(old('history')); ?></textarea>
                <?php $__errorArgs = ['history'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <p class="text text-danger"><?php echo e($message); ?></p>
                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>

            <div class="form-group mt-3">
                <label for="image"><b>Image:</b></label>
                <input type="file" class="form-control" name="history_image" id="">
            </div>

            <div class="form-group mt-3">
                <label for="name"><b>Vital Signs: <span class="text text-danger">*</span></b></label>
                <textarea class="form-control" id="uital_signs" name="uital_signs" rows="8"><?php echo e(old('uital_signs')); ?></textarea>
                <?php $__errorArgs = ['uital_signs'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <p class="text text-danger"><?php echo e($message); ?></p>
                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>

            <div class="form-check mt-4">
                <input class="form-check-input" <?php if(Session::get('quiz_optional_checkbox') == 'true'): ?> checked <?php endif; ?> type="checkbox" id="quiz_optional" name="quiz_optional">
                <label class="form-check-label" for="quiz_optional">
                    <b>Quiz</b>
                </label>
            </div>

            <div class="card mt-3" style="disply:none" id="check_quiz_optional">
                <div class="card-header"><b>Quiz:</b></div>
                <div class="card-body">
                    <div class="form-group mb-3">
                        <label for="name">Question:</label>
                        <input type="text" class="form-control" name="q_question" value="<?php echo e(old('q_question')); ?>">
                        <?php $__errorArgs = ['q_question'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="text text-danger"><?php echo e($message); ?></p>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    <div class="row mb-3">
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 1:</label>
                                <input type="text" class="form-control" name="option_1" value="<?php echo e(old('option_1')); ?>">
                                <?php $__errorArgs = ['option_1'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <p class="text text-danger"><?php echo e($message); ?></p>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>  
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 2:</label>
                                <input type="text" class="form-control" name="option_2"  value="<?php echo e(old('option_2')); ?>">
                                <?php $__errorArgs = ['option_2'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <p class="text text-danger"><?php echo e($message); ?></p>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>  
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 3:</label>
                                <input type="text" class="form-control" name="option_3"  value="<?php echo e(old('option_3')); ?>">
                                <?php $__errorArgs = ['option_3'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <p class="text text-danger"><?php echo e($message); ?></p>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>  
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="name">Option 4:</label>
                                <input type="text" class="form-control" name="option_4"  value="<?php echo e(old('option_4')); ?>">
                                <?php $__errorArgs = ['option_4'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <p class="text text-danger"><?php echo e($message); ?></p>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>  
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name">Enter Correct one:</label>
                        <input type="text" class="form-control" name="correct_one" value="<?php echo e(old('correct_one')); ?>">
                        <?php $__errorArgs = ['correct_one'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="text text-danger"><?php echo e($message); ?></p>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div> 
                </div>
            </div>
            <?php
            $number = !empty(Session::get('form_session_value')) ? Session::get('form_session_value') : 1;
            ?>
            <?php for($i = 0; $i < $number; $i++): ?>
            <div class="card mt-3" id="sub_casestudies_form-<?php echo e($i); ?>">
                <div class="card-body">
                    
                    <div class="row">
                        <label class="col-sm-1" for="autoSizingSelect"><b>Type : <span class="text text-danger">*</span></b></label>
                        <div class="col-sm-11">
                            <select class="form-select type" id="type-<?php echo e($i); ?>" data-id="<?php echo e($i); ?>"name="addmore[<?php echo e($i); ?>][type]" id="autoSizingSelect">
                            <option value="">Choose...</option>
                            <option value="1" <?php echo e(old('addmore.'.$i.'.type') == 1 ? 'selected' : ''); ?>>Medications</option>
                            <option value="2" <?php echo e(old('addmore.'.$i.'.type') == 2 ? 'selected' : ''); ?>>Diagnosis</option>
                            <option value="3" <?php echo e(old('addmore.'.$i.'.type') == 3 ? 'selected' : ''); ?>>Procedures</option>
                            </select>
                            <?php $__errorArgs = ['addmore.'.$i.'.type'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <p class="text text-danger"><?php echo e($message); ?></p>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>
                    </div>


                    <div class="row mt-3">

                        <label class="col-sm-1" for=""><b>Name :<span class="text text-danger">*</span></b></label>
                        <div class="col-sm-11">
                            <select class="form-select select2" id="name-<?php echo e($i); ?>" data-id="<?php echo e($i); ?>" name="addmore[<?php echo e($i); ?>][name][]" id="autoSizingSelect">
                                <?php if(old('addmore.'.$i.'.name')): ?>
                                <?php $__currentLoopData = old('addmore.'.$i.'.name'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($item); ?>" selected><?php echo e($item); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                            </select>
                            <?php $__errorArgs = ['addmore.'.$i.'.name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <p class="text text-danger"><?php echo e($message); ?></p>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        
                    </div>
                    <div class="row mt-3" style="display:none" id="show-result-<?php echo e($i); ?>">
                        <label for="name" class="col-sm-1 col-form-label"><b>Result:</b></label>
                        <div class="col-sm-5">
                        <textarea name="addmore[<?php echo e($i); ?>][result]" class="form-control" id="result" cols="30" rows="10"><?php echo e(old('addmore.'.$i.'.result')); ?></textarea>
                          
                        </div>

                        <label for="name" class="col-sm-1 col-form-label"><b>Image:</b></label>
                        <div class="col-sm-5">
                          <input multiple type="file" class="form-control" id="image" name="addmore[<?php echo e($i); ?>][result_image][]">
                        </div>
                    </div>

            
                    <div class="card mt-3">
                        <div class="card-header"><b>Hint:</b></div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-7">
                                <input type="text" class="form-control" id="hint_first" name="addmore[<?php echo e($i); ?>][hint_first]" value="<?php echo e(old('addmore.'.$i.'.hint_first')); ?>">
                                </div>
                                <div class="col-sm-5">
                                <input type="file" class="form-control" id="image_first" name="addmore[<?php echo e($i); ?>][image_first]">
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-7">
                                <input type="text" class="form-control" id="hint_second" name="addmore[<?php echo e($i); ?>][hint_second]" value="<?php echo e(old('addmore.'.$i.'.hint_second')); ?>">
                                </div>
                                <div class="col-sm-5">
                                <input type="file" class="form-control" id="image_second" name="addmore[<?php echo e($i); ?>][image_second]">
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-7">
                                <input type="text" class="form-control" id="hint_third" name="addmore[<?php echo e($i); ?>][hint_third]" value="<?php echo e(old('addmore.'.$i.'.hint_third')); ?>">
                                </div>
                                <div class="col-sm-5">
                                <input type="file" class="form-control" id="image_third" name="addmore[<?php echo e($i); ?>][image_third]">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-check mt-4 followup_quiz">
                        <input class="form-check-input" <?php if(Session::get('follow_upquiz_checkbox') == 'true'): ?> checked <?php endif; ?> type="checkbox" id="followup_quiz-<?php echo e($i); ?>" data-id="<?php echo e($i); ?>" name="addmore[<?php echo e($i); ?>][followupquiz]">
                        <label class="form-check-label" for="followup_quiz">
                            <b>Followup Quiz</b>
                        </label>
                    </div>

                    <div class="card mt-3" style="display:none" id="followup_quiz_check_<?php echo e($i); ?>">
                        <div class="card-header"><b>Followup Quiz:</b></div>
                        <div class="card-body">
                            <div class="form-group mb-3">
                                <label for="name">Question:</label>
                                <input type="text" class="form-control" name="addmore[<?php echo e($i); ?>][followup_question]" value="<?php echo e(old('addmore.'.$i.'.followup_question')); ?>">
                                <?php $__errorArgs = ['followup_question'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <p class="text text-danger"><?php echo e($message); ?></p>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="row mb-3" >
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 1:</label>
                                        <input type="text" class="form-control" name="addmore[<?php echo e($i); ?>][followup_option_1]" value="<?php echo e(old('addmore.'.$i.'.followup_option_1')); ?>">
                                        <?php $__errorArgs = ['followup_option_1'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <p class="text text-danger"><?php echo e($message); ?></p>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>  
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 2:</label>
                                        <input type="text" class="form-control" name="addmore[<?php echo e($i); ?>][followup_option_2]"  value="<?php echo e(old('addmore.'.$i.'.followup_option_2')); ?>">
                                        <?php $__errorArgs = ['followup_option_2'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <p class="text text-danger"><?php echo e($message); ?></p>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>  
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 3:</label>
                                        <input type="text" class="form-control" name="addmore[<?php echo e($i); ?>][followup_option_3]"  value="<?php echo e(old('addmore.'.$i.'.followup_option_3')); ?>">
                                        <?php $__errorArgs = ['followup_option_3'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <p class="text text-danger"><?php echo e($message); ?></p>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>  
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="name">Option 4:</label>
                                        <input type="text" class="form-control" name="addmore[<?php echo e($i); ?>][followup_option_4]"  value="<?php echo e(old('addmore.'.$i.'.followup_option_4')); ?>">
                                        <?php $__errorArgs = ['followup_option_4'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <p class="text text-danger"><?php echo e($message); ?></p>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name">Enter Correct one:</label>
                                <input type="text" class="form-control" name="addmore[<?php echo e($i); ?>][followup_correct_one]" value="<?php echo e(old('addmore.'.$i.'.followup_correct_one')); ?>">
                                <?php $__errorArgs = ['followup_correct_one'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <p class="text text-danger"><?php echo e($message); ?></p>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div> 
                        </div>
                    </div>

                    <div class="card mt-3"> 
                        <div class="card-header">Feedback <span class="text text-danger">*</span></div>
                        <div class="card-body"> 
                            <div class="form-group mt-3">
                                <textarea class="form-control" id="feedback" name="addmore[<?php echo e($i); ?>][feedback_text]" rows="8"><?php echo e(old('addmore.'.$i.'.feedback_text')); ?></textarea>
                                <?php $__errorArgs = ['addmore.'.$i.'.feedback_text'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <p class="text text-danger"><?php echo e($message); ?></p>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>

                            <div class="form-group mt-3">
                                <label for="detail">Image:</label>
                                <input type="file" class="form-control" name="addmore[<?php echo e($i); ?>][feedback_image]" id="feedback_image">
                            </div>
                        </div>
                    </div>
                    <?php if($i!=0): ?>
                    <button data-id="<?php echo e($i); ?>" class="remove_form btn btn-danger mt-4 float-end">Remove</button>
                    <?php endif; ?>
                </div>
            </div>
            <?php endfor; ?>

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
                url: "<?php echo e(route('check_quiz_optional')); ?>",
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
                url: "<?php echo e(route('get_names')); ?>",
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
                url: "<?php echo e(route('remove_form_session')); ?>",
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
            
        var i = <?php echo e($addFormSession); ?>;
        $("#add_more").click(function(e){
             ++i;
            e.preventDefault();

            $.ajax({
                type: "GET",
                url: "<?php echo e(route('add_form_session')); ?>",
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/codeart1/domains/medplus.codeartisanlab.com/public_html/medplus_game/resources/views/admin/casestudies/create.blade.php ENDPATH**/ ?>