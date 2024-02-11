<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Doctor extends Authenticatable
{
    use HasFactory;

    use Notifiable;

    protected $table = 'doctors';
    protected $guard = "doctor";
    
    
    protected $fillable = [
        'username',
        'email',
        'password',
        'group'
    ];

    protected $hidden = [
        'password',
    ];

}
