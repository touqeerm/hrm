<?php

namespace App\Exports;

use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;

class LuluWPSExport implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    //     return PaySlip::all();
    // }
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
        ['COMPANY NAME:'],
        [
            "Sl.No",
            "NAME OF THE EMPLOYEE",
            "WORK PERMIT NO (8 DIGIT NO)",
            "PERSONAL NO (14 DIGIT NO)",
            "BANK NAME",
            "FAB CARD NO(16 DIGITS) OR IBAN FOR PERSONAL ACCOUNT (23 DIGITS) OR C3-RAK (15 DIGIT)",
            "NO OF DAYS ABSENT",
            "Fixed Portion",
            "Variable Portion ",
            "Total Payment",
            ]
        ];
    }

    public function map ($payroll): array
    {
        $sino=0;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        //$payslip_link='<a href="http://localhost/hrm/payslip">Click for Details</a>';
        //$payslip->allowance = Employee::allowance($employee->id);
        //$payslip->gross_salary = Employee::get_gross_salary();
        //$basic = Employee::where('id',$payroll->employee_id)->pluck('name')->first();
        return[
            $sino++,
            $emp->name,
            $emp->work_permit,
            $emp->phone,
            $emp->bank_name,
            $emp->eid,
            $payroll->leave_days,
            $emp->basic,
            $emp->net_payable,
            $emp->net_payable,
        ];
    }
}
