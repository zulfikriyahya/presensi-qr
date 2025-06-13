<?php
namespace Config;
use CodeIgniter\Events\Events;
use CodeIgniter\Exceptions\FrameworkException;
use CodeIgniter\HotReloader\HotReloader;
Events::on('pre_system', static function () {
    if (ENVIRONMENT !== 'testing') {
        if (ini_get('zlib.output_compression')) {
            throw FrameworkException::forEnabledZlibOutputCompression();
        }
        while (ob_get_level() > 0) {
            ob_end_flush();
        }
        ob_start(static fn ($buffer) => $buffer);
    }
    if (CI_DEBUG && ! is_cli()) {
        Events::on('DBQuery', 'CodeIgniter\Debug\Toolbar\Collectors\Database::collect');
        Services::toolbar()->respond();
        if (ENVIRONMENT === 'development') {
            Services::routes()->get('__hot-reload', static function () {
                (new HotReloader())->run();
            });
        }
    }
});
