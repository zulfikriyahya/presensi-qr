<?php
require __DIR__ . '/app/Config/Paths.php';
define('FCPATH', __DIR__ . DIRECTORY_SEPARATOR . 'public' . DIRECTORY_SEPARATOR);
if (! function_exists('str_contains')) {
    function str_contains(string $haystack, string $needle): bool
    {
        return empty($needle) || strpos($haystack, $needle) !== false;
    }
}
class preload
{
    private array $paths = [
        [
            'include' => __DIR__ . '/vendor/codeigniter4/framework/system',
            'exclude' => [
                '/system/Database/OCI8/',
                '/system/Database/Postgre/',
                '/system/Database/SQLSRV/',
                '/system/Database/Seeder.php',
                '/system/Test/',
                '/system/Language/',
                '/system/CLI/',
                '/system/Commands/',
                '/system/Publisher/',
                '/system/ComposerScripts.php',
                '/Views/',
                '/system/Config/Routes.php',
                '/system/ThirdParty/',
            ],
        ],
    ];
    public function __construct()
    {
        $this->loadAutoloader();
    }
    private function loadAutoloader()
    {
        $paths = new Config\Paths();
        require rtrim($paths->systemDirectory, '\\/ ') . DIRECTORY_SEPARATOR . 'bootstrap.php';
    }
    public function load()
    {
        foreach ($this->paths as $path) {
            $directory = new RecursiveDirectoryIterator($path['include']);
            $fullTree  = new RecursiveIteratorIterator($directory);
            $phpFiles  = new RegexIterator(
                $fullTree,
                '/.+((?<!Test)+\.php$)/i',
                RecursiveRegexIterator::GET_MATCH
            );
            foreach ($phpFiles as $key => $file) {
                foreach ($path['exclude'] as $exclude) {
                    if (str_contains($file[0], $exclude)) {
                        continue 2;
                    }
                }
                require_once $file[0];
                echo 'Loaded: ' . $file[0] . "\n";
            }
        }
    }
}
(new preload())->load();