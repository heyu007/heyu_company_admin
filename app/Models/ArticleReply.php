<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ArticleReply extends Model
{
    use HasFactory;

    protected $table = 'article_reply';
    const CREATED_AT = 'created_time';
    const UPDATED_AT = 'updated_time';
    protected $fillable = ['article_id','content','create_time','hit'];
}
