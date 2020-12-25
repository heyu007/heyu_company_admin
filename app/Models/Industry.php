<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Industry extends Model
{
    use HasFactory;

    protected $table = 'industry';
    const CREATED_AT = 'created_time';
    const UPDATED_AT = 'updated_time';

}
