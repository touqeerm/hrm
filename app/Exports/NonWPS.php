<?php

namespace App\Exports;

use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;
use App\Models\Employee;

class NonWPS implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
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
        ['COMPANY NAME:'],
        [
            "Sl.No",
            "NAME OF THE EMPLOYEE",
            "PASSPORT NO",
            "BANK NAME",
            "FAB CARD NO(16 DIGITS) OR IBAN FOR PERSONAL ACCOUNT (23 DIGITS) OR C3-RAK (15 DIGIT)",
            "SALARY AMOUNT",
            "PURPOSE",
            ]
        ];
    }

    public function map ($payroll): array
    {
        $this->sino++;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        //$payslip_link='<a href="http://localhost/hrm/payslip">Click for Details</a>';
        //$payslip->allowance = Employee::allowance($employee->id);
        //$payslip->gross_salary = Employee::get_gross_salary();
        //$basic = Employee::where('id',$payroll->employee_id)->pluck('name')->first();
        return[
            $this->sino,
            $emp->name,
            $emp->passport,
            $emp->bank_name,
            $emp->eid,
            $emp->net_payable,
            "SALARY",
        ];
    }
}
