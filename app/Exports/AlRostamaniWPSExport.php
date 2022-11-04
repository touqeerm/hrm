<?php

namespace App\Exports;

use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;
use App\Models\Employee;
use App\Models\Utility;

class AlRostamaniWPSExport implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
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
            "SALARY MONTH",
            "COMPANY MOLID",
            "AGENT ROUTING CODE",
            "ACCOUNT NO",
            "EMP NAME",
            "EMP MOLID",
            "NO OF LEAVE DAYS",
            "FIX AMOUNT",
            "VAR AMT",
            "TOTAL",
            "REMARKS",
            "IBAN NUMBER",
            "User Name"
        ]
        ];
    }

    public function map ($payroll): array
    {
        //$sino=0;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        //$payslip_link='<a href="http://localhost/hrm/payslip">Click for Details</a>';
        //$payslip->allowance = Employee::allowance($employee->id);
        $salmon=explode('-',$this->salary_month);
        $year=$salmon[0];
        $month=$salmon[1];
        $settings = Utility::settings();
        $company_molid = $settings['company_name'];
        //$payslip->gross_salary = Employee::get_gross_salary();
        //$basic = Employee::where('id',$payroll->employee_id)->pluck('name')->first();
        return[
            $month,
            $company_molid,
            $emp->agent_code,
            $emp->account_number,
            $emp->name,
            $emp->eid,
            $payroll->leave_days,
            $payroll->net_payble,
            $payroll->deductions,
            $payroll->net_payble,
            "REMARKS",
            $payroll->bank_identifier_code,
            $emp->name
        ];
    }
}
