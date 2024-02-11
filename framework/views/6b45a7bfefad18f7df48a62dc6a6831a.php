<?php $__env->startSection('title','Admin Dashboard'); ?>
<?php $__env->startSection('content'); ?>
<?php if($casestudies->mode == 'classic_mode'): ?>
<div class="alert alert-info" role="alert">
<b>Hint</b> : <?php echo e($casestudies->hint); ?>

</div>
<?php endif; ?>
<h3>Case Study: <span class="text-primary"><?php echo e($casestudies->title); ?></span></h3>
<div class="card mt-3"  style="height: 500px; overflow-y: auto">
    <div class="card-header"><b>Results :</b></div>
        <?php echo csrf_field(); ?>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-8">
                    <?php $__currentLoopData = $results; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <h4><?php echo e($item['name']); ?></h4>
                    <?php if($item['image'] != "" || $item['result'] != ""): ?> 
                        <?php if($item['image']!= ""): ?>
                        <img src="<?php echo e(asset('images/result_images/'.$item['image'])); ?>" alt="" height="75" class="img-thumbnail" width="45%">
                        <?php endif; ?>
                        <p class="mt-2"><?php echo e($item['result']); ?></p>
                        <hr/>
                    <?php else: ?>
                         <p class="mt-2">Normal</p>
                    <?php endif; ?>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
        <ul class="pagination justify-content-center mt-3">
            <a class="btn btn-success" href="<?php echo e(route('followup_quiz_test.get',$casestudies->id)); ?>" role="button">Next</a>
        </ul>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('doctor.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xamp\htdocs\laravel-apps\medplus_game\resources\views/doctor/results.blade.php ENDPATH**/ ?>