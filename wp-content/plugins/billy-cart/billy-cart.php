<?php
/*
   Plugin Name: Billy Cart
   Plugin URI: http://wordpress.org/extend/plugins/billy-cart/
   Version: 0.3
   Author: Line26
   Description: A shipping calculator for Billy Meats
   Text Domain: billy-cart
   License: GPLv3
  */

/*
    "WordPress Plugin Template" Copyright (C) 2015 Michael Simpson  (email : michael.d.simpson@gmail.com)

    This following part of this file is part of WordPress Plugin Template for WordPress.

    WordPress Plugin Template is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    WordPress Plugin Template is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Contact Form to Database Extension.
    If not, see http://www.gnu.org/licenses/gpl-3.0.html

//
*/

if ( ! defined( 'ABSPATH' ) ) exit;


//set some settings
if (!defined('BILLYCART_DELIVERY_DAY_SCOPE_DAYS')) define('BILLYCART_DELIVERY_DAY_SCOPE_DAYS', 20);
if (!defined('BILLYCART_DELIVERY_DAY_MAX_OPTIONS')) define('BILLYCART_DELIVERY_DAY_MAX_OPTIONS', 10);
if (!defined('BILLYCART_DELIVERY_DAY_ACF_FIELD')) define('BILLYCART_DELIVERY_DAY_ACF_FIELD', 'field_54ebff321efe3');
if (!defined('BILLYCART_DELIVERY_CUTOFF_ACF_FIELD')) define('BILLYCART_DELIVERY_CUTOFF_ACF_FIELD', 'field_54ebffb81efe6');
date_default_timezone_set('Australia/Brisbane');


// Load plugin class files
require_once('includes/billy-cart.php');

//require_once( 'includes/class-wordpress-plugin-template-settings.php' );
// Load plugin libraries
//require_once( 'includes/lib/class-wordpress-plugin-template-admin-api.php' );
//require_once( 'includes/lib/class-wordpress-plugin-template-post-type.php' );
//require_once( 'includes/lib/class-wordpress-plugin-template-taxonomy.php' );
/**
 * Returns the main instance of Billy_Cart to prevent the need to use globals.
 *
 * @since  1.0.0
 * @return object Billy_Cart
 */
function BillyCart () {
    $instance = BillyCart::instance( __FILE__, '1.0.0' );
    if ( is_null( $instance->settings ) ) {
        $instance->settings = BillyCart::instance( $instance );
    }
    return $instance;
}
BillyCart();


