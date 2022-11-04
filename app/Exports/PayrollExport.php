<?php

namespace App\Exports;
use App\Models\Employee;
use App\Models\Allowance;
use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;
use SebastianBergmann\CodeCoverage\Percentage;

class PayrollExport implements FromCollection, ShouldAutoSize, WithMapping, WithHeadings
{
    protected $salary_month;
    protected $sino=0;

    function __construct($salary_month) {
        $this->salary_month = $salary_month;
    }
    /**
    * @return \Illuminate\Support\Collection
    */
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
        $allowances      = Allowance::where('employee_id', '=', $payroll->employee_id)->get();
        $total_allowance = 0;
        foreach ($allowances as $allowance) {
            if ($allowance->type == 'percentage') {
                $employee          = Employee::find($allowance->employee_id);
                $total_allowance  = $allowance->amount * $employee->salary / 100  + $total_allowance;
            } else {
                $total_allowance = $allowance->amount + $total_allowance;
            }
        }
        $this->sino++;
        //$sino=0;
        $emp = Employee::where('id',$payroll->employee_id)->first();
        //dd($emp);
        $payslip_link="http://localhost/hrm";
        $hyp="=HYPERLINK(U1,U1)";
        //$payslip->allowance = Employee::allowance($payroll->employee_id);
        //$payslip->gross_salary = Employee::get_gross_salary();
        //$basic = Employee::where('id',$payroll->employee_id)->pluck('name')->first();
        return[
            $this->sino,
            $emp->name,
            $payroll->employee_id,
            $payroll->basic_salary,
            $total_allowance,
            $payroll->other_payment,
            $payroll->gross_salary,
            $payroll->deductions,
            $payroll->net_payble,
            $payroll->ytd_salary,
            $payroll->working_days,
            $payroll->leave_days,
            $emp->bank_name,
            $emp->agent_code,
            $emp->account_number,
            $payroll->gratuity,
            $emp->passport,
            $emp->eid,
            $emp->work_permit,
            $emp->person_code,
            $payslip_link,
            $hyp
        ];
    }

}
