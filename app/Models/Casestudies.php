<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Casestudies extends Model
{
    use HasFactory;

    protected $fillable = ['department','history','quiz','q_question','options','correct_one','test','diagnosis','medication','img','mode','test_correct_one','diagnosis_correct_one','hint', 'title','uital_signs','history_image'];

    function depart(){
        return $this->belongsTo(Department::class,'department');
    }
}
