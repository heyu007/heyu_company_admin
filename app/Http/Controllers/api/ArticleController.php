<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\ArticleReply;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ArticleController extends Controller
{
    /**
     *
     * @param Request $request
     * @return array
     */
    public function addArticle(Request $request)
    {
        $param                = $request->post();
        $param['create_time'] = time();
        $param['time_slot']   = $param['startDate'] . ',' . $param['endDate'];
        $param['industry_id'] = $param['industry'];
        $result               = Article::query()->create($param);
        return $this->response($result);
    }

    /**
     * 文章列表
     * @return array
     */
    public function articleList()
    {
        $result = Article::query()->orderBy('created_time','desc')->paginate(10)->toArray();
        foreach ($result['data'] as $key => &$val) {
            $val['reply'] = ArticleReply::query()->where(['article_id' => $val['id']])->count();
        }
        return $this->response($result);
    }

    /**
     * 获取文章详情
     * @param Request $request
     * @return array
     */
    public function getOneInfo(Request $request)
    {
        $id = $request->get('id');
        if (empty($id)) return $this->response([], '缺少参数', '400', 0);
        $result = Article::query()->find($id);
        if (!empty($result)) {
            $result->create_time = date_format($result->created_time, "Y-m-d H:i:s");
            $result->reply;
        }
        return $this->response($result);
    }

    /**
     * 文章点赞
     * @param Request $request
     * @return array
     */
    public function addHit(Request $request)
    {
        $params = $request->post('params');
        if (!isset($params['id'])) return $this->response([], '缺少参数', '400', 0);
        $result = Article::query()->find($params['id']);
        if (!empty($result)) {
            $result->hit += 1;
            $res         = $result->save();
            if (!empty($res)) {
                return $this->response();
            } else {
                return $this->response([], '操作失败', '400', 0);
            }
        } else {
            return $this->response([], '操作失败', '400', 0);
        }
    }

    /**
     * 文章回复点赞
     * @param Request $request
     * @return array
     */
    public function addReplyHit(Request $request)
    {
        $params = $request->post('params');
        if (!isset($params['id'])) return $this->response([], '缺少参数', '400', 0);
        $result = ArticleReply::query()->find($params['id']);
        if (!empty($result)) {
            $result->hit += 1;
            $res         = $result->save();
            if (!empty($res)) {
                return $this->response();
            } else {
                return $this->response([], '操作失败', '400', 0);
            }
        } else {
            return $this->response([], '操作失败', '400', 0);
        }
    }

    /**
     * @param Request $request
     * @return array
     */
    public function addReply(Request $request)
    {
        $params = $request->post('params');
        if (!isset($params['content']) || !isset($params['article_id'])) return $this->response([], '缺少参数', '400', 0);
        if (empty($params['content']) || empty($params['article_id'])) return $this->response([], '回复内容不能为空', '400', 0);
        $params['create_time'] = time();
        $result                = ArticleReply::query()->create($params);
        if (!empty($result)) {
            return $this->response($result);
        } else {
            return $this->response([], '操作失败', '400', 0);
        }
    }

    /**
     * 文章排行榜
     * @return array
     */
    public function articleRank()
    {
        $result = Article::query()->orderBy('hit', 'desc')->limit(10)->get(['id', 'title', 'hit']);
        return $this->response($result);
    }
}
