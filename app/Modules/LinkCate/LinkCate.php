<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/13
 * Time: 13:30
 *
 *
 *                      _ooOoo_
 *                     o8888888o
 *                     88" . "88
 *                     (| ^_^ |)
 *                     O\  =  /O
 *                  ____/`---'\____
 *                .'  \\|     |//  `.
 *               /  \\|||  :  |||//  \
 *              /  _||||| -:- |||||-  \
 *              |   | \\\  -  /// |   |
 *              | \_|  ''\---/''  |   |
 *              \  .-\__  `-`  ___/-. /
 *            ___`. .'  /--.--\  `. . ___
 *          ."" '<  `.___\_<|>_/___.'  >'"".
 *        | | :  `- \`.;`\ _ /`;.`/ - ` : | |
 *        \  \ `-.   \_ __\ /__ _/   .-` /  /
 *  ========`-.____`-.___\_____/___.-`____.-'========
 *                       `=---='
 *  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 *           佛祖保佑       永无BUG     永不修改
 *
 */

namespace App\Modules\LinkCate;


class LinkCate
{
    public static function routes()
    {
        $attributes = [
            'prefix' => '',
            'middleware' => config('admin.route.middleware'),
            'namespace' => 'LinkCate\Http\Controllers\Admin',
        ];
        app('router')->group(
            $attributes,
            function ($router) {
                $router->resource('link_cate', 'LinkCateController');
                //$router->get('create', 'EngineController@create');
            }
        );
    }
}