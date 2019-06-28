<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/28
 * Time: 15:48
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

namespace App\Modules\Engine\Http\Controllers\Admin;

use App\Modules\Engine\Entities\Engine;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;

class EngineController extends AdminController
{
    protected $title = '搜索引擎管理';

    protected function grid()
    {
        $grid = new Grid(new Engine());
        $grid->column('id', 'ID')->sortable();
        $grid->column('name', '引擎名');
        $grid->column('api', '引擎连接')->label();
        $grid->column('statue', '状态')->select([0 => '下线', 1 => '上线']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        return $grid;
    }


    protected function form()
    {
        $form = new Form(new Engine());
        $form->display('id', 'ID');
        $form->text('name', '引擎名')
            ->creationRules(['required', "unique:engine"])
            ->updateRules(['required', "unique:engine,name,{{id}}"]);
        $form->text('api', '引擎连接')->rules('required');
        $form->hidden('statue')->value(0);
        return $form;
    }


}