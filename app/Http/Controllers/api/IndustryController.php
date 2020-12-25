<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Industry;
use Illuminate\Http\Request;

class IndustryController extends Controller
{
    /**
     * @return array
     */
    public function indexIndustry()
    {
        $result = Industry::all()->map(function ($item) {
            $list         = [];
            $list['id']   = $item['id'];
            $list['name'] = $item['name'];
            return $list;
        });
        return $this->response($result);
    }
}
