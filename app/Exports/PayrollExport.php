<?php

namespace App\Exports;
use App\Models\Employee;
use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;

class PayrollExport implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
{
    protected $salary_month;

    function __construct($salary_month) {
        $this->id = $salary_month;
    }
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $this->salary_month='2022-10';
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
            "SI No",
            "NAME",
            "EMP NO",
            "BASIC",
            "ALLOWANCES",
            "OTHER",
            "GROSS SALARY",
            "DEDUCTIONS",
            "NET SALARY",
            "YTD SALARY",
            "WORKING DAYS",
            "LEAVE DAYS",
            "BANK",
            "AGENT CODE",
            "ACCOUNT/IBAN",
            "GRATUITY",
            "PASSPORT #",
            "EID #",
            "WORK PERMIT #",
            "PERSON CODE",
            "PROFILE LINK"
        ]
        ];
    }

    public function map ($payroll): array
    {
        $sino=0;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        $payslip_link='<a href="http://localhost/hrm/payslip">Click for Details</a>';
        $payslip->allowance = Employee::allowance($employee->id);
        //$payslip->gross_salary = Employee::get_gross_salary();
        //$basic = Employee::where('id',$payroll->employee_id)->pluck('name')->first();
        return[
            $sino++,
            $emp->name,
            $payroll->employee_id,
            $payroll->basic_salary,
            $payslip->allowance,
            $payroll->other_payment,
            $payroll->gross_salary,
            $payroll->deductions,
            $payroll->net_payble,
            "YTD SALARY",
            "WORKING DAYS",
            "LEAVE DAYS",
            $emp->bank_name,
            $emp->agent_code,
            $emp->account_number,
            "GRATUITY",
            $emp->passport,
            $emp->eid,
            $emp->work_permit,
            $emp->person_code,
            $payslip_link,
        ];
    }

}
