<?php
namespace Config;
use CodeIgniter\Config\AutoloadConfig;
class Autoload extends AutoloadConfig
{
    public $psr4 = [
        APP_NAMESPACE => APPPATH,
        'Config'      => APPPATH . 'Config',
    ];
    public $classmap = [
        'School' => APPPATH . 'Config/School.php'
    ];
    public $files = [];
    public $helpers = [];
}
