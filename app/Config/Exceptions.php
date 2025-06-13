<?php
namespace Config;
use CodeIgniter\Config\BaseConfig;
use Psr\Log\LogLevel;
class Exceptions extends BaseConfig
{
    public bool $log = true;
    public array $ignoreCodes = [404];
    public string $errorViewPath = APPPATH . 'Views/errors';
    public array $sensitiveDataInTrace = [];
    public bool $logDeprecations = true;
    public string $deprecationLogLevel = LogLevel::WARNING;
}
