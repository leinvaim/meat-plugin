<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mab_dev' );

/** MySQL database username */
define( 'DB_USER', 'mab-sc' );

/** MySQL database password */
define( 'DB_PASSWORD', 'x2Is-97;!ZUeZYlpoOQX' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'r[*D+ei332Qe;Oc@qM@V;19|TT+.-P=sOH}%5: lq@iak25W%+&|SFRjqky1Q?`l');
define('SECURE_AUTH_KEY',  ':DE}W<:+LE&V]>MhjdV@*eg]1{27mrY +8I|8#k|q8m`r[6FF@G]k-#+undMTB[s');
define('LOGGED_IN_KEY',    '-AX`-~|uo7?`@M f%.M3.osB2b!!F]:k-Rq4-|ZM0h<oAa.bRUnO- +/G-ok`}V5');
define('NONCE_KEY',        'Z;EDt|mvk:2B&|.]=3`kg E>y~16foHBf{F5+{s]d.W>*1?khIP_;V*9b>Kgk9:,');
define('AUTH_SALT',        '39`wWJ={C-ZWtxAsM:4UR&2{ 4sh`u47/h+[k_=$Qp?.du;-~dDwYcG] ~Y %<M5');
define('SECURE_AUTH_SALT', 'M!bhrB3#:6,Yfch^0epunS#_Cr|~B+?98B05Wm.@pXemEO[d5X-&*Az52dP9I3@m');
define('LOGGED_IN_SALT',   ']3-cfCN0{q`[}V{1BX|GG&b9Y2?7a /1yni}L7+.Q[73h<L]H/[Rg2$e0TU82u-#');
define('NONCE_SALT',       'A79`3qj8R&,)JhD]&EMK]T^)WdUiSx+E!aAxjR>ja|~%lv^+%>:?}MDq:kcE=L9e');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'mab_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
