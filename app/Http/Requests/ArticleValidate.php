<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use function PHPSTORM_META\map;

class ArticleValidate extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title'     => 'required|min:5|max:50',
            'startDate' => 'required',
            'endDate'   => 'required',
            'label'     => 'required',
        ];
    }

    public function messages()
    {
        return [
            'title.required'     => '文章标题不能为空',
            'title.min'          => '文章标题长度在 5 ~ 50 个字符',
            'title.max'          => '文章标题长度在 5 ~ 50 个字符',
            'startDate.required' => '开始时间不能为空',
            'endDate.required'   => '结束时间不能为空',
            'label.required'     => '标签不能为空',
        ];
    }

    public function scene()
    {
        return [
            'add'=>['title','startDate','endDate','label'],
        ];
    }
}
