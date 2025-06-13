<?php
namespace Config;
use CodeIgniter\Config\BaseConfig;
class School extends BaseConfig
{
    private $db;
    public static $generalSettings;
    public function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->setGlobalConfigurations();
    }
    private function setGlobalConfigurations()
    {
        self::$generalSettings =  $this->db->table('general_settings')->where('id', 1)->get()->getRow();
    }
}
