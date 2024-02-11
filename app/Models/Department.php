<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory;
    protected $fillable = ['name','detail','img'];

    function case_studies(){
        return $this->hasMany(Casestudies::class,'department');
    }
}
