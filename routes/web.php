<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\LoginController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*************************************** 后端路由 ***************************************/

Route::get('/admin',[LoginController::class,'index']);