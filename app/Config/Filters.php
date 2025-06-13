<?php
namespace Config;
use CodeIgniter\Filters\CSRF;
use CodeIgniter\Filters\DebugToolbar;
use CodeIgniter\Filters\Honeypot;
use CodeIgniter\Filters\InvalidChars;
use CodeIgniter\Filters\SecureHeaders;
class Filters extends \CodeIgniter\Config\Filters
{
    public array $aliases = [
        'csrf'          => CSRF::class,
        'toolbar'       => DebugToolbar::class,
        'honeypot'      => Honeypot::class,
        'invalidchars'  => InvalidChars::class,
        'secureheaders' => SecureHeaders::class,
        'login'         => \Myth\Auth\Filters\LoginFilter::class,
        'role'          => \Myth\Auth\Filters\RoleFilter::class,
        'permission'    => \Myth\Auth\Filters\PermissionFilter::class,
        'forcehttps'    => \CodeIgniter\Filters\ForceHTTPS::class,
        'pagecache'     => \CodeIgniter\Filters\PageCache::class,
        'performance'   => \CodeIgniter\Filters\PerformanceMetrics::class,
    ];
    public array $globals = [
        'before' => [
            'honeypot',
            'login'=> ['except' => ['scan', 'scan/*']]
        ],
        'after' => [],
    ];
    public array $methods = [];
    public array $filters = [
        'login' => [
            'before' => [
                'admin/', 'admin/*', 'register/'
                ]
            ]
    ];
    public array $required = [
        'before' => [
            'forcehttps',
            'pagecache',
        ],
        'after' => [
            'pagecache',
            'performance',
            'toolbar',
        ],
    ];
}
