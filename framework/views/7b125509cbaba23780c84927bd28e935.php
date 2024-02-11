
<?php $__env->startSection('title','All Case Studies'); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
  <h3>All Case Studies (<?php echo e(count($list)); ?>)</h3>

  <div class="col-sm-8 col-12">
      <ul class="list-group mt-3">
        <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>  
          <a href="<?php echo e(route('casestudies_step_3.get',$data->id)); ?>" class="list-group-item list-group-item-action">
            <span class="text-primary"><?php echo e($data->title); ?></span>
            <p class="m-0"><small class="text-muted"><i><?php echo e($data->depart->name); ?></i></small></p>
          </a>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </ul>
  </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('doctor.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xamp\htdocs\laravel-apps\medplus_game\resources\views/doctor/department_casestudies.blade.php ENDPATH**/ ?>