<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableEngine extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'engine',
            function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->string('name')->comment('搜索引擎管理');
                $table->string('api')->comment('搜索引擎url');
                $table->tinyInteger('statue')->default(1)->comment('上线或者下线');
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
