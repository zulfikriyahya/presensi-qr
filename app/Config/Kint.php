<?php
namespace Config;
use CodeIgniter\Config\BaseConfig;
use Kint\Renderer\AbstractRenderer;
class Kint extends BaseConfig
{
    public $plugins;
    public int $maxDepth           = 6;
    public bool $displayCalledFrom = true;
    public bool $expanded          = false;
    public string $richTheme = 'aante-light.css';
    public bool $richFolder  = false;
    public int $richSort     = AbstractRenderer::SORT_FULL;
    public $richObjectPlugins;
    public $richTabPlugins;
    public bool $cliColors      = true;
    public bool $cliForceUTF8   = false;
    public bool $cliDetectWidth = true;
    public int $cliMinWidth     = 40;
}
