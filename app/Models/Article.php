<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    protected $table = 'article';
    const CREATED_AT = 'created_time';
    const UPDATED_AT = 'updated_time';

    public function reply(){
        return $this->hasMany(ArticleReply::class)->orderBy('hit','desc');
    }
}
