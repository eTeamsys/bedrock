<?php

use Roots\WPConfig\Config;

if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') {
        $_SERVER['HTTPS']='on';
}

ini_set('display_errors', 0);

define('ICL_DONT_LOAD_LANGUAGES_JS', true);

Config::define('WP_DEBUG_DISPLAY', false);
Config::define('SCRIPT_DEBUG', false);
Config::define( 'WP_MEMORY_LIMIT', '128M' );
Config::define( 'WP_MAX_MEMORY_LIMIT', '256M' );
Config::define('WP_DEBUG', false);
Config::define('WP_DEBUG_DISPLAY', false);
/** Disable all file modifications including updates and update notifications */
Config::define('WP_CACHE', true);
Config::define('DISALLOW_FILE_MODS', true);


