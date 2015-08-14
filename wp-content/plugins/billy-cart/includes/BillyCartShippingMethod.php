<?php


if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly
}


if ( ! class_exists( 'Billy_Cart_Shipping_Method' ) ) {
    class Billy_Cart_Shipping_Method extends WC_Shipping_Method
    {


        /**
         * __construct function.
         *
         * @access public
         * @return void
         */
        function __construct()
        {
            $this->id = 'billy_cart_shipping';
            $this->method_title = __('Local Zone Delivery', 'woocommerce');
            $this->init();
        }



        /**
         * init function.
         *
         * @access public
         * @return void
         */
        function init()
        {
            // Load the settings.
            $this->init_form_fields();
            $this->init_settings();

            // Define user set variables
            $this->title = $this->get_option('title');
            $this->type = $this->get_option('type');
            $this->fee = $this->get_option('fee');
            $this->type = $this->get_option('type');
            $this->codes = $this->get_option('codes');
            $this->availability = $this->get_option('availability');
            $this->countries = $this->get_option('countries');

            add_action('woocommerce_update_options_shipping_' . $this->id, array($this, 'process_admin_options'));
        }


        /**
         * calculate_shipping function.
         *
         * @access public
         * @param array $package (default: array())
         * @return void
         */
        function calculate_shipping($package = array())
        {


            $Cart = new BillyCart();
            $postcode = $package['destination']['postcode'];
            $session_zone = WC()->session->get('billy-zone');

            $zoneIds = $Cart->getZoneIds($postcode);

            error_log($postcode);


            // No zones found so don't add rate
            if (count($zoneIds) < 1) {
                WC()->session->set('billy-zone', null);
                return;
            }

            // Check that the zone matches the session
            elseif(count($zoneIds) == 1 && isset($session_zone)){

                WC()->session->set('billy-zone', null);
                $this->setRate($zoneIds[0]);
            }

            // We just have 1 zone but no session
            elseif (count($zoneIds) == 1){
                error_log("1 zoines no session");

                $this->setRate($zoneIds[0]);
            }


            // We have more than one zone and a  session
            elseif(count($zoneIds) > 1 && $session_zone != null){
                error_log("Many zones 1 session");

                // Check that the session matches a zone id
                if (in_array($session_zone, $zoneIds)){
                    error_log("match");

                    $this->setRate($session_zone);
                } else {
                    error_log("no match");

                    // Multipel zones and session but the session doesn't match the zones
                    WC()->session->set('billy-zone', null);
                    $this->setRate($zoneIds[0], $this->getMaxPrice($zoneIds), true);
                }
            }

            // We have multiple zones but no session set
            elseif(count($zoneIds) > 1 && $session_zone == null){
                error_log("multiple zoines no session");
                $this->setRate($zoneIds[0], $this->getMaxPrice($zoneIds), true);
            }




        }


        function getMaxPrice($zone_ids){

            $values = array();
            foreach ($zone_ids as $k=>$zone){
                $values[] = get_field('price', $zone);
            }
            sort($values);
            error_log(print_r($values, true));
            return end($values);

        }
        function setRate($zoneid, $overrideprice = null, $confirmLocation = false){
            $title = $this->title;
            $price = get_field('price', $zoneid);
            if ($overrideprice != null){
                $price = $overrideprice;
            }

            if ($confirmLocation == true){
                //    $title = $this->title . ' (Please confirm your suburb below)';

            }

            error_log($title);
            $shipping_total = 0;

            $fee = (trim($this->fee) == '') ? 0 : $this->fee;

            if ($this->type == 'fixed') $shipping_total = $this->fee;

            if ($this->type == 'percent') $shipping_total = $package['contents_cost'] * ($this->fee / 100);

            if ($this->type == 'product') {
                foreach ($package['contents'] as $item_id => $values) {
                    $_product = $values['data'];

                    if ($values['quantity'] > 0 && $_product->needs_shipping()) {
                        $shipping_total += $this->fee * $values['quantity'];
                    }
                }
            }




            $rate = array(
                'id' => $this->id,
                'label' => $title,
                'cost' => $price, //$shipping_total
                'type' => 'fixed'
            );

            $this->add_rate($rate);

        }


        /**
         * init_form_fields function.
         *
         * @access public
         * @return void
         */
        function init_form_fields()
        {
            $this->form_fields = array(
                'enabled' => array(
                    'title' => __('Enable', 'woocommerce'),
                    'type' => 'checkbox',
                    'label' => __('Enable local delivery', 'woocommerce'),
                    'default' => 'no'
                ),
                'title' => array(
                    'title' => __('Title', 'woocommerce'),
                    'type' => 'text',
                    'description' => __('This controls the title which the user sees during checkout.', 'woocommerce'),
                    'default' => __('Local Delivery', 'woocommerce'),
                    'desc_tip' => true,
                ),
                /*
                'fee' => array(
                    'title' => __('Default Fee', 'woocommerce'),
                    'type' => 'price',
                    'description' => __('What fee do you want to charge for local delivery, disregarded if you choose free. Leave blank to disable.', 'woocommerce'),
                    'default' => '',
                    'desc_tip' => true,
                    'placeholder' => wc_format_localized_price(0)
                ),
                */
                'availability' => array(
                    'title' => __('Method availability', 'woocommerce'),
                    'type' => 'select',
                    'default' => 'all',
                    'class' => 'availability',
                    'options' => array(
                        'all' => __('All allowed countries', 'woocommerce'),
                        'specific' => __('Specific Countries', 'woocommerce')
                    )
                ),
                'countries' => array(
                    'title' => __('Specific Countries', 'woocommerce'),
                    'type' => 'multiselect',
                    'class' => 'chosen_select',
                    'css' => 'width: 450px;',
                    'default' => '',
                    'options' => WC()->countries->get_shipping_countries(),
                    'custom_attributes' => array(
                        'data-placeholder' => __('Select some countries', 'woocommerce')
                    )
                )
            );
        }


        /**
         * admin_options function.
         *
         * @access public
         * @return void
         */
        function admin_options()
        {
            ?>
            <h3><?php echo $this->method_title; ?></h3>

            <p><?php _e('Zone bassed local delivery', 'woocommerce'); ?></p>
            <table class="form-table">
                <?php $this->generate_settings_html(); ?>
            </table> <?php
        }


        /**
         * is_available function.
         *
         * @access public
         * @param array $package
         * @return bool
         */
        function is_available($package)
        {
            return true;
            if ($this->enabled == "no") return false;

            // If post codes are listed, let's use them.
            $codes = '';
            if ($this->codes != '') {
                foreach (explode(',', $this->codes) as $code) {
                    $codes[] = $this->clean($code);
                }
            }

            if (is_array($codes)) {

                $found_match = false;

                if (in_array($this->clean($package['destination']['postcode']), $codes)) {
                    $found_match = true;
                }


                // Pattern match
                if (!$found_match) {

                    $customer_postcode = $this->clean($package['destination']['postcode']);
                    foreach ($codes as $c) {
                        $pattern = '/^' . str_replace('_', '[0-9a-zA-Z]', $c) . '$/i';
                        if (preg_match($pattern, $customer_postcode)) {
                            $found_match = true;
                            break;
                        }
                    }

                }


                // Wildcard search
                if (!$found_match) {

                    $customer_postcode = $this->clean($package['destination']['postcode']);
                    $customer_postcode_length = strlen($customer_postcode);

                    for ($i = 0; $i <= $customer_postcode_length; $i++) {

                        if (in_array($customer_postcode, $codes)) {
                            $found_match = true;
                        }

                        $customer_postcode = substr($customer_postcode, 0, -2) . '*';
                    }
                }

                if (!$found_match) {
                    return false;
                }
            }

            // Either post codes not setup, or post codes are in array... so lefts check countries for backwards compatibility.
            if ($this->availability == 'specific') {
                $ship_to_countries = $this->countries;
            } else {
                $ship_to_countries = array_keys(WC()->countries->get_shipping_countries());
            }

            if (is_array($ship_to_countries)) {
                if (!in_array($package['destination']['country'], $ship_to_countries)) {
                    return false;
                }
            }

            // Yay! We passed!
            return apply_filters('woocommerce_shipping_' . $this->id . '_is_available', true, $package);
        }


        /**
         * clean function.
         *
         * @access public
         * @param mixed $code
         * @return string
         */
        function clean($code)
        {
            return str_replace('-', '', sanitize_title($code)) . (strstr($code, '*') ? '*' : '');
        }
    }
}
?>