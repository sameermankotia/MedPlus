<?php $__env->startSection('title','Admin Dashboard'); ?>
<?php $__env->startSection('content'); ?>
        <form method="POST" action="<?php echo e(route('tests.update',$tests->id)); ?>" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>    
            <?php echo method_field('PUT'); ?>
            <div class="form-group">
                <label for="name">Title:</label>
                <input type="text" class="form-control" name="title" id="title" value="<?php echo e($tests->title); ?>">
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
            <div class="form-group">
                <label for="detail">Description:</label>
                <textarea name="description" class="form-control"><?php echo e($tests->description); ?></textarea>
                <?php $__errorArgs = ['description'];
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
                <label for="image">Image:</label>
                <input type="file" class="form-control" name="image" id="">
            </div>  
            <button type="submit" class="btn btn-success mt-4">Submit</button>
        </form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/codeart1/domains/medplus.codeartisanlab.com/public_html/medplus_game/resources/views/admin/tests/edit.blade.php ENDPATH**/ ?>