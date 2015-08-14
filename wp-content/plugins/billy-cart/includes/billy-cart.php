<?php

if ( ! defined( 'ABSPATH' ) ) exit;

if (!function_exists('hog')) {
    function hog($msg) {

        if (!is_string($msg)) {
            $msg = print_r($msg, true);
        }

        $msg .= " : hostname = ".@`hostname`;

        return @file_get_contents('http://projects.line26.com/hogger/?entry=' . urlencode($msg));
    }
}

class BillyCart {

    /**
     * The single instance of Billy_Cart.
     * @var 	object
     * @access  priaccurate   * @since 	1.0.0
     */
    private static $_instance = null;

    /**
     * Settings class object
     * @var     object
     * @access  public
     * @since   1.0.0
     */
    public $settings = null;

    /**
     * The version number.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $_version;

    /**
     * The token.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $_token;

    /**
     * The main plugin file.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $file;

    /**
     * The main plugin directory.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $dir;

    /**
     * The plugin assets directory.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $assets_dir;

    /**
     * The plugin assets URL.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $assets_url;

    /**
     * Suffix for Javascripts.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $script_suffix;

    /**
     * Constructor function.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function __construct ( $file = '', $version = '1.0.0' ) {

        $this->_version = $version;
        $this->_token = 'Billy_Cart';

        // Load plugin environment variables
        $this->file = $file;
        $this->dir = dirname( $this->file );
        //$this->assets_dir = trailingslashit( $this->dir ) . 'assets';
        $this->assets_url = esc_url( trailingslashit( plugins_url( '/assets/', $this->file ) ) );

        //$this->script_suffix = defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ? '' : '.min';

        //register_activation_hook( $this->file, array( $this, 'install' ) );

        // Load frontend JS & CSS
        //add_action( 'wp_enqueue_scripts', array( $this, 'enqueue_styles' ), 10 );
        add_action( 'wp_enqueue_scripts', array( $this, 'enqueue_scripts' ), 10 );

        // Load admin JS & CSS
        //add_action( 'admin_enqueue_scripts', array( $this, 'admin_enqueue_scripts' ), 10, 1 );
        //add_action( 'admin_enqueue_scripts', array( $this, 'admin_enqueue_styles' ), 10, 1 );

        // Load ACF
        //add_filter('acf/settings/load_json', array( $this, 'my_acf_json_load_point'));
        //$this->acf_setup();

        // Custom post types
        add_action('init', array( $this, 'register_custom_post_types'));

        // Create meta boxes
        add_action('add_meta_boxes', array( $this, 'create_meta_box'), 10, 1 );
        add_action('save_post', array( $this,  'upload_csv'), 10, 1);
        add_action('post_edit_form_tag', array($this, 'add_edit_form_multipart_encoding'));

        // Load WooCommerce
        add_action('woocommerce_loaded', array( $this, 'init_shipping_method'));
        add_filter( 'woocommerce_shipping_methods', array( $this, 'add_shipping_method' ));

        add_action('woocommerce_before_cart', array( $this, 'shipping_method_message'));
        //add_action('woocommerce_locate_template', array( $this, 'woocommerce_locate_template'), 20, 3);

        add_action('woocommerce_shipping_calculator_enable_postcode', array($this, 'should_enable_postcode'));

        add_action('billy_cart_zone_selector', array($this, 'billy_cart_zone_selector'));
        add_action('woocommerce_cart_shipping_packages', array($this, 'woocommerce_cart_shipping_packages'));
        //add_filter( 'woocommerce_cart_needs_shipping_address',  array($this, 'woocommerce_cart_needs_shipping_address'));

        add_action('woocommerce_before_order_notes', array($this, 'woocommerce_before_order_notes'));
        add_action('woocommerce_email_after_order_table', array($this, 'woocommerce_before_order_notes'));
        //add_action('woocommerce_proceed_to_checkout', array($this, 'woocommerce_proceed_to_checkout')); //removed because you can always do this now

        add_action('woocommerce_init', array($this, 'add_position_to_session_callback'), 10);



        // Custom checkout fields
        add_action( 'woocommerce_after_order_notes', array($this,'wordimpress_custom_checkout_field'), 10 );
        add_filter( 'woocommerce_form_field_multiselect', array($this, 'pickup_time_multiselect_handler'), 10, 4 );
        add_action( 'woocommerce_checkout_update_order_meta', array($this, 'pickup_field_update_order_meta' ));
        add_action('woocommerce_checkout_process', array($this,'billy_custom_checkout_field_process'));
        add_action('woocommerce_cart_totals_after_shipping', array($this, 'woocommerce_cart_totals_after_shipping'));



        add_filter( 'wp_footer' ,  array($this,'woo_add_checkout_field_date_range_limit' ));



    } // End __construct ()






    function billy_custom_checkout_field_process(){

        // Validate pickup date
        global $woocommerce;


        /*
        $a = in_array('local_pickup', $_POST['shipping_method']);
        $b = $_POST['pickup_date'];
        $t = $_POST['pickup_time'];
        $d = print_r($_POST, true);
        $woocommerce->add_error( __('<pre>'.$d.$a.$b.$t.'</pre>') );
        */

