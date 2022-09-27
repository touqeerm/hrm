<?php echo e(Form::open(['route' => ['create.ip'], 'method' => 'post'])); ?>

<div class="modal-body">
    <div class="row">
        <div class="form-group">
            <?php echo e(Form::label('ip', __('IP'), ['class' => 'col-form-label'])); ?>

            <?php echo e(Form::text('ip', null, ['class' => 'form-control'])); ?>

        </div>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn  btn-light" data-bs-dismiss="modal"><?php echo e(__('Close')); ?></button>
    <input type="submit" value="<?php echo e(__('Create')); ?>" class="btn  btn-primary">

</div>
<?php echo e(Form::close()); ?>

<?php /**PATH E:\xampp\htdocs\hrm\resources\views/restrict_ip/create.blade.php ENDPATH**/ ?>