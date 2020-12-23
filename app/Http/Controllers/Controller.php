<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     * api返回数据格式
     * @param array $data
     * @param string $message
     * @param int $code
     * @param int $status
     * @return array
     */
    public function response($data = [], $message = '', $code = 200, $status = 1)
    {
        $data = [
            'code'    => $code,
            'status'  => $status,
            'message' => $message,
            'data'    => $data,
        ];
        return $data;
    }
}
