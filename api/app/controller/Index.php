<?php

namespace app\controller;

use app\BaseController;
use app\model\User;

class Index extends BaseController
{
    public function index()
    {
        $user = new User();
        $data = $user->getUser(1);
        return print_r($data['loginname'], true);
    }

    public function hello($name = 'ThinkPHP6')
    {
        return 'hello,' . $name;
    }
}
