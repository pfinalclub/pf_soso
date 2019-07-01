<?php

namespace App\Modules\LinkCate\Entities;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Links extends Model
{
    use ModelTree, AdminBuilder;
    protected $guarded = [];
    protected $table = "links";
    # protected $parentColumn = "cate";

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->setParentColumn('cate');
        $this->setOrderColumn('sort');
        $this->setTitleColumn('name');
    }
}
