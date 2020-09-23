<?php

namespace app\controller;

use app\BaseController;
use app\model\User;
use app\model\WxUser;
use app\Request;

class Login extends BaseController
{
    /**
     * 用户登录
     * @return mixed 登录结果
     */
    public function login()
    {
        $user_name = input("user_name", '');
        $password  = input("password", '');
        $code      = input("code", '');

        $session_key = (new WxUser())->sessionKey('', '', $code);
        if (!isset($session_key) || !empty($session_key['errcode'])) {
            return json_encode($session_key, true);
        }

        $user_model = new User();
        $user       = $user_model->login($user_name, $password);
        if (empty($user)) {
            return "empty::" . $user_name . '::' . $password . '::';
        } else {
            return json_encode($user, true);
        }
    }
}
