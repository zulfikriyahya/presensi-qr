<?php
namespace Config;
use Myth\Auth\Config\Auth as MythAuthConfig;
class Auth extends MythAuthConfig
{
    public $requireActivation = null;
    public $activeResetter = null;
    public $views = [
        'scan' => '\App\Views\scan\scan',
        'login' => '\App\Views\admin\login'
    ];
}