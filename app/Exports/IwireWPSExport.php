<?php

namespace App\Exports;
use App\Models\User;
use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;

class IwireWPSExport implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
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
        ['WPS SHEET'],
        [
            "CompanyName",
            "MOLID",
            "SalaryYear",
            "SalaryMonth",
            "EmployeeName",
            "PersonNo",
            "SalaryPayMode",
            "Bank",
            "IBAN",
            "FixedSalary",
            "VariableSalary",
            "LeaveDays"
           ]
        ];
    }

    public function map ($payroll): array
    {
        $sino=0;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        //$payslip_link='<a href="http://localhost/hrm/payslip">Click for Details</a>';
        $payslip->allowance = Employee::allowance($employee->id);
        $company=User::where('id',$emp->created_by)->pluck('name')->first();
        $salmon=explode('-',$this->salary_month);
        $year=$salmon[0];
        $month=$salmon[1];

        //$payslip->gross_salary = Employee::get_gross_salary();
        //$basic = Employee::where('id',$payroll->employee_id)->pluck('name')->first();
        return[
            $company,
            $emp->eid,
            $year,
            $month,
            $emp->name,
            $emp->person_code,
            "Account Transfer",
            $emp->bank_name,
            $emp->bank_identifier_code,
            $emp->basic,
            $emp->net_payable,
            $payroll->leave_days
        ];
    }

}
