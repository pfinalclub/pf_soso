<?php
/**
 * Created by PhpStorm.
 * User: 运营部
 * Date: 2019/1/23
 * Time: 16:48
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
require __DIR__ .'/../vendor/autoload.php';
use pf\arr\PFarr;

$array1 = array(1,2,3,4,5,6);
$array2 = array(3,1,5,6,7,8);

echo '<pre>';

PFarr::dd(PFarr::pf_del_val($array1,[1,2,3]));
PFarr::dd(PFarr::pf_del_val($array2,[6,10]));