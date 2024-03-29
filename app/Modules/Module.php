<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/13
 * Time: 12:54
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

namespace App\Modules;


use App\Model\Modules;
use Illuminate\Support\Facades\Schema;

class Module
{
    public function registerAuthRoutes()
    {
        $this->routes();
    }

    public static function routes()
    {
        $attributes = [
            'prefix' => 'module',
            'namespace' => '\App\Modules',
            'middleware' => config('admin.route.middleware'),
        ];
        app('router')->group(
            $attributes,
            function ($router) {
                $router->get(
                    '/',
                    function () {
                        return redirect('admin');
                    }
                );
                if (Schema::hasTable("modules")) {
                    $modules = Modules::pluck('name');
                    if ($modules) {
                        foreach ($modules as $module) {
                            $module_name = 'App\Modules\\'.ucfirst($module).'\\'.ucfirst($module);
                            $module_name::routes();
                        }
                    }
                }
            }
        );
    }
}