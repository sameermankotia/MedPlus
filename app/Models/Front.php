<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Front extends Model
{
    use HasFactory;

    protected $table = 'results';    

    protected $fillable = [
        'userid',
        'caseid',
        'quizanswer',
        'testanswers',
        'diagnosisanswer',
        'medication',
    ];
}
