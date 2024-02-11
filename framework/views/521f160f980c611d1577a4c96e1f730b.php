<?php $__env->startSection('title','All Case Studies'); ?>
<?php $__env->startSection('content'); ?>
<div class="row">

<?php if(Session('message')): ?>
    <div class="alert alert-danger">
        <p><?php echo e(Session('message')); ?></p>
    </div>
<?php endif; ?>

  <h3>All Case Studies  (<?php echo e(count($casestudies)); ?>)</h3>
  <div class="table-responsive">
        <table id="dataTable" class="table table-bordered text-center">
          <thead>
            <tr>
              <th>Department</th>
              <th>Casestudies</th>
              <th>Attempt Status</th>
              <th>Score</th>
            </tr>
          </thead>
        <tbody>
          <?php $__currentLoopData = $casestudies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $quizCheck=App\Models\Quiz_attempt::where('case_id',$data->id)->where('user_id',auth()->guard('doctor')->user()->id)->get();
          ?>
          <tr>
            <td><?php echo e($data->depart->name); ?></td>
            <td>
            <?php if($data->mode == 'clinic' && $quizCheck->count() > 0): ?>
              <?php echo e($data->title); ?> 
            <?php else: ?>
              <a href="<?php echo e(route('casestudies_history.get',$data->id)); ?>"><?php echo e($data->title); ?></a>
            <?php endif; ?> 
            </td>
            <td>
              <?php if($quizCheck->count() > 0): ?>
              Yes
              <?php else: ?>
              No
              <?php endif; ?> 
            </td>
            <td><?php if($quizCheck->count() > 0): ?>
              <?php echo e($quizCheck[0]->score); ?>

              <?php else: ?>
              0
              <?php endif; ?></td>
          </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
      </tbody>
    </table>
  </div>
</div>


<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" /> -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" />
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
  let table = new DataTable('#dataTable');
</script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('doctor.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/codeart1/domains/medplus.codeartisanlab.com/public_html/medplus_game/resources/views/doctor/casestudies.blade.php ENDPATH**/ ?>