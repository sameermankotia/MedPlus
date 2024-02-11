<?php $__env->startSection('title','Admin Dashboard'); ?>
<?php $__env->startSection('content'); ?>
<h2 class="my-4">All Case Studies (<?php echo e(count($list)); ?>)</h2>
        <?php if($message = Session::get('success')): ?>
            <div class="alert alert-success">
                <p><?php echo e($message); ?></p>
            </div>
        <?php endif; ?>

        <?php if($message = Session::get('error')): ?>
            <div class="alert alert-danger">
                <p><?php echo e($message); ?></p>
            </div>
        <?php endif; ?>        

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Department</th>
                    <th>Casestudies </th>
                    <th>Mode</th>
                    <th width="280px">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e(++$i); ?></td>
                        <?php if(isset($data->depart->name)): ?>
                        <td><?php echo e($data->depart->name); ?></td>
                        <?php else: ?>
                        <td></td>
                        <?php endif; ?>
                        <td><?php echo e($data->title); ?></td>
                        <td><?php if($data->mode == 'class_mode'): ?> <?php echo e('Clinic'); ?> <?php elseif($data->mode == 'classic_mode'): ?> <?php echo e('Classic'); ?><?php elseif($data->mode == 'study_mode'): ?> <?php echo e('Study'); ?><?php endif; ?></td>
                        <td>
                            <form action="<?php echo e(route('casestudies.destroy',$data->id)); ?>" method="Post">
                                <!-- Update -->
                                <a title="<?php echo e(__('Update')); ?>" class="btn btn-outline-primary btn-sm" href="<?php echo e(route('casestudies.edit',$data->id)); ?>"><i class="fa fa-pencil"></i></a>
                                <!-- End -->
                                <?php echo csrf_field(); ?>
                                <?php echo method_field('DELETE'); ?>
                                <button title="<?php echo e(__('Delete')); ?>" type="submit" id="delete" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i></button>
                            </form>
                        </td>
                    </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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

<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xamp\htdocs\laravel-apps\medplus_game\resources\views/admin/casestudies/index.blade.php ENDPATH**/ ?>