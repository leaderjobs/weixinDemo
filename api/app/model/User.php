<?php

namespace app\model;

use think\Model;

class User extends Model
{
    protected $name = 'users';
    protected $pk = 'uid';

    public function getUser(int $uid)
    {
        return self::find($uid);
    }

    public function login(string $user_name, string $password)
    {
        return self::find(['loginname' => $user_name, 'loginpassword' => $password]);
    }
}
