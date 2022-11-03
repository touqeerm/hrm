<?php

namespace App\Exports;
use App\Models\Settings;
use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;

class FirstGulfWPSExport implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
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
            "LABOUR CARD"
            ]
        ];
    }

    public function map ($payroll): array
    {
        $sino=0;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        $salmon=explode('-',$this->salary_month);
        $year=$salmon[0];
        $month=$salmon[1];
        $company=User::where('id',$emp->created_by)->pluck('name')->first();
        $company_molid=Settings::where('created_by',$emp->created_by)->where('name','company_name')->pluck('value')->first();
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
            $payroll->gross_salary,
            $payroll->basic_salary,
            $payroll->net_payable,
            "REMARKS",
            $payroll->work_permit
        ];
    }
}
