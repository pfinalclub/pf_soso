<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableLinks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'links',
            function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->tinyInteger('cate')->default(0)->comment('分类 0 为父类');
                $table->string('name')->comment('连接名称');
                $table->string('url')->default(null)->comment('连接url');
                $table->integer('sort')->default(0)->comment('排序');
                $table->tinyInteger('status')->default(1)->comment('状态0 为显示,1为不显示');
                $table->timestamps();
            }
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('');
    }
}
