<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Payslip')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('breadcrumb'); ?>
    <li class="breadcrumb-item"><a href="<?php echo e(route('home')); ?>"><?php echo e(__('Home')); ?></a></li>
    <li class="breadcrumb-item"><?php echo e(__('payslip')); ?></li>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>
    <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mt-4">

        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5><?php echo e(__('Payslip')); ?></h5>
                    </div>
            </div>

            <div class="card-body">
                <?php echo e(Form::open(['route' => ['payslip.store'], 'method' => 'POST', 'id' => 'payslip_form'])); ?>

                <div class="d-flex align-items-center justify-content-end">

                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('month', __('Select Month'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month'])); ?>


                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('year', __('Select Year'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('year', $year, null, ['class' => 'form-control select'])); ?>


                        </div>
                    </div>
                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="#" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form').submit(); return false;"
                           data-bs-toggle="tooltip" title="<?php echo e(__('payslip')); ?>"
                           data-original-title="<?php echo e(__('payslip')); ?>">
                            <?php echo e(__('Generate Payslip')); ?>

                        </a>


                    </div>
                </div>
            </div>
            <?php echo e(Form::close()); ?>

        </div>

    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5><?php echo e(__('Payroll Sheet')); ?></h5>
                    </div>
                    <div class="card-body">
                <?php echo e(Form::open(['route' => ['payslip.export'], 'method' => 'POST', 'id' => 'payslip_form1'])); ?>

                <div class="d-flex align-items-center justify-content-end">


                <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('month', __('Select Month'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month'])); ?>


                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('year', __('Select Year'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('year', $year, null, ['class' => 'form-control select'])); ?>


                        </div>
                    </div>


                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="export" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form1').submit(); return false;"
                           data-bs-toggle="tooltip" title="<?php echo e(__('Payroll Sheet')); ?>"
                           data-original-title="<?php echo e(__('Payroll Sheet')); ?>">
                            <?php echo e(__('Export Payroll Sheet')); ?>

                        </a>


                    </div>
                </div>
            </div>
            <?php echo e(Form::close()); ?>


            </div>    
        </div>
    </div>    


    <div class="col-12">
        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5><?php echo e(__('Generate WPS')); ?></h5>
                    </div>
                    <div class="card-body">
                <?php echo e(Form::open(['route' => ['payslip.wps'], 'method' => 'POST', 'id' => 'payslip_form2'])); ?>

                <div class="d-flex align-items-center justify-content-end">


                <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('month', __('Select Month'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month'])); ?>


                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('year', __('Select Year'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('year', $year, null, ['class' => 'form-control select', 'id' => 'year'])); ?>


                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('format', __('WPS Format'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('format', $format, null, ['class' => 'form-control select', 'id' => 'format'])); ?>


                        </div>
                    </div>
                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="#" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form2').submit(); return false;"
                           data-bs-toggle="tooltip" title="<?php echo e(__('WPS')); ?>"
                           data-original-title="<?php echo e(__('WPS')); ?>">
                            <?php echo e(__('Export WPS')); ?>

                        </a>
                        


                    </div>
                </div>
            </div>
            <?php echo e(Form::close()); ?>


            </div>    
        </div>
    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5><?php echo e(__('Generate Non WPS')); ?></h5>
                    </div>
                    <div class="card-body">
                <?php echo e(Form::open(['route' => ['payslip.nonwps'], 'method' => 'POST', 'id' => 'payslip_form3'])); ?>

                <div class="d-flex align-items-center justify-content-end">


                <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('month', __('Select Month'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month'])); ?>


                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('year', __('Select Year'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('year', $year, null, ['class' => 'form-control select', 'id' => 'year'])); ?>


                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            <?php echo e(Form::label('format1', __('Non WPS Format'), ['class' => 'form-label'])); ?>

                            <?php echo e(Form::select('format1', $format1, null, ['class' => 'form-control select', 'id' => 'format'])); ?>


                        </div>
                    </div>
                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="#" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form3').submit(); return false;"
                           data-bs-toggle="tooltip" title="<?php echo e(__('NON WPS')); ?>"
                           data-original-title="<?php echo e(__('NON WPS')); ?>">
                            <?php echo e(__('Export Non WPS')); ?>

                        </a>
                        


                    </div>
                </div>
            </div>
            <?php echo e(Form::close()); ?>


            </div>    
        </div>
    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <form>
                    
                    <div class="d-flex align-items-center justify-content-start">
                        <h5><?php echo e(__('Find Employee Payslip')); ?></h5>
                    </div>


                    <div class="d-flex align-items-center justify-content-end">

                        <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                            <div class="btn-box">

                                
                                
                                
                                
                                
                                
                                
                                <select class="form-control month_date " name="year" tabindex="-1" aria-hidden="true">
                                    <option value="--">--</option>
                                    
                                    <?php $__currentLoopData = $month; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k=>$mon): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                        <?php
                                            $selected = ((date('m')-1) == $k) ? 'selected' :'';
                                        ?>
                                        <option value="<?php echo e($k); ?>" <?php echo e($selected); ?> ><?php echo e($mon); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                                </select>


                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                            <div class="btn-box">

                                <?php echo e(Form::select('year', $year, null, ['class' => 'form-control year_date '])); ?>


                            </div>
                        </div>
                        <!-- <div class="col-auto float-end ">
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Create Pay Slip')): ?>
                                <input type="button" value="<?php echo e(__('Bulk Payment')); ?>" class="btn btn-primary"
                                       id="bulk_payment">
                            <?php endif; ?>


                        </div> -->
                    </div>

                    
                    
                </form>
                
            </div>
            <div class="card-body">
                <div class="table-responsive">

                    <table class="table" id="pc-dt-render-column-cells">                       
                        <thead>
                        <tr>
                            
                            <th><?php echo e(__('Employee Id')); ?></th>
                            <th><?php echo e(__('Name')); ?></th>
                            <th><?php echo e(__('Payroll Type')); ?></th>
                            <th><?php echo e(__('Salary')); ?></th>
                            <th><?php echo e(__('Net Salary')); ?></th>
                            <th><?php echo e(__('Status')); ?></th>
                            <th><?php echo e(__('Action')); ?></th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- [ basic-table ] end -->
<?php $__env->stopSection(); ?>

<?php $__env->startPush('script-page'); ?>
    <script>


        $(document).ready(function () {
            callback();

            function callback() {
                var month = $(".month_date").val();
                var year = $(".year_date").val();
                console.log("log1");
                if (month == '') {
                    month = '<?php echo e(date('m', strtotime('last month'))); ?>';
                    year = '<?php echo e(date('Y')); ?>';
                }

                var datePicker = year + '-' + month;

                $.ajax({
                    url: '<?php echo e(route('payslip.search_json')); ?>',
                    type: 'POST',
                    data: {
                        "datePicker": datePicker,
                        "_token": "<?php echo e(csrf_token()); ?>",
                    },
                    success: function (data) {

                        console.log("Success");
                        var datatable_data = {
                            data: data
                        };

                        function renderstatus(data, cell, row) {
                            if (data == 'Paid')
                                return '<div class="badge bg-success p-2 px-3 rounded"><a href="#" class="text-white">' +
                                    data + '</a></div>';
                            else
                                return '<div class="badge bg-danger p-2 px-3 rounded"><a href="#" class="text-white">' +
                                    data + '</a></div>';
                        }

                        function renderButton(data, cell, row) {
                            console.log("Render");
                            var $div = $(row);
                            employee_id = $div.find('td:eq(0)').text();
                            status = $div.find('td:eq(6)').text();

                            var month = $(".month_date").val();
                            var year = $(".year_date").val();
                            var id = employee_id;
                            var payslip_id = data;


                            var clickToPaid = '';
                            var payslip = '';
                            var view = '';
                            var edit = '';
                            var deleted = '';
                            var form = '';

                            if (data != 0) {
                                var payslip =
                                    '<a href="#" data-url="<?php echo e(url('payslip/pdf/')); ?>/' + id +
                                    '/' + datePicker +
                                    '" data-size="md-pdf"  data-ajax-popup="true" class="btn btn-primary" data-title="<?php echo e(__('Employee Payslip')); ?>">' +
                                    '<?php echo e(__('Payslip')); ?>' + '</a> ';
                            }

                            if (status == "UnPaid" && data != 0) {
                                clickToPaid = '<a href="<?php echo e(url('payslip/paysalary/')); ?>/' + id +
                                    '/' + datePicker + '"  class="view-btn primary-bg btn-sm">' +
                                    '<?php echo e(__('Click To Pay')); ?>' + '</a>  ';
                            }

                            if (data != 0) {
                                view =
                                    '<a href="#" data-url="<?php echo e(url('payslip/showemployee/')); ?>/' +
                                    payslip_id +
                                    '"  data-ajax-popup="true" class="view-btn gray-bg" data-title="<?php echo e(__('View Employee Detail')); ?>">' +
                                    '<?php echo e(__('View')); ?>' + '</a>';
                            }

                            if (data != 0 && status == "UnPaid") {
                                edit =
                                    '<a href="#" data-url="<?php echo e(url('payslip/editemployee/')); ?>/' +
                                    payslip_id +
                                    '"  data-ajax-popup="true" class="view-btn blue-bg" data-title="<?php echo e(__('Edit Employee salary')); ?>">' +
                                    '<?php echo e(__('Edit')); ?>' + '</a>';
                            }

                            var url = '<?php echo e(route('payslip.delete', ':id')); ?>';
                            url = url.replace(':id', payslip_id);

                            <?php if(\Auth::user()->type != 'employee'): ?>
                                    if (valueOfElement[7] != 0) {
                                    var deleted = '<a href="#"  data-url="' + url +
                                        '" class="payslip_delete view-btn btn btn-danger ms-1 btn-sm"  >' +
                                        '<?php echo e(__('Delete')); ?>' + '</a>';
                                }
                                <?php else: ?>
                                var deleted = '';
                                <?php endif; ?>

                                return view + payslip + clickToPaid + edit + deleted + form;
                        }

                        console.clear();
                        var tr = '';
                        // <tr><td class="dataTables-empty" colspan="1">No entries found</td></tr>
                        if (data.length > 0) {
                            console.log(data);
                            $.each(data, function (indexInArray, valueOfElement) {
                                var status =
                                    '<div class="badge bg-danger p-2 px-3 rounded status-badde4"><a href="#" class="text-white">' +
                                    valueOfElement[6] + '</a></div>';
                                if (valueOfElement[6] == 'Paid') {
                                    var status =
                                        '<div class="badge bg-success p-2 px-3 rounded status-badde4"><a href="#" class="text-white">' +
                                        valueOfElement[6] + '</a></div>';
                                }

                                var id = valueOfElement[0];
                                var employee_id = valueOfElement[1];
                                var payslip_id = valueOfElement[7];

                                if (valueOfElement[7] != 0) {
                                    var payslip =
                                        '<a href="#" data-url="<?php echo e(url('payslip/pdf/')); ?>/' +
                                        id +
                                        '/' + datePicker +
                                        '" data-size="lg"  data-ajax-popup="true" class=" btn-sm btn btn-warning" data-title="<?php echo e(__('Employee Payslip')); ?>">' +
                                        '<?php echo e(__('Payslip')); ?>' + '</a> ';
                                }
                                if (valueOfElement[6] == "UnPaid" && valueOfElement[7] != 0) {
                                    var clickToPaid =
                                        '<a href="<?php echo e(url('payslip/paysalary/')); ?>/' + id +
                                        '/' + datePicker + '"  class="btn-sm btn btn-primary">' +
                                        '<?php echo e(__('Click To Pay')); ?>' + '</a>  ';
                                } else {
                                    var clickToPaid = '';
                                }

                                if (valueOfElement[7] != 0 && valueOfElement[6] == "UnPaid") {
                                    var edit =
                                        '<a href="#" data-url="<?php echo e(url('payslip/editemployee/')); ?>/' +
                                        payslip_id +
                                        '"  data-ajax-popup="true" class="btn-sm btn btn-info" data-title="<?php echo e(__('Edit Employee salary')); ?>">' +
                                        '<?php echo e(__('Edit')); ?>' + '</a>';
                                } else {
                                    var edit = '';
                                }


                                var url = '<?php echo e(route('payslip.delete', ':id')); ?>';
                                url = url.replace(':id', payslip_id);

                                <?php if(\Auth::user()->type != 'employee'): ?>
                                if (valueOfElement[7] != 0) {
                                    var deleted = '<a href="#"  data-url="' + url +
                                        '" class="payslip_delete view-btn btn btn-danger ms-1 btn-sm"  >' +
                                        '<?php echo e(__('Delete')); ?>' + '</a>';
                                }
                                <?php else: ?> 
                                 var deleted ='';
                                <?php endif; ?>
                                var url_employee = valueOfElement['url'];

                                tr +=
                                    '<tr> ' +
                                    '<td> <a class="btn btn-outline-primary" href="' + url_employee + '">' +
                                    valueOfElement[1] + '</a></td> ' +
                                    '<td>' + valueOfElement[2] + '</td> ' +
                                    '<td>' + valueOfElement[3] + '</td>' +
                                    '<td>' + valueOfElement[4] + '</td>' +
                                    '<td>' + valueOfElement[5] + '</td>' +
                                    '<td>' + status + '</td>' +
                                    '<td>' + payslip + clickToPaid + edit + deleted + '</td>' +
                                    '</tr>';
                            });
                        } else {
                            var colspan = $('#pc-dt-render-column-cells thead tr th').length;
                            var tr = '<tr><td class="dataTables-empty" colspan="' + colspan +
                                '"><?php echo e(__('No entries found')); ?></td></tr>';
                        }

                        $('#pc-dt-render-column-cells tbody').html(tr);
                        var table = document.querySelector("#pc-dt-render-column-cells");
                        var datatable = new simpleDatatables.DataTable(table);

                        // if (data.length > 0) {
                        //     var dataTable = new simpleDatatables.DataTable(
                        //         "#pc-dt-render-column-cells", {
                        //             data: datatable_data,
                        //             perPage: 25,
                        //             columns: [{
                        //                     select: 0,
                        //                     hidden: true
                        //                 },
                        //                 {
                        //                     select: 6,
                        //                     render: renderstatus
                        //                 },
                        //                 {
                        //                     select: 7,
                        //                     render: renderButton
                        //                 }
                        //             ]
                        //         }
                        //     );


                        //     $('[data-toggle="tooltip"]').tooltip();

                        //     if (!(data)) {
                        //         show_toastr('error',
                        //             'Employee payslip not found ! please generate first.',
                        //             'error');
                        //     }
                        // } else {

                        //     var dataTable = new simpleDatatables.DataTable(
                        //         "#pc-dt-render-column-cells", {
                        //             data: ''
                        //         }
                        //     );

                        // }
                        // dataTable.on("datatable.init");


                    },
                    error: function (data) {
                        console.log("Error");
                    }

                });

            }

            $(document).on("change", ".month_date,.year_date", function () {
                callback();
            });

            //bulkpayment Click
            $(document).on("click", "#bulk_payment", function () {
                var month = $(".month_date").val();
                var year = $(".year_date").val();
                var datePicker = year + '_' + month;


            });
            $(document).on('click', '#bulk_payment',
                'a[data-ajax-popup="true"], button[data-ajax-popup="true"], div[data-ajax-popup="true"]',
                function () {
                    var month = $(".month_date").val();
                    var year = $(".year_date").val();
                    var datePicker = year + '-' + month;

                    var title = 'Bulk Payment';
                    var size = 'md';
                    var url = 'payslip/bulk_pay_create/' + datePicker;

                    // return false;

                    $("#commonModal .modal-title").html(title);
                    $("#commonModal .modal-dialog").addClass('modal-' + size);
                    $.ajax({
                        url: url,
                        success: function (data) {

                            // alert(data);
                            // return false;
                            if (data.length) {
                                $('#commonModal .modal-body').html(data);
                                $("#commonModal").modal('show');
                                // common_bind();
                            } else {
                                show_toastr('Error', 'Permission denied.');
                                $("#commonModal").modal('hide');
                            }
                        },
                        error: function (data) {
                            data = data.responseJSON;
                            show_toastr('Error', data.error);
                        }
                    });
                });

            $(document).on("click", ".payslip_delete", function () {
                var confirmation = confirm("are you sure you want to delete this payslip?");
                var url = $(this).data('url');


                if (confirmation) {
                    $.ajax({
                        type: "GET",
                        url: url,
                        dataType: "JSON",
                        success: function (data) {
                            console.log(data);


                            // show_toastr(data.status, data.msg, 'data.status');
                            show_toastr('Success', 'Payslip Deleted Successfully', 'success');


                            setTimeout(function() {
                                location.reload();
                            }, 800)


                        },

                    });

                }
            });
        });

    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\hrm\resources\views/payslip/index.blade.php ENDPATH**/ ?>