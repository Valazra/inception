<?php

define ( 'DB_NAME', getenv('DB_NAME') );

define ( 'DB_NAME', getenv('DB_NAME') );

define( 'DB_USER', getenv('DB_USER') );

define( 'DB_PASSWORD', getenv('DB_PASSWORD') );

define ('DB_HOST', getenv('DB_HOST') );

define ('DB_CHARSET', getenv('DB_CHARSET') );

define ( 'DB_COLLATE', '' );

define('AUTH_KEY',		getenv('AUTH_KEY'));
define('SECURE_AUTH_KEY',	getenv('SECURE_AUTH_KEY'));
define('LOGGED_IN_KEY',		getenv('LOGGED_IN_KEY'));
define('NONCE_KEY',		getenv('NONCE_KEY'));
define('AUTH_SALT',		getenv('AUTH_SALT'));
define('SECURE_AUTH_SALT',	getenv('SECURE_AUTH_SALT'));
define('LOGGED_IN_SALT',	getenv('LOGGED_IN_SALT'));
define('NONCE_SALT',		getenv('NONCE_SALT'));

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
