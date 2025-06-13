<?php
namespace Config;
use CodeIgniter\Config\BaseConfig;
use CodeIgniter\Format\FormatterInterface;
use CodeIgniter\Format\JSONFormatter;
use CodeIgniter\Format\XMLFormatter;
class Format extends BaseConfig
{
    public array $supportedResponseFormats = [
        'application/json',
        'application/xml', // machine-readable XML
        'text/xml', // human-readable XML
    ];
    public array $formatters = [
        'application/json' => JSONFormatter::class,
        'application/xml'  => XMLFormatter::class,
        'text/xml'         => XMLFormatter::class,
    ];
    public array $formatterOptions = [
        'application/json' => JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES,
        'application/xml'  => 0,
        'text/xml'         => 0,
    ];
    public function getFormatter(string $mime)
    {
        return Services::format()->getFormatter($mime);
    }
}
