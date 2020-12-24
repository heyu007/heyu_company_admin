<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Label;
use Illuminate\Http\Request;

class LabelController extends Controller
{
    /**
     * @return array
     */
    public function indexLabel()
    {
        $result = Label::query()->where(['is_delete'=>0])->orderBy('sort','desc')->limit(10)->get(['id','name','number']);
        return $this->response($result);
    }
}
