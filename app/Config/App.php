<?php
namespace Config;
use CodeIgniter\Config\BaseConfig;
class App extends BaseConfig
{
    public string $baseURL = '';
    public array $allowedHostnames = [];
    public string $indexPage = '';
    public string $uriProtocol = 'PATH_INFO';
    public string $defaultLocale = '';
    public bool $negotiateLocale = false;
    public array $supportedLocales = [];
    public string $appTimezone = 'Asia/Jakarta';
    public string $charset = 'UTF-8';
    public bool $forceGlobalSecureRequests = false;
    public array $proxyIPs = [];
    public bool $CSPEnabled = false;
}
