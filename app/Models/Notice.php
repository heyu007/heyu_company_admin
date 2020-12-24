<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    use HasFactory;

    protected $table='notice';
    const UPDATED_AT = 'updated_time';
    const CREATED_AT = 'created_time';

}
