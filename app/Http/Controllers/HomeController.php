<?php

namespace App\Http\Controllers;

use App\Model\SystemConfig;
use App\Modules\Engine\Entities\Engine;
use App\Modules\LinkCate\Http\Controllers\LinkCateController;
use App\Modules\PFBanner\Http\Controllers\PFBannerController;
use pf\arr\PFarr;

class HomeController extends CommonController
{
    protected $engine;

    public function __construct(SystemConfig $systemConfig, Engine $engine)
    {
        parent::__construct($systemConfig);
        $this->engine = $engine;
    }

    public function index()
    {
        $engine_list = $this->engine->where('statue', 1)->get();
        // 友情连接
        $links_list = LinkCateController::get_list();
        return view($this->temple.'.index', compact('modules', 'engine_list', 'links_list'));
    }

    public function about_me()
    {
        return view($this->temple.'.index');
    }
}
