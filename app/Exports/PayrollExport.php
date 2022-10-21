<?php

namespace App\Exports;

use App\Models\PaySlip;
use Maatwebsite\Excel\Concerns\FromCollection;

class PayrollExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return PaySlip::all();
    }
}
