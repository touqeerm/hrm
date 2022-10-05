{{-- @extends('layouts.admin')

@section('page-title')
    {{ __('Manage Leave') }}
@endsection

@section('action-button')
    @can('Create Leave')
        <a href="#" data-url="{{ route('leave.create') }}"
            class="action-btn btn-primary me-1 btn btn-sm d-inline-flex align-items-center" data-ajax-popup="true"
            data-bs-toggle="tooltip" data-bs-placement="bottom" title="{{ __('Create') }}"
            data-title="{{ __('Create New Leave') }}">
            <i class="ti ti-plus"></i>
        </a>
    @endcan
    <a href="{{ route('leave.export') }}" class="action-btn btn-primary me-1 btn btn-sm d-inline-flex align-items-center">
        <i class="ti ti-file-export"></i>
    </a>
@endsection

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header card-body table-border-style">
                    <h5></h5>
                    <div class="table-responsive">
                        <table class="table" id="pc-dt-simple">
                            <thead>
                                <tr>
                                    @if (\Auth::user()->type != 'employee')
                                        <th>{{ __('Employee') }}</th>
                                    @endif
                                    <th>{{ __('Leave Type') }}</th>
                                    <th>{{ __('Applied On') }}</th>
                                    <th>{{ __('Start Date') }}</th>
                                    <th>{{ __('End Date') }}</th>
                                    <th>{{ __('Total Days') }}</th>
                                    <th>{{ __('Leave Reason') }}</th>
                                    <th>{{ __('status') }}</th>
                                    <th>{{ __('Action') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($leaves as $leave)
                                    <tr>
                                        @if (\Auth::user()->type != 'employee')
                                            <td>{{ !empty(\Auth::user()->getEmployee($leave->employee_id))? \Auth::user()->getEmployee($leave->employee_id)->name: '' }}
                                            </td>
                                        @endif
                                        <td>{{ !empty(\Auth::user()->getLeaveType($leave->leave_type_id))? \Auth::user()->getLeaveType($leave->leave_type_id)->title: '' }}
                                        </td>
                                        <td>{{ \Auth::user()->dateFormat($leave->applied_on) }}</td>
                                        <td>{{ \Auth::user()->dateFormat($leave->start_date) }}</td>
                                        <td>{{ \Auth::user()->dateFormat($leave->end_date) }}</td>
                                        @php
                                            $startDate = new \DateTime($leave->start_date);
                                            $endDate = new \DateTime($leave->end_date);
                                            $total_leave_days = !empty($startDate->diff($endDate)) ? $startDate->diff($endDate)->days : 0;
                                        @endphp
                                        <td>{{ $total_leave_days }}</td>
                                        <td>{{ $leave->leave_reason }}</td>
                                        <td>
                                            @if ($leave->status == 'Pending')
                                                <div class="badge badge-pill badge-warning status-badge5">{{ $leave->status }}</div>
                                            @elseif($leave->status == 'Approved')
                                                <div class="badge badge-pill badge-success status-badge5">{{ $leave->status }}</div>
                                            @else($leave->status=="Reject")
                                                <div class="badge badge-pill badge-danger status-badge5">{{ $leave->status }}</div>
                                            @endif
                                        </td>
                                        <td class="d-flex">
                                            @if (\Auth::user()->type == 'employee')
                                                @if ($leave->status == 'Pending')
                                                    @can('Edit Leave')
                                                        <a href="#" data-url="{{ URL::to('leave/' . $leave->id . '/edit') }}"
                                                            data-size="lg" data-ajax-popup="true"
                                                            data-title="{{ __('Edit Leave') }}"
                                                            class="action-btn btn-primary me-1 btn btn-sm d-inline-flex align-items-center"
                                                            data-bs-toggle="tooltip" data-bs-placement="bottom"><i
                                                                class="ti ti-pencil"></i></a>
                                                    @endcan
                                                @endif
                                            @else
                                                <a href="#" data-url="{{ URL::to('leave/' . $leave->id . '/action') }}"
                                                    data-size="lg" data-ajax-popup="true"
                                                    data-title="{{ __('Leave Action') }}"
                                                    class="action-btn btn-success me-1 btn btn-sm d-inline-flex align-items-center"
                                                    data-bs-toggle="tooltip" data-bs-placement="bottom"
                                                    title="{{ __('Leave Action') }}"><i class="ti ti-player-play"></i>
                                                </a>
                                                @can('Edit Leave')
                                                    <a href="#" data-url="{{ URL::to('leave/' . $leave->id . '/edit') }}"
                                                        data-size="lg" data-ajax-popup="true"
                                                        data-title="{{ __('Edit Leave') }}"
                                                        class="action-btn btn-primary me-1 btn btn-sm d-inline-flex align-items-center"
                                                        title="{{ __('Edit') }}"><i class="ti ti-pencil"></i></a>
                                                @endcan
                                            @endif
                                            @can('Delete Leave')
                                            {!! Form::open(['method' => 'DELETE', 'route' => ['leave.destroy', $leave->id], 'id' => 'delete-form-' . $leave->id]) !!}
                                            <a href="#!"
                                                class="action-btn btn-danger me-1 btn btn-sm d-inline-flex align-items-center show_confirm"
                                                data-bs-toggle="tooltip" data-bs-placement="bottom"
                                                title="{{ __('Delete') }}">
                                                <i class="ti ti-trash"></i></a>
                                            {!! Form::close() !!}

                                            @endcan
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script-page')
    <script>
        $(document).on('change', '#employee_id', function() {
            var employee_id = $(this).val();

            $.ajax({
                url: '{{ route('leave.jsoncount') }}',
                type: 'POST',
                data: {
                    "employee_id": employee_id,
                    "_token": "{{ csrf_token() }}",
                },
                success: function(data) {

                    $('#leave_type_id').empty();
                    $('#leave_type_id').append(
                        '<option value="">{{ __('Select Leave Type') }}</option>');

                    $.each(data, function(key, value) {

                        if (value.total_leave >= value.days) {
                            $('#leave_type_id').append('<option value="' + value.id +
                                '" disabled>' + value.title + '&nbsp(' + value.total_leave +
                                '/' + value.days + ')</option>');
                        } else {
                            $('#leave_type_id').append('<option value="' + value.id + '">' +
                                value.title + '&nbsp(' + value.total_leave + '/' + value
                                .days + ')</option>');
                        }
                    });

                }
            });
        });
    </script>
@endpush --}}

@extends('layouts.admin')

@section('page-title')
    {{ __('Manage Leave') }}
@endsection


@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
    <li class="breadcrumb-item">{{ __('Leave ') }}</li>
@endsection

@section('action-button')
    <a href="{{ route('leave.export') }}" class="btn btn-sm btn-primary" data-bs-toggle="tooltip"
        data-bs-original-title="{{ __('Export') }}">
        <i class="ti ti-file-export"></i>
    </a>
    @can('Create Leave')
        <a href="#" data-url="{{ route('leave.file.import') }}" data-ajax-popup="true" data-title="{{ __('Import  Leave CSV File') }}" 
            data-bs-toggle="tooltip" title="" class="btn btn-sm btn-primary" data-bs-original-title="{{ __('Import') }}">
            <i class="ti ti-file"></i>
        </a>
        <a href="#" data-url="{{ route('leave.create') }}" data-ajax-popup="true" data-title="{{ __('Create New Leave') }}"
            data-size="lg" data-bs-toggle="tooltip" title="" class="btn btn-sm btn-primary"
            data-bs-original-title="{{ __('Create') }}">
            <i class="ti ti-plus"></i>
        </a>

    @endcan
@endsection

@section('content')
    <div class="col-xl-12">
        <div class="card">
            <div class="card-header card-body table-border-style">
                {{-- <h5> </h5> --}}
                <div class="table-responsive">
                    <table class="table" id="pc-dt-simple">
                        <thead>
                            <tr>
                                @if (\Auth::user()->type != 'employee')
                                    <th>{{ __('Employee') }}</th>
                                @endif
                                <th>{{ __('Leave Type') }}</th>
                                <th>{{ __('Applied On') }}</th>
                                <th>{{ __('Start Date') }}</th>
                                <th>{{ __('End Date') }}</th>
                                <th>{{ __('Total Days') }}</th>
                                <th>{{ __('Leave Reason') }}</th>
                                <th>{{ __('status') }}</th>
                                <th width="200px">{{ __('Action') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($leaves as $leave)
                                <tr>
                                    @if (\Auth::user()->type != 'employee')
                                        <td>{{ !empty(\Auth::user()->getEmployee($leave->employee_id)) ? \Auth::user()->getEmployee($leave->employee_id)->name : '' }}
                                        </td>
                                    @endif
                                    <td>{{ !empty(\Auth::user()->getLeaveType($leave->leave_type_id)) ? \Auth::user()->getLeaveType($leave->leave_type_id)->title : '' }}
                                    </td>
                                    <td>{{ \Auth::user()->dateFormat($leave->applied_on) }}</td>
                                    <td>{{ \Auth::user()->dateFormat($leave->start_date) }}</td>
                                    <td>{{ \Auth::user()->dateFormat($leave->end_date) }}</td>
                                    @php
                                        $startDate = new \DateTime($leave->start_date);
                                        $endDate = new \DateTime($leave->end_date);
                                        $total_leave_days = !empty($startDate->diff($endDate)) ? $startDate->diff($endDate)->days : 0;
                                    @endphp
                                    <td>{{ $total_leave_days }}</td>
                                    <td>{{ $leave->leave_reason }}</td>
                                    <td>
                                        @if ($leave->status == 'Pending')
                                            <div class="badge bg-warning p-2 px-3 rounded status-badge5">{{ $leave->status }}</div>
                                        @elseif($leave->status == 'Approved')
                                            <div class="badge bg-success p-2 px-3 rounded status-badge5">{{ $leave->status }}</div>
                                        @else($leave->status == "Reject")
                                            <div class="badge bg-danger p-2 px-3 rounded status-badge5">{{ $leave->status }}</div>
                                        @endif
                                    </td>

                                    <td class="Action">

                                        <span>
                                            @if (\Auth::user()->type == 'employee')
                                                @if ($leave->status == 'Pending')
                                                    @can('Edit Leave')
                                                        <div class="action-btn bg-info ms-2">
                                                            <a href="#" class="mx-3 btn btn-sm  align-items-center"
                                                                data-size="lg"
                                                                data-url="{{ URL::to('leave/' . $leave->id . '/edit') }}"
                                                                data-ajax-popup="true" data-size="md" data-bs-toggle="tooltip"
                                                                title="" data-title="{{ __('Edit Leave') }}"
                                                                data-bs-original-title="{{ __('Edit') }}">
                                                                <i class="ti ti-pencil text-white"></i>
                                                            </a>
                                                        </div>
                                                    @endcan
                                                @endif
                                            @else
                                                <div class="action-btn bg-success ms-2">
                                                    <a href="#" class="mx-3 btn btn-sm  align-items-center" data-size="lg"
                                                        data-url="{{ URL::to('leave/' . $leave->id . '/action') }}"
                                                        data-ajax-popup="true" data-size="md" data-bs-toggle="tooltip"
                                                        title="" data-title="{{ __('Leave Action') }}"
                                                        data-bs-original-title="{{ __('Manage Leave') }}">
                                                        <i class="ti ti-caret-right text-white"></i>
                                                    </a>
                                                </div>
                                                @can('Edit Leave')
                                                    <div class="action-btn bg-info ms-2">
                                                        <a href="#" class="mx-3 btn btn-sm  align-items-center" data-size="lg"
                                                            data-url="{{ URL::to('leave/' . $leave->id . '/edit') }}"
                                                            data-ajax-popup="true" data-size="md" data-bs-toggle="tooltip"
                                                            title="" data-title="{{ __('Edit Leave') }}"
                                                            data-bs-original-title="{{ __('Edit') }}">
                                                            <i class="ti ti-pencil text-white"></i>
                                                        </a>
                                                    </div>
                                                @endcan
                                            @endif

                                            @can('Delete Leave')
                                                <div class="action-btn bg-danger ms-2">
                                                    {!! Form::open(['method' => 'DELETE', 'route' => ['leave.destroy', $leave->id], 'id' => 'delete-form-' . $leave->id]) !!}
                                                    <a href="#" class="mx-3 btn btn-sm  align-items-center bs-pass-para"
                                                        data-bs-toggle="tooltip" title="" data-bs-original-title="Delete"
                                                        aria-label="Delete"><i
                                                            class="ti ti-trash text-white text-white"></i></a>
                                                    </form>
                                                </div>
                                            @endcan
                                        </span>

                                    </td>
                                </tr>
                            @endforeach



                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
@endsection

@push('script-page')
    <script>
        $(document).on('change', '#employee_id', function() {
            var employee_id = $(this).val();

            $.ajax({
                url: '{{ route('leave.jsoncount') }}',
                type: 'POST',
                data: {
                    "employee_id": employee_id,
                    "_token": "{{ csrf_token() }}",
                },
                success: function(data) {

                    $('#leave_type_id').empty();
                    $('#leave_type_id').append(
                        '<option value="">{{ __('Select Leave Type') }}</option>');

                    $.each(data, function(key, value) {

                        if (value.total_leave >= value.days) {
                            $('#leave_type_id').append('<option value="' + value.id +
                                '" disabled>' + value.title + '&nbsp(' + value.total_leave +
                                '/' + value.days + ')</option>');
                        } else {
                            $('#leave_type_id').append('<option value="' + value.id + '">' +
                                value.title + '&nbsp(' + value.total_leave + '/' + value
                                .days + ')</option>');
                        }
                    });

                }
            });
        });
    </script>
@endpush
