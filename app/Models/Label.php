<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Label extends Model
{
    use HasFactory;

    protected $table="label";
    const CREATED_AT = "created_time";
    const UPDATED_AT = "updated_time";
}
