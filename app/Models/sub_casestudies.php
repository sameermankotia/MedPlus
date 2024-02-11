<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sub_casestudies extends Model
{
    use HasFactory;


    protected $fillable = [
        'type',
        'name',
        'result',
        'image',
        'hint_first',
        'hint_image_1',
        'hint_second',
        'hint_image_2',
        'hint_third',
        'hint_image_3',
        'followup_question',
        'followup_option_1',
        'followup_option_2',
        'followup_option_3',
        'followup_option_4',
        'followup_correct_one',
        'feedback_text',
        'feedback_image',
        'case_id',
        'followupquiz'
    ];
}
