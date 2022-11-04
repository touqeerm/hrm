<?php

namespace App\Exports;

use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;
use App\Models\Employee;

class AlAnsariWPSExport implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    //     return PaySlip::all();
    // }
    protected $salary_month;
    protected $sino=0;

    function __construct($salary_month) {
        $this->salary_month = $salary_month;
    }
    public function collection()
    {
        //$this->salary_month='2022-10';
        //dd($this->salary_month);
        //return PaySlip::all();
        //return PaySlip::where('salary_month',$this->salary_month)->get()([ 'employee_id', 'net_payble', 'salary_month', 'status', 'basic_salary', 'allowance', 'commission', 'loan', 'saturation_deduction', 'other_payment', 'overtime']);
        //return PaySlip::where('salary_month',$this->salary_month)->get([ 'employee_id', 'net_payble', 'salary_month', 'status', 'basic_salary', 'allowance', 'commission', 'loan', 'saturation_deduction', 'other_payment', 'overtime']);
        return PaySlip::where('salary_month',$this->salary_month)->get();
    }

    public function headings(): array
    {
        return
        [
        ['SALARY SHEET'],
        [
            "EDR",
            "Employee ID",
            "Agent ID/ BANK NAME",
            "Account Number/IBAN",
            "Pay Start Date",
            "Pay End Date",
            "Days",
            "Fixed",
            "Variable",
            "Leave",
            "Name"
        ]
        ];
    }

    public function map ($payroll): array
    {
        //$sino=0;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        $payslip_link='<a href="http://localhost/hrm/payslip">Click for Details</a>';
        //$payslip->allowance = Employee::allowance($employee->id);
        //$payslip->gross_salary = Employee::get_gross_salary();
        //$basic = Employee::where('id',$payroll->employee_id)->pluck('name')->first();
        return[
            "EDR",
            $emp->user_id,
            $emp->bank_name,
            $emp->account_number,
            "Pay Start Date",
            "Pay End Date",
            $payroll->working_days,
            "Fixed",
            "Variable",
            $payroll->leave_days,
            $emp->name
        ];
    }
}
