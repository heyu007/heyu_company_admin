<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\ArticleController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('api')->get('/articleInfo',[ArticleController::class,'getOneInfo']); // 文章详情
Route::middleware('api')->get('/article_list',[ArticleController::class,'articleList']); // 文章列表
Route::middleware('api')->post('/add_hit',[ArticleController::class,'addHit']); // 添加文章点赞
Route::middleware('api')->post('/add_reply_hit',[ArticleController::class,'addReplyHit']); // 添加文章点赞
Route::middleware('api')->post('/add_reply_content',[ArticleController::class,'addReply']); // 添加文章点赞
