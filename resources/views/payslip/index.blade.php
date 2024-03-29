@extends('layouts.admin')

@section('page-title')
    {{ __('Payslip') }}
@endsection

@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
    <li class="breadcrumb-item">{{ __('payslip') }}</li>
@endsection


@section('content')
    <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mt-4">

        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5>{{ __('Payslip') }}</h5>
                    </div>
            </div>

            <div class="card-body">
                {{ Form::open(['route' => ['payslip.store'], 'method' => 'POST', 'id' => 'payslip_form']) }}
                <div class="d-flex align-items-center justify-content-end">

                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('month', __('Select Month'), ['class' => 'form-label']) }}
                            {{ Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month']) }}

                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('year', __('Select Year'), ['class' => 'form-label']) }}
                            {{ Form::select('year', $year, null, ['class' => 'form-control select']) }}

                        </div>
                    </div>
                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="#" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form').submit(); return false;"
                           data-bs-toggle="tooltip" title="{{ __('payslip') }}"
                           data-original-title="{{ __('payslip') }}">
                            {{ __('Generate Payslip') }}
                        </a>


                    </div>
                </div>
            </div>
            {{ Form::close() }}
        </div>

    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5>{{ __('Payroll Sheet') }}</h5>
                    </div>
                    <div class="card-body">
                {{ Form::open(['route' => ['payslip.export'], 'method' => 'POST', 'id' => 'payslip_form1']) }}
                <div class="d-flex align-items-center justify-content-end">


                <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('month', __('Select Month'), ['class' => 'form-label']) }}
                            {{ Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month']) }}

                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('year', __('Select Year'), ['class' => 'form-label']) }}
                            {{ Form::select('year', $year, null, ['class' => 'form-control select']) }}

                        </div>
                    </div>


                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="export" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form1').submit(); return false;"
                           data-bs-toggle="tooltip" title="{{ __('Payroll Sheet') }}"
                           data-original-title="{{ __('Payroll Sheet') }}">
                            {{ __('Export Payroll Sheet') }}
                        </a>


                    </div>
                </div>
            </div>
            {{ Form::close() }}

            </div>    
        </div>
    </div>    


    <div class="col-12">
        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5>{{ __('Generate WPS') }}</h5>
                    </div>
                    <div class="card-body">
                {{ Form::open(['route' => ['payslip.wps'], 'method' => 'POST', 'id' => 'payslip_form2']) }}
                <div class="d-flex align-items-center justify-content-end">


                <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('month', __('Select Month'), ['class' => 'form-label']) }}
                            {{ Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month']) }}

                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('year', __('Select Year'), ['class' => 'form-label']) }}
                            {{ Form::select('year', $year, null, ['class' => 'form-control select', 'id' => 'year']) }}

                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('format', __('WPS Format'), ['class' => 'form-label']) }}
                            {{ Form::select('format', $format, null, ['class' => 'form-control select', 'id' => 'format']) }}

                        </div>
                    </div>
                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="#" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form2').submit(); return false;"
                           data-bs-toggle="tooltip" title="{{ __('WPS') }}"
                           data-original-title="{{ __('WPS') }}">
                            {{ __('Export WPS') }}
                        </a>
                        


                    </div>
                </div>
            </div>
            {{ Form::close() }}

            </div>    
        </div>
    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-header">
                    <div class="d-flex align-items-center justify-content-start">
                        <h5>{{ __('Generate Non WPS') }}</h5>
                    </div>
                    <div class="card-body">
                {{ Form::open(['route' => ['payslip.nonwps'], 'method' => 'POST', 'id' => 'payslip_form3']) }}
                <div class="d-flex align-items-center justify-content-end">


                <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('month', __('Select Month'), ['class' => 'form-label']) }}
                            {{ Form::select('month', $month, null, ['class' => 'form-control select', 'id' => 'month']) }}

                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('year', __('Select Year'), ['class' => 'form-label']) }}
                            {{ Form::select('year', $year, null, ['class' => 'form-control select', 'id' => 'year']) }}

                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                        <div class="btn-box">
                            {{ Form::label('format1', __('Non WPS Format'), ['class' => 'form-label']) }}
                            {{ Form::select('format1', $format1, null, ['class' => 'form-control select', 'id' => 'format']) }}

                        </div>
                    </div>
                    <div class="col-auto float-end ms-2 mt-4">
                        <a href="#" class="btn  btn-primary"
                           onclick="document.getElementById('payslip_form3').submit(); return false;"
                           data-bs-toggle="tooltip" title="{{ __('NON WPS') }}"
                           data-original-title="{{ __('NON WPS') }}">
                            {{ __('Export Non WPS') }}
                        </a>
                        


                    </div>
                </div>
            </div>
            {{ Form::close() }}

            </div>    
        </div>
    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <form>
                    {{-- <div class="d-flex justify-content-between w-100"> --}}
                    <div class="d-flex align-items-center justify-content-start">
                        <h5>{{ __('Find Employee Payslip') }}</h5>
                    </div>


                    <div class="d-flex align-items-center justify-content-end">

                        <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                            <div class="btn-box">

                                {{--                                <select class="form-control month_date " name="year" tabindex="-1" aria-hidden="true">--}}
                                {{--                                    <option value="--">--</option>--}}
                                {{--                                    @foreach ($month as $k => $mon)--}}
                                {{--                                        <option value="{{ $k }}">{{ $mon }}</option>--}}
                                {{--                                    @endforeach--}}
                                {{--                                </select>--}}
                                
                                <select class="form-control month_date " name="year" tabindex="-1" aria-hidden="true">
                                    <option value="--">--</option>
                                    
                                    @foreach($month as $k=>$mon)

                                        @php
                                            $selected = ((date('m')-1) == $k) ? 'selected' :'';
                                        @endphp
                                        <option value="{{$k}}" {{ $selected }} >{{$mon}}</option>
                                    @endforeach


                                </select>


                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-6 col-sm-12 col-12 mx-2">
                            <div class="btn-box">

                                {{ Form::select('year', $year, null, ['class' => 'form-control year_date ']) }}

                            </div>
                        </div>
                        <!-- <div class="col-auto float-end ">
                            @can('Create Pay Slip')
                                <input type="button" value="{{ __('Bulk Payment') }}" class="btn btn-primary"
                                       id="bulk_payment">
                            @endcan


                        </div> -->
                    </div>

                    {{-- <div class="float-right col-2">
                            <select class="form-control month_date " name="year" tabindex="-1" aria-hidden="true">
                                <option value="--">--</option>
                                @foreach ($month as $k => $mon)
                                    <option value="{{ $k }}">{{ $mon }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="float-right col-2">
                            {{ Form::select('year', $year, null, ['class' => 'form-control year_date ']) }}
                        </div>
                        @can('Create Pay Slip')
                            <input type="button" value="{{ __('Bulk Payment') }}" class="btn btn-primary" id="bulk_payment">
                        @endcan --}}
                    {{-- </div> --}}
                </form>
                
            </div>
            <div class="card-body">
                <div class="table-responsive">

                    <table class="table" id="pc-dt-render-column-cells">                       
                        <thead>
                        <tr>
                            {{-- <th>{{ __('Id') }}</th> --}}
                            <th>{{ __('Employee Id') }}</th>
                            <th>{{ __('Name') }}</th>
                            <th>{{ __('Payroll Type') }}</th>
                            <th>{{ __('Salary') }}</th>
                            <th>{{ __('Net Salary') }}</th>
                            <th>{{ __('Status') }}</th>
                            <th>{{ __('Action') }}</th>
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
@endsection

@push('script-page')
    <script>


        $(document).ready(function () {
            callback();

            function callback() {
                var month = $(".month_date").val();
                var year = $(".year_date").val();
                console.log("log1");
                if (month == '') {
                    month = '{{date('m', strtotime('last month'))}}';
                    year = '{{date('Y')}}';
                }

                var datePicker = year + '-' + month;

                $.ajax({
                    url: '{{ route('payslip.search_json') }}',
                    type: 'POST',
                    data: {
                        "datePicker": datePicker,
                        "_token": "{{ csrf_token() }}",
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
                                    '<a href="#" data-url="{{ url('payslip/pdf/') }}/' + id +
                                    '/' + datePicker +
                                    '" data-size="md-pdf"  data-ajax-popup="true" class="btn btn-primary" data-title="{{ __('Employee Payslip') }}">' +
                                    '{{ __('Payslip') }}' + '</a> ';
                            }

                            if (status == "UnPaid" && data != 0) {
                                clickToPaid = '<a href="{{ url('payslip/paysalary/') }}/' + id +
                                    '/' + datePicker + '"  class="view-btn primary-bg btn-sm">' +
                                    '{{ __('Click To Pay') }}' + '</a>  ';
                            }

                            if (data != 0) {
                                view =
                                    '<a href="#" data-url="{{ url('payslip/showemployee/') }}/' +
                                    payslip_id +
                                    '"  data-ajax-popup="true" class="view-btn gray-bg" data-title="{{ __('View Employee Detail') }}">' +
                                    '{{ __('View') }}' + '</a>';
                            }

                            if (data != 0 && status == "UnPaid") {
                                edit =
                                    '<a href="#" data-url="{{ url('payslip/editemployee/') }}/' +
                                    payslip_id +
                                    '"  data-ajax-popup="true" class="view-btn blue-bg" data-title="{{ __('Edit Employee salary') }}">' +
                                    '{{ __('Edit') }}' + '</a>';
                            }

                            var url = '{{ route('payslip.delete', ':id') }}';
                            url = url.replace(':id', payslip_id);

                            @if (\Auth::user()->type != 'employee')
                                    if (valueOfElement[7] != 0) {
                                    var deleted = '<a href="#"  data-url="' + url +
                                        '" class="payslip_delete view-btn btn btn-danger ms-1 btn-sm"  >' +
                                        '{{ __('Delete') }}' + '</a>';
                                }
                                @else
                                var deleted = '';
                                @endif

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
                                        '<a href="#" data-url="{{ url('payslip/pdf/') }}/' +
                                        id +
                                        '/' + datePicker +
                                        '" data-size="lg"  data-ajax-popup="true" class=" btn-sm btn btn-warning" data-title="{{ __('Employee Payslip') }}">' +
                                        '{{ __('Payslip') }}' + '</a> ';
                                }
                                if (valueOfElement[6] == "UnPaid" && valueOfElement[7] != 0) {
                                    var clickToPaid =
                                        '<a href="{{ url('payslip/paysalary/') }}/' + id +
                                        '/' + datePicker + '"  class="btn-sm btn btn-primary">' +
                                        '{{ __('Click To Pay') }}' + '</a>  ';
                                } else {
                                    var clickToPaid = '';
                                }

                                if (valueOfElement[7] != 0 && valueOfElement[6] == "UnPaid") {
                                    var edit =
                                        '<a href="#" data-url="{{ url('payslip/editemployee/') }}/' +
                                        payslip_id +
                                        '"  data-ajax-popup="true" class="btn-sm btn btn-info" data-title="{{ __('Edit Employee salary') }}">' +
                                        '{{ __('Edit') }}' + '</a>';
                                } else {
                                    var edit = '';
                                }


                                var url = '{{ route('payslip.delete', ':id') }}';
                                url = url.replace(':id', payslip_id);

                                @if (\Auth::user()->type != 'employee')
                                if (valueOfElement[7] != 0) {
                                    var deleted = '<a href="#"  data-url="' + url +
                                        '" class="payslip_delete view-btn btn btn-danger ms-1 btn-sm"  >' +
                                        '{{ __('Delete') }}' + '</a>';
                                }
                                @else 
                                 var deleted ='';
                                @endif
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
                                '">{{ __('No entries found') }}</td></tr>';
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
@endpush