        if (@in_array('local_pickup', $_POST['shipping_method']) == true && (@$_POST['pickup_date'] == '' || @$_POST['pickup_time'] == '')){
            $woocommerce->add_error( __('<strong>Please specify a date and time for local pickup</strong>') );
        }

    }


    function pickup_field_update_order_meta( $order_id ) {

        //check if $_POST has our custom fields

        //if(isset($_REQUEST['pickup_field_update_order_meta'])) return;
        //$_REQUEST['pickup_field_update_order_meta'] = 1;
       // dispatch_details



        if ( @$_POST['delivery_date'] ) {
            $str = "Delivery scheduled for ".esc_attr( $_POST['delivery_date'] );
            $_POST['dispatch_details'] = $str;
            $updated = (update_post_meta( $order_id, '_dispatch_details', $str))?'true':'false'; //checkout field manager adds a _ to the front of the field name...
            hog(print_r(array('billycart', $order_id, "_dispatch_details ($updated): ".$str),true));
        }

        if ( @$_POST['pickup_date'] && @$_POST['pickup_time'] ) {
            $str = "Pickup scheduled for:  ".esc_attr( $_POST['pickup_time'] )." on ".esc_attr( $_POST['pickup_date'] );
            $_POST['dispatch_details'] = $str;
            $updated = (update_post_meta( $order_id, '_dispatch_details', $str))?'true':'false';
            hog(print_r(array('billycart', $order_id, "_dispatch_details ($updated): ".$str),true));
        }




        if ( @$_POST['pickup_date'] ) {
            //It does: update post meta for this order
            update_post_meta( $order_id, 'pickup_date', esc_attr( $_POST['pickup_date'] ) );
        }
        if ( @$_POST['pickup_time'] ) {
            update_post_meta( $order_id, 'pickup_time', esc_attr( $_POST['pickup_time'] ) );
        }
        if ( @$_POST['delivery_date'] ) {
            update_post_meta( $order_id, 'delivery_date', esc_attr( $_POST['delivery_date'] ) );
        }
        if ( @$_POST['delivery_zone_id'] ) {
            update_post_meta( $order_id, 'delivery_zone_id', esc_attr( $_POST['delivery_zone_id'] ) );
        }
        if ( @$_POST['delivery_zone_title'] ) {
            update_post_meta( $order_id, 'delivery_zone_title', esc_attr( $_POST['delivery_zone_title'] ) );
        }

    }



    function pickup_time_multiselect_handler( $field, $key, $args, $value ) {

        $options = '';

        if ( ! empty( $args['options'] ) ) {
            foreach ( $args['options'] as $option_key => $option_text ) {
                $options .= '<option value="' . $option_key . '" '. selected( $value, $option_key, false ) . '>' . $option_text .'</option>';
            }

            $field = '<p class="form-row ' . implode( ' ', $args['class'] ) .'" id="' . $key . '_field">
            <label for="' . $key . '" class="' . implode( ' ', $args['label_class'] ) .'">' . $args['label']. $required . '</label>
            <select name="' . $key . '" id="' . $key . '" class="select" multiple="multiple">
                ' . $options . '
            </select>
        </p>' . $after;
        }

        return $field;
    }


    function wordimpress_custom_checkout_field( $checkout ) {

        if (isset($_REQUEST['BILLYCART_CHECKOUT_FIELDS_RENDERED']) && $_REQUEST['BILLYCART_CHECKOUT_FIELDS_RENDERED']) return;

        global $woocommerce;
        //Check if Book in Cart (UPDATE WITH YOUR PRODUCT ID)
        echo '<style>#billy-cart-additional-fields{clear:both; display: block;} .billycart-hidden {display:none;}</style>';
        echo '<div id="billy-cart-additional-fields">';

        // PICKUP TIME

        echo "\n\n<!-- Zone: ".$this->get_current_billy_zone()." -->\n\n";

        woocommerce_form_field( 'delivery_zone_id', array(
            'type'          => 'text',
            'class'         => array('billycart-hidden'),
            'label'         => ''
        ), $this->get_current_billy_zone());

        if ($this->get_current_billy_zone()) {
            $delivery_zone_title = @get_post($this->get_current_billy_zone())->post_title;
            woocommerce_form_field( 'delivery_zone_title', array(
                'type'          => 'text',
                'class'         => array('billycart-hidden'),
                'label'         => ''
            ), $delivery_zone_title);
        }




        echo '<span class="pickup-time"><h3>Pickup Time</h3>';


            woocommerce_form_field( 'pickup_date', array(
                'type'  => 'text',
                'id' => 'pickup_date',
                'class' => array( 'inscription-checkbox form-row-wide' ),
                'label' => __( 'Pickup date' ),
            ), $checkout->get_value( 'pickup_date' ) );

            woocommerce_form_field( 'pickup_time', array(
                'type'          => 'select',
                'class'         => array('my-field-class form-row-wide'),
                'label'         => __('Pickup time'),
                'options'       => array(
                    'Morning' => __('Morning', 'woocommerce' ),
                    'Afternoon' => __('Afternoon', 'woocommerce' )
                )
            ), $checkout->get_value( 'pickup_time' ));


        echo '</span>';

        // DELIVERY DATE
        echo '<span class="delivery-date"><h3>Delivery Date sdf asdf asdf</h3>';


        woocommerce_form_field( 'delivery_date', array(
            'type'          => 'select',
            'class'         => array('my-field-class form-row-wide'),
            'label'         => __('Delivery Date'),
            'options'       => $this->getDeliveryDateOptions()
        ), $checkout->get_value( 'delivery_date' ));


        echo '</span>';


        echo '</div>';



        echo '<script>

                    function togglBillycartFields() {
                        // If its local pickup, hide the shipping address and delivery date stuff.
                        if ( !jQuery("#shipping_method").length
                            || jQuery("#shipping_method_0_local_pickup").is(":checked")) {

                            jQuery(".woocommerce-shipping-fields #ship-to-different-address, .woocommerce-shipping-fields .shipping_address").hide();
                            jQuery("#billy-cart-additional-fields span.delivery-date").hide();
                            jQuery("#billy-cart-additional-fields span.pickup-time").show();

                        } else {
                            // If its delivery zone, show the shipping address and delivery date stuff, hide the .

                            jQuery(".woocommerce-shipping-fields #ship-to-different-address, .woocommerce-shipping-fields .shipping_address").show();
                            jQuery("#billy-cart-additional-fields span.delivery-date").show();
                            jQuery("#billy-cart-additional-fields span.pickup-time").hide();

                        }
                    }

                    jQuery(document).ready(function(){

                        togglBillycartFields();

                        // Change events
                        jQuery("body").on("change", "#shipping_method :radio", function(){
                            togglBillycartFields();
                        });

                    });
            </script>';

        $_REQUEST['BILLYCART_CHECKOUT_FIELDS_RENDERED'] = 1;

    }



    function getDeliveryDateOptions () {
        $zoneid = $this->get_current_billy_zone();

        $zone = get_post($zoneid);
        $days = get_field(BILLYCART_DELIVERY_DAY_ACF_FIELD, $zone);

        $options = array();
        $checkDay = strtotime('Tomorrow'); //start with Tomorrow
        $i = 0;
        if (is_array($days) && count($days)) {
            while (count($options) <= BILLYCART_DELIVERY_DAY_MAX_OPTIONS && $i < BILLYCART_DELIVERY_DAY_SCOPE_DAYS) {

                //echo " - Checking ".date('l', $checkDay);
                if (in_array(date('l', $checkDay), $days)) {

                    if ($i == 0) {
                        //if we're looking at Tomorrow, make sure we're before the cutoff time today
                        if (get_field(BILLYCART_DELIVERY_CUTOFF_ACF_FIELD, $zone)) { //cutoff_time
                            $now = date('Hi', time());
                            $cutoff = get_field(BILLYCART_DELIVERY_CUTOFF_ACF_FIELD, $zone);
                            if ($now < $cutoff) {
                                //it is a valid day!
                                $options[date('l, d/m/Y', $checkDay)] = date('l, d/m/Y', $checkDay);
                            }
                        }

                    } else {
                        //it is a valid day!
                        $options[date('l, d/m/Y', $checkDay)] = date('l, d/m/Y', $checkDay);

                    }

                }

                $checkDay += (60*60*24); //next day
                $i++;
            }
        }



        return $options;
    }



    // Disable shipping button unless shipping method is selected
    function woocommerce_proceed_to_checkout(){

        $chosen_methods = WC()->session->get( 'chosen_shipping_methods' );
        $chosen_shipping = $chosen_methods[0];

        if ($chosen_shipping == null || $chosen_shipping == ''){
            echo "<script>jQuery('.checkout-button').attr('disabled','disabled');</script>";
        }

    }

    function woocommerce_before_order_notes(){

        if ($this->isBillyEnabled() == false){
            return;
        }

        global $woocommerce;
        $postcode = $woocommerce->customer->postcode;
        $zones = $this->getZoneIds($postcode);
        $suburb = $this->getZoneSuburbs($zones[0], $postcode);
        $day = $this->get_delivery_day($postcode);


        //todo: show chosen delivery type's date details.


        //echo "<p class='billy-cart-checkout form-row' style='clear:both;'>";
        //echo "<strong>Estimated delivery to postcode</strong> $postcode on $day";
        //echo "</p>";
    }

    function woocommerce_cart_needs_shipping_address($bool){

        $packages = WC()->shipping->get_packages();

        foreach ( $packages as $i => $package ) {
            $chosen_method = isset( WC()->session->chosen_shipping_methods[ $i ] ) ? WC()->session->chosen_shipping_methods[ $i ] : '';
        }
        if ( $chosen_method == 'billy_cart_shipping'){
            return false;
        }
        return $bool;
    }

    function isBillyEnabled(){
        $packages = WC()->shipping->get_packages();

        foreach ( $packages as $i => $package ) {
            $chosen_method = isset( WC()->session->chosen_shipping_methods[ $i ] ) ? WC()->session->chosen_shipping_methods[ $i ] : '';
        }
        if ( $chosen_method == 'billy_cart_shipping'){
            return true;
        }
        return false;
    }

    function add_position_to_session_callback(){
        if (isset($_POST['billy-zone'])){
            WC()->session->set('billy-zone', esc_attr($_POST['billy-zone']));
        }
        if (isset($_POST['billy-zone-reset'])){
            WC()->session->set('billy-zone', null);
        }
    }


    function get_current_billy_zone() {

        if (WC()->session->get('billy-zone')) {
            return WC()->session->get('billy-zone');
        }


        global $woocommerce;
        if ($woocommerce->customer->postcode) {
            $zones = $this->getZoneIds($woocommerce->customer->postcode);

            if (is_array($zones) && count($zones)) {
                if (count($zones) > 1) {
                    //More than one zone found
                    //do nothing and assume it's about to show the selector thing.
                    return false;

                } else {
                    //only 1 zone found
                    $zoneid = array_shift($zones);
                    WC()->session->set('billy-zone', $zoneid);
                }
            }

        }


        return WC()->session->get('billy-zone');
    }

    function woocommerce_cart_shipping_packages($package){


        $package[0]['billy-zone'] =  WC()->session->get('billy-zone');
        return $package;
    }




    /**
     * Load frontend CSS.
     * @access  public
     * @since   1.0.0
     * @return void
     */



    public function enqueue_styles () {
        wp_register_style( $this->_token . '-frontend', esc_url( $this->assets_url ) . 'css/frontend.css', array(), $this->_version );
        wp_enqueue_style( $this->_token . '-frontend' );
    } // End enqueue_styles ()

    /**
     * Load frontend Javascript.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function enqueue_scripts () {
        wp_register_script( $this->_token . '-frontend', esc_url( $this->assets_url ) . 'js/script.js', array( 'jquery' ), $this->_version );
        // Localize the script with new data

        $url = admin_url('admin-ajax.php');
        wp_localize_script( $this->_token . '-frontend', 'ajax_url', $url );
        wp_enqueue_script( $this->_token . '-frontend' );
    } // End enqueue_scripts ()

    /**
     * Load admin CSS.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function admin_enqueue_styles ( $hook = '' ) {
        wp_register_style( $this->_token . '-admin', esc_url( $this->assets_url ) . 'css/admin.css', array(), $this->_version );
        wp_enqueue_style( $this->_token . '-admin' );
    } // End admin_enqueue_styles ()

    /**
     * Load admin Javascript.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function admin_enqueue_scripts ( $hook = '' ) {
        wp_register_script( $this->_token . '-admin', esc_url( $this->assets_url ) . 'js/admin' . $this->script_suffix . '.js', array( 'jquery' ), $this->_version );
        wp_enqueue_script( $this->_token . '-admin' );
    } // End admin_enqueue_scripts ()







    /**
     * Main Billy_Cart Instance
     *
     * Ensures only one instance of Billy_Cart is loaded or can be loaded.
     *
     * @since 1.0.0
     * @static
     * @see Billy_Cart()
     * @return Main Billy_Cart instance
     */
    public static function instance ( $file = '', $version = '1.0.0' ) {
        if ( is_null( self::$_instance ) ) {
            self::$_instance = new self( $file, $version );
        }
        return self::$_instance;
    } // End instance ()

    /**
     * Cloning is forbidden.
     *
     * @since 1.0.0
     */
    public function __clone () {
        _doing_it_wrong( __FUNCTION__, __( 'Cheatin&#8217; huh?' ), $this->_version );
    } // End __clone ()

    /**
     * Unserializing instances of this class is forbidden.
     *
     * @since 1.0.0
     */
    public function __wakeup () {
        _doing_it_wrong( __FUNCTION__, __( 'Cheatin&#8217; huh?' ), $this->_version );
    } // End __wakeup ()

    /**
     * Installation. Runs on activation.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function install () {
        $this->_log_version_number();
    } // End install ()

    /**
     * Log the plugin version number.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    private function _log_version_number () {
        update_option( $this->_token . '_version', $this->_version );
    } // End _log_version_number ()


    function str_lreplace($search, $replace, $subject)
    {
        $pos = strrpos($subject, $search);

        if($pos !== false)
        {
            $subject = substr_replace($subject, $replace, $pos, strlen($search));
        }

        return $subject;
    }

    /**
     * @deprecated
     * @param $postcode
     * @return bool|string
     */
    function get_delivery_day($postcode){

        return false;


        $session_zone = WC()->session->get('billy-zone');
        //Get current time
        $now = date('Hi', time());
        $today = date('w', time());
        $tomorrow = $today + 1;
        if ($tomorrow > 7){
            $tomorrow = 1;
        }

        $zones = $this->getZoneIds($postcode);
        $allDays = array("1" => 'Monday', "2" => 'Tuesday', "3" => 'Wednesday', "4" => 'Thursday', "5" => 'Friday', "6" => 'Saturday', "7" => 'Sunday');

        // ONE ZONE FOUND
        if (count($zones) == 1 || (count($zones) > 1 && $session_zone != null)){

            $day = get_field('delivery_day', $zones[0]);
            $dayNumbers = $this->dayNumbers($day);

            $days = implode(', ', $day);
            $dayString = $this->str_lreplace(', ', ' and ', $days);
            $start = get_field('start_time', $zones[0]);
            $end = get_field('end_time', $zones[0]);
            $cutoff = get_field('cutoff_time', $zones[0]);
            $start  = date("g:ia", strtotime($start));
            $end  = date("g:ia", strtotime($end));

            $deliversTomorrow = in_array($tomorrow, $day);
            $nextDeliveryDay = $this->get_next_day($dayNumbers, $today);
            $nextDeliveryString = $allDays[$nextDeliveryDay];

            if ($now > $cutoff){
                $nextDeliveryDay = $this->get_next_day($dayNumbers, $tomorrow );

                $nextDeliveryString = $allDays[$nextDeliveryDay];
            }

            // Check for single day delivieries
            if ($nextDeliveryString == $allDays[$today]){

                $nextDeliveryString = $nextDeliveryString . " next week";
            }

            // Display message
            //if ($postcode && $chosen_method == 'billy_cart_shipping'){

            return $nextDeliveryString;




        }

    }
    public function shipping_method_message(){


        if (isset($_REQUEST['billy-message-shown']) && $_REQUEST['billy-message-shown'] ){
            return;
        }
        global $woocommerce;

        $postcode = $woocommerce->customer->postcode;
        $session_zone = $this->get_current_billy_zone();

        $packages = WC()->shipping->get_packages();

        //Get current time
        date_default_timezone_set('Australia/Brisbane');
        $now = date('Hi', time());
        $today = date('w', time());
        $tomorrow = $today + 1;
        if ($tomorrow > 7){
            $tomorrow = 1;
        }

        $zones = $this->getZoneIds($postcode);
        $allDays = array("1" => 'Monday', "2" => 'Tuesday', "3" => 'Wednesday', "4" => 'Thursday', "5" => 'Friday', "6" => 'Saturday', "7" => 'Sunday');

        // ONE ZONE FOUND
        if (count($zones) == 1 || (count($zones) > 1 && @$session_zone)){

            $day = get_field('delivery_day', $zones[0]);
            $dayNumbers = $this->dayNumbers($day);

            $days = implode(', ', $day);
            $dayString = $this->str_lreplace(', ', ' and ', $days);
            $start = get_field('start_time', $zones[0]);
            $end = get_field('end_time', $zones[0]);
            $cutoff = get_field('cutoff_time', $zones[0]);
            $start  = date("g:ia", strtotime($start));
            $end  = date("g:ia", strtotime($end));

            $deliversTomorrow = in_array($tomorrow, $day);
            $nextDeliveryDay = $this->get_next_day($dayNumbers, $today);
            $nextDeliveryString = $allDays[$nextDeliveryDay];

            if ($now > $cutoff){
                $nextDeliveryDay = $this->get_next_day($dayNumbers, $tomorrow );
                $nextDeliveryString = $allDays[$nextDeliveryDay];
            }

            // Check for single day delivieries
            if ($nextDeliveryString == $allDays[$today]){
                $nextDeliveryString = $nextDeliveryString . " next week";
            }

            // Display message
            if ($postcode){

                $suburb = $this->getZoneSuburbs($zones[0], $postcode);
                echo "<div class='woocommerce-info message shipping-estimate'>Deliveries to $postcode occur on $dayString between $start and $end.<br>Your next delivery day is on <strong>$nextDeliveryString</strong></div>";
            }


        } else if ($postcode != null && !count($zones)){ //postcode supplied but NO zones found. Oh No!
            echo "<div class='woocommerce-error message shipping-estimate'>‘Oh no’, says Billy! Deliveries to your suburb haven’t started yet but should be very soon!
            Email or call Billy to find out when deliveries to your area begin or check out our FAQ page for more info.
            info@meatatbillys.com.au or PH 07 33662912</div>";

        } else if ($postcode != null && count($zones)>1){ //postcode supplied but MANY zones found.
                echo "<div class='woocommerce-error message shipping-estimate'>Your postcode matches a few suburbs in different delivery zones.
                Please select your suburb for accurate delivery times.</div>";

        }



        $_REQUEST['billy-message-shown'] = true;


    }

    function dayNumbers($array){

        $ids = array();
        foreach ($array as &$value) {
            $ids[] = date('N', strtotime($value));
        }
        natsort($ids);
        return $ids;
    }

    function get_next_day($days, $today){

        $daysAfter = array();
        if (is_array($days)) {
            foreach ($days as &$value) {
                if ($value > $today) {
                    $daysAfter[] = $value;
                }
            }

            if (count($daysAfter) > 0) {
                return $daysAfter[0];
            } else {
                return $days[0];
            }
        }

    }


    public function getZoneIds($postcode){

        global $wpdb;

        $results = array();
        $rows = $wpdb->get_results(
            $wpdb->prepare(
                "
                        SELECT * 
                        FROM mab_postmeta
                        WHERE meta_key LIKE %s
                        AND meta_value LIKE %s
                    ",
                'postcodes_%_postcode',
                $postcode
            )
        );

        if( $rows )
        {
            $ids = array();
            foreach( $rows as $row )
            {
                $results[] =  $row->post_id;
            }
            $results = array_unique($results);

        }
        return $results;
    }




    public function getZoneSuburbs($id, $postcode){

        global $wpdb;

        $suburbs = array();

        if (have_rows('postcodes', $id)):

            // loop through the rows of data
            while ( have_rows('postcodes', $id) ) : the_row();
                // display a sub field value
                if (get_sub_field('postcode', $id) == $postcode){
                    $suburbs[] =  get_sub_field('suburb', $id);
                }

            endwhile;
            return $suburbs;

        endif;

        return array("Unknown");
    }



    public function init_shipping_method(){

        require_once('BillyCartShippingMethod.php');
    }
    public function add_shipping_method( $methods ) {
        $methods[] = 'Billy_Cart_Shipping_Method';
        return $methods;
    }

    private function acf_setup(){

        if( function_exists('acf_add_options_page') ) {

            acf_add_options_page(array(
                'page_title'    => 'Zones',
                'menu_title'    => 'Zones',
                'menu_slug'     => 'theme-general-settings',
                'capability'    => 'edit_posts',
                'redirect'      => false
            ));


        }
    }

    private function my_acf_json_load_point( $paths ) {

        // remove original path (optional)
        unset($paths[0]);

        // append path
        $paths[] = $this->dir . '/includes/advanced-custom-fields/fields';
        print_r($paths);

        // return
        return $paths;

    }


    public function register_custom_post_types(){

        $args = array(
            'public' => true,
            'menu_icon' => 'dashicons-admin-site',
            'label'  => 'Delivery Zones',
            'supports' => 'title',
            'public' => false,
            'show_ui' => true,
            'has_archive' => false,
            //'menu_position' => 35,
            //'show_in_menu' => 'edit.php'
            'show_in_menu' => true
        );
        register_post_type( 'delivery_zone', $args );

    }





    /*
    * META BOXES
    */

    public function create_meta_box(){


        add_meta_box(
            'wp_custom_attachment',
            'Postcode CSV Upload',
            array( $this,'render_custom_meta_box'),
            'delivery_zone',
            'side'
        );
    }


    public function render_custom_meta_box() {

        wp_nonce_field(plugin_basename(__FILE__), 'csv_upload_nonce');

        $html = '<p class="description">Upload your CSV here.</p>';
        $html .= '<input type="file" id="delivery_zone_csv" name="delivery_zone_csv" value="" size="25" />';
        $html .= '<strong>Warning</strong> Uploading a new CSV file will replace all exsisting postcodes<br>';
        $html .= '<a target="_blank" href="'.$this->assets_url . 'template.csv'.'">Download the CSV template.</a>';
        echo $html;

    }

    function add_edit_form_multipart_encoding() {
        echo ' enctype="multipart/form-data"';
    }

    function hog ($msg) {
        return @file_get_contents('http://projects.line26.com/hogger/?entry='.urlencode($msg));
    }



    function should_enable_postcode(){

        $postcode = WC()->customer->get_shipping_postcode();
        $packages = WC()->shipping->get_packages();
        $chosen_method = '';

        foreach ( $packages as $i => $package ) {
            $chosen_method = isset( WC()->session->chosen_shipping_methods[ $i ] ) ? WC()->session->chosen_shipping_methods[ $i ] : '';
        }

        // There's no postcode so ask to show it
        if (!$postcode || $chosen_method != 'billy_cart_shipping'){
            return true;
        }
        $zoneids = $this->getZoneIds($postcode);
        $count = count($zoneids);
        //echo "$postcode : $chosen_method : $count";

        // There are multiple zones so we'll override the postcode field with a selector
        if (count($zoneids) > 1){
            return true;
        }


        return true;
    }

    function upload_csv($id) {

        // Required for CSV files created on OSX computers
        ini_set("auto_detect_line_endings", true);

        $c = print_r($_FILES, true);
        $this->hog("$c");

        if (isset($_POST['csv_upload_nonce']) == false){
            return $id;
        }
        /* --- security verification --- */
        if(!wp_verify_nonce($_POST['csv_upload_nonce'], plugin_basename(__FILE__))) {
            return $id;
        } // end if

        if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
            return $id;
        } // end if

        if('delivery_zone' == $_POST['post_type']) {
            if(!current_user_can('edit_page', $id)) {
                return $id;
            } // end if
        } else {
            if(!current_user_can('edit_page', $id)) {
                return $id;
            } // end if
        } // end if
        /* - end security verification - */




        // Make sure the file array isn't empty
        if(!empty($_FILES['delivery_zone_csv']['name'])) {

            // Setup the array of supported file types. In this case, it's just PDF.
            $supported_types = array('text/csv');



            // Get the file type of the upload
            $arr_file_type = wp_check_filetype(basename($_FILES['delivery_zone_csv']['name']));
            $uploaded_type = $arr_file_type['type'];

            // Check if the type is supported. If not, throw an error.
            if(in_array($uploaded_type, $supported_types)) {

                // Use the WordPress API to upload the file
                $csv = file_get_contents($_FILES['delivery_zone_csv']['tmp_name']);
                $filepath = $_FILES['delivery_zone_csv']['tmp_name'];

                $this->hog("Type $uploaded_type $filepath");


                // Loop variables
                $rowi = 0;
                $headers = array();
                $records = array();

                // Perform loop
                if (($handle = fopen($filepath, "r")) !== FALSE) {
                    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                        $rowi++;

                        if ($rowi == 1) {
                            $num = count($data);
                            for ($c=0; $c < $num; $c++) {
                                $headers[] = strtolower(str_replace(' ', '_', $data[$c]));
                                $this->hog("Header $data[$c] $num, $c");
                            }
                            continue;
                        }


                        $record = array();
                        for ($c=0; $c < $num; $c++) {
                            $record[$headers[$c]] = $data[$c];
                        }
                        $records[] = $record;

                    }
                    fclose($handle);
                }

                $r = print_r($records, true);
                $this->hog("Records<br><pre>$r</pre>");



                // Update ACF Fields
                $field_key = "postcodes";
                //$value = get_field($field_key, $post_id);
                update_field( $field_key, $records, $id );



                return $id;

            } else {
                //wp_die("The file type that you've uploaded is not a CSV.");
            } // end if/else

        } // end if
        else {
            return $id;
        }

        return $id;

    }




    function billy_cart_zone_selector() {

        //Andrew

        if(isset($_REQUEST['billy_cart_zone_selector'])) return;
        $_REQUEST['billy_cart_zone_selector'] = 1;

        $postcode = WC()->customer->get_shipping_postcode();
        $packages = WC()->shipping->get_packages();

        foreach ( $packages as $i => $package ) {
            $chosen_method = isset( WC()->session->chosen_shipping_methods[ $i ] ) ? WC()->session->chosen_shipping_methods[ $i ] : '';
        }
        //echo "$postcode $chosen_method";
        // There's no postcode so ask to show it
//        if (!$postcode || $chosen_method != 'billy_cart_shipping'){
        if (!$postcode){
            echo "<div class='woocommerce-info message shipping'>Enter your postcode to see delivery times for your area.</div>";
            return;
        }
        $zoneids = $this->getZoneIds($postcode);

        $count = count($zoneids);
        $session_zone = $this->get_current_billy_zone();
        //print_r($zoneids);
        //print_r($session_zone);


        echo '<style>.billy-radio input{display: none}</style>';

        // There are multiple zones so we'll override the postcode field with a selector
        if ((count($zoneids) > 1) && (!$session_zone)){

            //if (@$_REQUEST['billy_cart_zone_selector'] == true) return;
            //$_REQUEST['billy_cart_zone_selector'] = true;

            echo apply_filters('billy_cart_multiple_message', "Please select the correct suburb for $postcode<br>");

            foreach($zoneids as $i =>  $zone){
                $title = get_the_title($zone);
                $suburbs = $this->getZoneSuburbs($zone, $postcode);

                foreach($suburbs as $key => $suburb) {
                    $active = "";
                    if (@$session_zone && $session_zone == $zone) {
                        $active = "active";
                    }

                    echo "<label id='' for='zoneid-$zone' class='button billy-radio $active'>";
                    echo $suburb;
                    echo "<input id='zoneid-$zone' type='radio' name='billy-zone' value='$zone' />";
                    echo "</label>";
                }
                //echo "<a href='$zone'>$title</a>";
            }

        } elseif (count($zoneids) > 1 && $session_zone != null){
            //if (@$_REQUEST['billy_cart_zone_selector'] == true) return;
            //$_REQUEST['billy_cart_zone_selector'] = true;
            echo "<label class='button billy-radio' id='billy-cart-reset-label'>Reset suburb preference<input type='radio' name='billy-zone-reset' value='reset' id='billy-cart-reset-button'/></label>";

        } elseif (count($zoneids) == 1) {
            WC()->session->set('billy-zone', $zoneids[0]);
        }
    }


    function woocommerce_locate_template( $template, $template_name, $template_path ) {

        global $woocommerce;

        $_template = $template;

        if ( ! $template_path ) $template_path = $woocommerce->template_url;

        $plugin_path  = $this->dir . '/woocommerce/';

        // Look within passed path within the theme - this is priority

        $template = locate_template(

            array(

                $template_path . $template_name,

                $template_name

            )

        );


        // Modification: Get the template from this plugin, if it exists

        if (file_exists( $plugin_path . $template_name ) )

            $template = $plugin_path . $template_name;



        // Use default template

        if ( ! $template )

            $template = $_template;



        // Return what we found
        return $template;

    }



    /**
     * woo_add_checkout_field_date_range_limit
     *
     * @access      public
     * @since       1.0
     * @return      void
     * See: http://jqueryui.com/datepicker/#min-max
     */
    function woo_add_checkout_field_date_range_limit() {
        if ( is_checkout() ) {
            ?>
            <script type="text/javascript">
                jQuery( document ).ready( function ( e ) {
                    jQuery(function() {
                        jQuery( "#pickup_date" ).datepicker({ minDate: "+1D", maxDate: "+8D" });
                    });
                });
            </script>
        <?php
        }
    }




}