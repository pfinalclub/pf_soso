<?php

namespace App\Modules\LinkCate\Http\Controllers;

use App\Modules\LinkCate\Entities\Links;
use Illuminate\Routing\Controller;
use pf\arr\PFarr;

class LinkCateController extends Controller
{
    protected $link = null;

    public static function get_list()
    {
        $links_list = self::get_tree_list();
        return $links_list;
    }

    public static function get_tree_list()
    {
        $links = new static();
        $links->link = new Links();
        $link_list = $links->link->get()->toArray();
        if ($link_list) {
            $new_arr = PFarr::pf_tree($link_list, 0, 'cate');

            return $new_arr;
        } else {
            return [];
        }
    }

}
