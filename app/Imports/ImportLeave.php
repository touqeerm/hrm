<?php

namespace App\Imports;

use App\Models\Leave;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\Importable;

class ImportLeave implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    /**public function model(array $row)
    {
        return new Leave([
            //
        ]);
    } */
    use Importable;
    public function model(array $row)
    {
       
    }

}
