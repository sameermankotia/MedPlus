<?php $__env->startSection('title','Admin Dashboard'); ?>
<?php $__env->startSection('content'); ?>
        <form method="POST" action="<?php echo e(route('department.update',$department->id)); ?>" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>    
            <?php echo method_field('PUT'); ?>
            <div class="form-group">
                <label for="name">Department Name:</label>
                <input type="text" class="form-control" name="name" id="name" value="<?php echo e($department->name); ?>">
                <?php $__errorArgs = ['name'];
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
                <label for="detail">Description:</label>
                <textarea name="detail" class="form-control"><?php echo e($department->detail); ?></textarea>
                <?php $__errorArgs = ['detail'];
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
                <label for="detail">Image:</label>
                <input type="file" class="form-control" name="img" id="img"><br>
                <img src="<?php echo e(asset('images/'.$department->img)); ?>" width="150" />
                <?php $__errorArgs = ['img'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
					<p class="text text-danger"><?php echo e($message); ?></p>
				<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div><br>  
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xamp\htdocs\laravel-apps\medplus_game\resources\views/admin/department/edit.blade.php ENDPATH**/ ?>