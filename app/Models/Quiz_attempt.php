<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quiz_attempt extends Model
{
    use HasFactory;

    protected $fillable = ['case_id','user_id','history','quiz_answer','tests','diagnosis','medication','score','comment','followup_tests','followup_diagnosis','followup_medication','tests_score','diagnosis_score','medication_score','quiz_score','followup_quiz_tests_score','followup_quiz_diagnosis_score','followup_quiz_medication_score'];
}
