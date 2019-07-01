<?php

namespace App\Modules\LinkCate\Http\Controllers\Admin;


use App\Modules\LinkCate\Entities\Links;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;

class LinkCateController extends AdminController
{
    public function index(Content $content)
    {
        return $content
            ->title('连接管理')
            ->description('搜索引擎下的友情连接管理')
            ->row(
                function (Row $row) {
                    $row->column(6, $this->treeView()->render());
                    $row->column(
                        6,
                        function (Column $column) {
                            $form = new \Encore\Admin\Widgets\Form();
                            $form->action(admin_base_path('module/link_cate'));
                            $linksModel = new Links();
                            $form->select('cate', '分类')->options(
                                $linksModel::selectOptions(
                                    function ($linksModel) {
                                        return $linksModel::where('cate', 0);
                                    }
                                )
                            );
                            $form->text('name', '连接名称')->rules('required');
                            $form->text('url', '连接URL')->default('');
                            $form->number('sort', '连接排序')->default(255)->rules('required');
                            $form->hidden('_token')->default(csrf_token());
                            $column->append((new Box('添加连接', $form)));
                        }
                    );
                }
            );
    }

    public function form()
    {
        $links = new Links();
        $form = new Form($links);

        $form->display('id', 'ID');
        $form->select('cate', '分类')->options(
            $links::selectOptions(
                function ($linksModel) {
                    return $linksModel::where('cate', 0);
                }
            )
        );
        $form->text('name', '连接名称')->rules('required');
        $form->text('url', '连接URL')->default('');
        $form->number('sort', '连接排序')->default(255);
        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

        return $form;
    }

    protected function treeView()
    {
        $linksModel = new Links();

        return $linksModel::tree(
            function (Tree $tree) {
                $tree->disableCreate();
                $tree->branch(
                    function ($branch) {
                        $payload = "|&nbsp;<strong>{$branch['name']}</strong>";
                        if (!isset($branch['children'])) {
                            if (url()->isValidUrl($branch['url'])) {
                                $uri = $branch['url'];
                            } else {
                                $uri = '';
                            }
                            $payload .= "--&nbsp;<a href=\"$uri\" class=\"dd-nodrag\">$uri</a>";
                        }

                        return $payload;
                    }
                );
            }
        );
    }
}
