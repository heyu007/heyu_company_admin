<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Notice;
use Illuminate\Http\Request;

class NoticeController extends Controller
{
    /**
     * 公告信息
     * @return array
     */
    public function indexNotice()
    {
        $result = Notice::query()->where(['is_delete'=>0])->orderBy('sort','desc')->limit(1)->get(['title','content']);
        return $this->response($result);
    }
}
