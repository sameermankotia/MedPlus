
<?php $__env->startSection('title','Admin Dashboard'); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col-6 col-lg-4">
        <div class="card">
            <div class="card-body bg-warning-subtle text-center">
                <h4 class="m-0">Total Departments</h4>
                <hr/>
                <h3 class="m-0"><?php echo e(App\Models\Department::count()); ?></h3>
            </div>
        </div>
    </div>
    <div class="col-6 col-lg-4">
        <div class="card">
            <div class="card-body bg-warning-subtle text-center">
                <h4 class="m-0">Total Case Studies</h4>
                <hr/>
                <h3 class="m-0"><?php echo e(App\Models\Casestudies::count()); ?></h3>
            </div>
        </div>
    </div>
    <div class="col-6 col-lg-4">
        <div class="card">
            <div class="card-body bg-warning-subtle text-center">
                <h4 class="m-0">Total Doctors</h4>
                <hr/>
                <h3 class="m-0"><?php echo e(App\Models\Doctor::count()); ?></h3>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/codeart1/domains/medplus.codeartisanlab.com/public_html/medplus_game/resources/views/admin/dashboard.blade.php ENDPATH**/ ?>