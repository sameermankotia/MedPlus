<?php

namespace App\Imports;

use App\Models\diagnosis;
use App\Models\medication;
use App\Models\tests;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;



class DataImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {   
        dd($row);
        return new medication([
            'title'     => $row['medication'],
            'description'    => isset($row['mechanism_of_action']) ? $row['mechanism_of_action'] : "",
        ]);
    } 
    
    /**
    * @param Collection $collection
    */
    // public function collection(Collection $collection)
    // {
    //     // foreach($collection as $val){
    //     //     $response = diagnosis::create([
    //     //         'title'=>'yes',
    //     //         'description'=> "yes"
    //     //     ]);

    //             $response = diagnosis::create([
    //                 'title'=>'yes',
    //                 'description'=> "yes"
    //             ]);
    //         dd('ok');
    //     //}
    //     exit;
      

       
    // }
}
