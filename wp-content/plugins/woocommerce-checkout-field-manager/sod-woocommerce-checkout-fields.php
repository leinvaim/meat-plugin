<?php 
/*
Plugin Name: Checkout Field Manager for WooCommerce
Plugin URI: http://61extensions.com
Description: Allows you to customize the checkout fields and add new ones during the WooCommerce checkout process. 
Version: 1.0.22
Author: 61 Extensions
Author URI: http://61extensions.com
Requires at least: 3.1
Tested up to: 3.5
*/
/*
 * Copyright Sixty One Designs, Inc. 2012
 */


require_once('classes/class-sod-woocommerce-checkout-fields.php');

/**
   * Localization
   */
load_plugin_textdomain('sod_wc_checkout_fields', false, dirname( plugin_basename( __FILE__ ) ) . '/languages');
  
/*
 * Menu and Admin Forms action
 */
add_action('admin_menu', 'sod_woocommerce_checkout_fields_admin_menu',99);
function sod_woocommerce_checkout_fields_admin_menu() {
	add_submenu_page('woocommerce', __('Checkout Fields', 'sod_wc_checkout_fields'), __('Checkout Fields', 'sod_wc_checkout_fields'), 'administrator', 'checkout_manager', 'sod_checkout_manager_admin_options');
	
}
/*
 * Wordpress settings API
 */
add_action( 'admin_init', 'sod_woocommerce_checkout_manager_settings' );
function sod_woocommerce_checkout_manager_settings() {
	
	global $sod_plugins;	
	$plugin = get_plugin_data(__FILE__);
	$sod_plugins[$plugin['Name']] = array(
		'SOD_NOTIFIER_PLUGIN_NAME'			=> $plugin['Name'],
		'SOD_NOTIFIER_PLUGIN_FOLDER_NAME'	=> plugin_basename( dirname(__FILE__) ),
		'SOD_NOTIFIER_PLUGIN_FILE_NAME'		=> basename(__FILE__),
		'SOD_NOTIFIER_PLUGIN_XML_FILE'		=> 'c6de2e2591f421a4b57b67115425867d',
	);
	include(plugin_dir_path( __FILE__ ).'notifier/sod-plugin-update-notifier.php');	
	
	register_setting('woocommerce_checkout_billing_fields', 'woocommerce_checkout_billing_fields' );
	register_setting('woocommerce_checkout_shipping_fields', 'woocommerce_checkout_shipping_fields' );
	register_setting('woocommerce_checkout_additional_fields', 'woocommerce_checkout_additional_fields' );
	register_setting('woocommerce_checkout_settings', 'woocommerce_checkout_settings' );
	
	add_settings_section( 'woocommerce_checkout_settings_form', __('Settings', 'sod_wc_checkout_fields'), 'woocommerce_checkout_settings_form', 'woocommerce_checkout_settings');
	add_settings_section( 'woocommerce_checkout_billing_fields_form', __('Billing Fields', 'sod_wc_checkout_fields' ), 'woocommerce_checkout_billing_fields_form', 'woocommerce_checkout_billing_fields');
	add_settings_section( 'woocommerce_checkout_shipping_fields_form', __('Shipping Fields', 'sod_wc_checkout_fields' ), 'woocommerce_checkout_shipping_fields_form', 'woocommerce_checkout_shipping_fields');
	add_settings_section( 'woocommerce_checkout_additional_fields_form', __( 'Additional Fields', 'sod_wc_checkout_fields' ), 'woocommerce_checkout_additional_fields_form', 'woocommerce_checkout_additional_fields' );
	
}

//Tabs 
function sod_checkout_field_options_tabs() {
	$current_tab = isset( $_GET['tab'] ) ? $_GET['tab'] : 'billing';
	$tabs = array(
		'billing'	=>	__('Billing', 'sod_wc_checkout_fields'),
		'shipping'	=>	__('Shipping', 'sod_wc_checkout_fields'),
		'additional'=>	__('Additional', 'sod_wc_checkout_fields'),
		'settings'	=>	__('Settings', 'sod_wc_checkout_fields'),
		'faq'		=>  __('FAQ','sod_wc_checkout_fields')
		);
		screen_icon('woocommerce');
	echo '<h2 class="nav-tab-wrapper">';
	foreach ( $tabs as $tab_key => $tab_caption ) {
		$active = $current_tab == $tab_key ? 'nav-tab-active' : '';
		echo '<a class="nav-tab ' . $active . '" href="?page=checkout_manager&tab=' . $tab_key . '">' . $tab_caption . '</a>';	
	}
	echo '</h2>';
}
//Main Options Page Output
function sod_checkout_manager_admin_options(){
	$SOD_Woocommerce_Checkout_Fields = new SOD_Woocommerce_Checkout_Fields;
	?>
	<div class="wrap woocommerce">
		<h2><?php _e('Checkout Field Manager', 'sod_wc_checkout_fields'); ?></h2>
		<?php sod_checkout_field_options_tabs();
		$tab = isset( $_GET['tab'] ) ? $_GET['tab'] : 'billing';?>
		<?php if($tab=="billing"):?>
			<form method="post" action="options.php" class="woocommerce_checkout_manager">
			<?php
			 	wp_nonce_field( 'woocommerce_checkout_billing_fields' );
				settings_fields('woocommerce_checkout_billing_fields');?>
				<?php do_settings_sections('woocommerce_checkout_billing_fields');
				
			?>
			</form>
		<?php elseif ($tab=="shipping"):?>
			<form method="post" action="options.php" class="woocommerce_checkout_manager">
			<?php 
				wp_nonce_field( 'woocommerce_checkout_shipping_fields' );
				settings_fields('woocommerce_checkout_shipping_fields');?>
					
				<?php do_settings_sections('woocommerce_checkout_shipping_fields');
				
			?>
			</form>
		<?php elseif ($tab=="additional"):?>
			<form method="post" action="options.php" class="woocommerce_checkout_manager">
			<?php
				wp_nonce_field( 'woocommerce_checkout_additional_fields' );
				settings_fields( 'woocommerce_checkout_additional_fields' ); ?>
				
				<?php do_settings_sections( 'woocommerce_checkout_additional_fields' );
			
			?>
			</form>
		<?php elseif ($tab=="settings"):?>
			<form method="post" action="options.php" class="woocommerce_checkout_manager">
			<?php 
				wp_nonce_field( 'woocommerce_checkout_settings' );
				settings_fields('woocommerce_checkout_settings');?>
					
				<?php do_settings_sections('woocommerce_checkout_settings');
				
			?>
			</form>
			
		<?php elseif ($tab == "faq"):?>
			<h3><?php _e('FAQ', 'sod_wc_checkout_fields' ); ?></h3>
			<ul>
				<li>
					<h4><?php _e('What is the CSS Classes field for?', 'sod_wc_checkout_fields' ); ?></h4>
					<p><?php _e('If you need to assign a specific css class to a field, simply put the class name in this field.  It will be added to the classes of paragraph element that surrounds the new field when it is generated.', 'sod_wc_checkout_fields' ); ?></p>
				</li>
				<li><h4><?php _e('How do I use the "select" field type?', 'sod_wc_checkout_fields' ); ?></h4>
					<p><?php _e('To setup items for selection in the Select field type, in the placeholder box, enter the options you want your customer to have and separate them using a pipe character "|".', 'sod_wc_checkout_fields' ); ?></p>
					<p><?php _e('For instance to get the dropdown options of "Option 1", "Option 2", "Option 3", you would simply enter <strong>Option 1|Option 2|Option 3</strong> in the placeholder input box.', 'sod_wc_checkout_fields' ); ?></p>
				</li>
				<li>
					<h4><?php _e('How do I use the "Radio Group" field type?', 'sod_wc_checkout_fields'); ?></h4>
					<p><?php _e('Radio buttons are created in the exact same fashion as "Select" types.  Each option you create (pipe separated in the placeholder box) will be a radio the customer can choose during checkout.', 'sod_wc_checkout_fields'); ?></p>
				</li>
				<li>
					<h4><?php _e('How do I use the "Heading" field type?', 'sod_wc_checkout_fields'); ?></h4>
					<p><?php _e('The heading field can be used to seperate sections of fields.  There are no values saved with this field, it is simply for display purposes.', 'sod_wc_checkout_fields'); ?></p>
					<p><?php _e('To setup a Heading field, the value you place in the "Label" field will be what is displayed on the checkout.  The heading will be output as an H3 heading tag.  You can add your own CSS class to it with the CSS Classes option.  But all other options (placeholder, required, and position) have no effect on the display of the heading.', 'sod_wc_checkout_fields'); ?></p>
				</li>
				<li>
					<h4><?php _e('Date Picker Options', 'sod_wc_checkout_fields'); ?></h4>
					<p><?php _e('You can set some date options for your date picker by first adding a date field to one of the checkout field sections.  After you click the save button, you\'ll notice a section in green that appears below it. You can select the date format you want as well as minimum date allowable and maximum date allowable.', 'sod_wc_checkout_fields'); ?></p>
					<p><?php _e('Mindate/Maxdate are set with the following syntax:', 'sod_wc_checkout_fields'); ?>
						<ul>
							<li><?php _e('A single whole number represents days. For example: 10 would set the min or max date to 10 days from today.  -10 would set it to 10 days before today.', 'sod_wc_checkout_fields'); ?></li>
							<li><?php _e('Using D M Y syntax.  For example: -2Y would set the allowable date to 2 years ago.  You can combine these.  So, if you want the minimum date to be exactly 2 years, 3 months, and 2 days ago - you would put 2Y 3M 2D in the box.', 'sod_wc_checkout_fields' ); ?></li>
							<li><?php _e('Leave the fields blank to not enforce any date restrictions.', 'sod_wc_checkout_fields'); ?></li>
							<li><?php _e('Note: Min/Max dates are relative to the current day.', 'sod_wc_checkout_fields'); ?></li>
						</ul>
					</p>
					<p><?php _e('A real world example would be requiring a lead time for product preparation prior to a delivery date.  A shop could put a 3 in the Min Date field to force the customer to pick a delivery date that is AT LEAST 3 days from the date of order.', 'sod_wc_checkout_fields'); ?></p>
				</li>
				<li>
					<p><?php _e('Using the "Disable Days" feature, will allow you to assign days that your customer CANNOT choose.  For example, if you only make deliveries on weekdays, you could select Sat and Sun from the disallowed days field.  This will prevent your customers from choosing days that you don\'t deliver.', 'sod_wc_checkout_fields'); ?></p>
				</li>
			</ul>
		<?php endif;?>
    </div>
    
    
<?php }
//Shipping Form
function woocommerce_checkout_shipping_fields_form(){
	$SOD_Woocommerce_Checkout_Fields = new SOD_Woocommerce_Checkout_Fields;
	$SOD_Woocommerce_Checkout_Fields->shipping_fields_form();
}
//Billing Form
function woocommerce_checkout_billing_fields_form(){
	$SOD_Woocommerce_Checkout_Fields = new SOD_Woocommerce_Checkout_Fields;
	$SOD_Woocommerce_Checkout_Fields->billing_fields_form();
}
//Additional Form
function woocommerce_checkout_additional_fields_form(){
	$SOD_Woocommerce_Checkout_Fields = new SOD_Woocommerce_Checkout_Fields;
	$SOD_Woocommerce_Checkout_Fields->additional_fields_form();
}
function woocommerce_checkout_settings_form(){
	$SOD_Woocommerce_Checkout_Fields = new SOD_Woocommerce_Checkout_Fields;
	$SOD_Woocommerce_Checkout_Fields->settings_form();
}
/*
 * Add the scripts actions
 */
add_action('admin_enqueue_scripts', 'sod_woocommerce_checkout_manager_admin_scripts');
add_action('wp_enqueue_scripts', 'sod_woocommerce_checkout_manager_scripts',1000);
function sod_woocommerce_checkout_manager_admin_scripts() {
	wp_register_script('checkout_fields_tips_js', plugins_url('assets/js/easyTooltip.js',(__FILE__)));
	wp_register_script('checkout_fields_js', plugins_url('assets/js/sod-woo-checkout-fields.js',(__FILE__)));
	wp_register_style('checkout_fields_admin_css', plugins_url('assets/css/admin.css',(__FILE__)), false,'1.0.0');
	
	wp_enqueue_script('jquery');
	wp_enqueue_script('jquery-ui-sortable');
	wp_enqueue_script('jquery-ui-accordion');
	wp_enqueue_script('jquery-ui-datepicker');
	wp_enqueue_script('checkout_fields_js');
	wp_enqueue_script('checkout_fields_tips_js');
	wp_enqueue_style('checkout_fields_admin_css');
	
	$args = array(
		'siteurl'=>get_site_url(),
		'ajax_nonce'=> wp_create_nonce('ajax_nonce'),
		
	);
	wp_localize_script('checkout_fields_js','checkoutmanager',$args);
}
function sod_woocommerce_checkout_manager_scripts(){
	if(is_checkout()):
		wp_register_style('checkout_fields_css', plugins_url('assets/css/frontend.css',(__FILE__)), false,'1.0.0');
		wp_register_script('checkout_fields_ui_js', plugins_url('assets/js/sod-woo-checkout-field-ui.js',(__FILE__)));
		wp_enqueue_script('jquery');
		wp_enqueue_script('jquery-ui-sortable');
		wp_enqueue_script('jquery-ui-datepicker');
		wp_enqueue_script('checkout_fields_ui_js');
		wp_enqueue_style('checkout_fields_css');
	endif;
}


/*
 *Filter the Billing / Shipping Fields 
 */
add_filter( 'woocommerce_billing_fields', 'sod_woocommerce_checkout_manager_billing_fields', 60);
add_filter( 'woocommerce_shipping_fields', 'sod_woocommerce_checkout_manager_shipping_fields', 60 );
add_filter('woocommerce_checkout_fields', 'sod_woocommerce_checkout_manager_fields', 9999);
add_filter('woocommerce_form_field_date', 'sod_woocommerce_checkout_manager_date_fields',10,4);
add_filter( 'woocommerce_form_field_selects', 'sod_woocommerce_checkout_manager_select_fields', 9, 4 );
add_filter( 'woocommerce_form_field_radios', 'sod_woocommerce_checkout_manager_radio_fields', 11, 4 );
add_filter( 'woocommerce_form_field_heading', 'sod_woocommerce_checkout_manager_heading_fields', 12, 4 );

function sod_woocommerce_checkout_manager_heading_fields( $var, $key, $args, $value ){
	$field = '<h3 class="cf-heading ' . $args['css_class'] . '" name="' . $key . '" id="' . $key . '">'. $args['label'] . '</h3>';
	return $field;
}

function sod_woocommerce_checkout_manager_radio_fields( $var, $key, $args, $value ){
	$radios = '';
	$options = explode("|", $args['placeholder'] );

	foreach($options as $option):
		if($option <> '')
			$radios .= '<input type="radio" name="' . $key . '" value="' . $option . '">' . $option . '<br />';
	endforeach;

	$required = ( $args['required']  ) ? ' <abbr class="required" title="' . esc_attr__( 'required', 'woocommerce'  ) . '">*</abbr>' : '';
	$field = '<p class="form-row ' . implode( ' ', $args['class'] ) .'" id="' . $key . '_field">
					<label for="' . $key . '" class="' . implode( ' ', $args['label_class'] ) .'">' . $args['label'] . $required . '</label>
					' . $radios . '
				</p>';
	
	return $field;
}
function sod_woocommerce_checkout_manager_select_fields( $var, $key, $args, $value ){
	$select_list = '';
	$options = explode("|", $args['placeholder'] );
	foreach($options as $option):
		if($option <> '')
			$select_list .= '<option value="' . $option . '" '. selected( $value, $option, false ) . '>' . $option .'</option>';
	endforeach;

	$required = ( $args['required']  ) ? ' <abbr class="required" title="' . esc_attr__( 'required', 'woocommerce'  ) . '">*</abbr>' : '';
	$field = '<p class="form-row ' . implode( ' ', $args['class'] ) .'" id="' . $key . '_field">
					<label for="' . $key . '" class="' . implode( ' ', $args['label_class'] ) .'">' . $args['label'] . $required . '</label>
					<select name="' . $key . '" id="' . $key . '" class="select ' . $args['css_class'] . '">
						' . $select_list . '
					</select>
				</p>';
	
	return $field;
}
function sod_woocommerce_checkout_manager_date_fields($var,$key, $args, $value){
	$required = ( $args['required']  ) ? ' <abbr class="required" title="' . esc_attr__( 'required', 'woocommerce'  ) . '">*</abbr>' : '';
	$field = '<p class="form-row ' . implode( ' ', $args['class'] ) .'" id="' . $key . '_field">
					<label for="' . $key . '" class="' . implode( ' ', $args['label_class'] ) .'">' . $args['label'] . $required . '</label>
					<input type="text" class="input-text ' . $args['css_class'] . '" name="' . $key . '" id="' . $key . '" placeholder="' . $args['placeholder'] . '" value="'. $value.'" />
				</p>';
	/*
	 * 
	 * generate the js for this date picker
	 * Date format, Min Date, Max Date, Days of the week
	 * 
	 */
	$format = (isset($args['date_format']) ? $args['date_format'] : '');
	$min = (isset($args['min_date']) ? $args['min_date'] : '');
	$max = (isset($args['max_date']) ? $args['max_date'] : '');
	$date_format = ($format == '') ? 'mm/dd/yy' : $format;
	$jq_options = 'dateFormat: "' . $date_format . '",';
	$jq_options .= ($min == '') ? '' : 'minDate: "' . $min . '",';
	$jq_options .= ($max == '') ? '' : 'maxDate: "' . $max . '",';
	if(isset($args['disabled_days'])):
		$disabled = '[';
		foreach( $args['disabled_days'] as $sod_day=>$day_value ):
			$disabled .= $sod_day . ', ';
		endforeach;
		$disabled .= ']';
		$jq_options .= 'beforeShowDay: function(date){
								var daysToDisable = ' . $disabled . ';
								var day = date.getDay();
								for (i = 0; i < daysToDisable.length; i++) {
									if (jQuery.inArray(day, daysToDisable) != -1) {
										return [false];
									}
								}
								return [true];
						}';
	endif; 
	$field .= '<script type="text/javascript">
		jQuery(document).ready(function(){
				jQuery("#' . $key . '").datepicker({
					 ' . $jq_options . '
				});
		});
		</script>';
	return $field;
}

function sod_woocommerce_checkout_manager_fields($checkout_fields){
	//$ship_to_billing = isset($_POST['shiptobilling']) ? 1 : 0;
	//if($ship_to_billing==1):
		//$checkout_fields['shipping'] = sod_woocommerce_checkout_manager_billing_fields( $checkout_fields['billing'] );
	//else:	

	$checkout_fields['shipping'] = sod_woocommerce_checkout_manager_shipping_fields( $checkout_fields['shipping'] );
	$checkout_fields['billing']  = sod_woocommerce_checkout_manager_billing_fields( $checkout_fields['billing'] );
	$checkout_fields['order'] = sod_woocommerce_checkout_manager_additional_fields( $checkout_fields['order'] );
	//endif;
	return $checkout_fields;
	
}

//Filter the Shipping Fields
function sod_woocommerce_checkout_manager_shipping_fields($shipping){
	
	$cm_fields = get_option('woocommerce_checkout_shipping_fields');
		
		if($cm_fields):
			foreach($cm_fields as $key=>$cm_field){
				$classes = $cm_field['class'] . ', ' . $cm_field['css_class'];
				$class 	= explode(",",$classes);//explode(",",$cm_field['class']);
				
				$custom_class 	= explode(",",$cm_field['css_class']);
				
				switch(strtolower($cm_field['type'])){
					case "date":
						$class[]= 'date'; 
						$cm_field['type']="text";
						$cm_field['class']=$class;
					break;
					case "checkbox":
						$class[]= 'checkbox'; 
						$cm_field['class']=$class;
					break;
					case "country":
						if(!in_array('update_totals_on_change', $class)):
							$class[] = 'update_totals_on_change';
						endif;
						if(!in_array('country_select', $class)):
							$class[] = 'country_select';
						endif;
						break;
					
				}
				
				if(in_array('sod-clear',$class) || in_array('form-row-last',$class )):
					$cm_fields[$key]['clear'] = 'yes';
					$class = array_diff($class, array('sod-clear'));
				endif;
				if($cm_field['name']=="shipping_state"):
					$cm_field['rel'] = 'shipping_country';
				endif;
				if($cm_field['name']=="shipping_country"):
					$cm_field['rel'] = 'shipping_state';
				endif;
				
				if(array_key_exists('required', $cm_field)):
					if($cm_field['required']=="on"):
						$cm_field['required']=true;
					else:
						$cm_field['required']=false;
					endif;
				endif;
			
				unset($cm_fields[$key]['class']);
				$cm_fields[$key]['class'] = $class;
				
				if(!isset($cm_field['enabled'])):
					unset($cm_fields[$key]);
				else:
					if($cm_field['enabled']!= "on" ):
						unset($cm_fields[$key]);	
					endif;
				endif;
				if ( in_array( $key, array(
					'shipping_state',
					'shipping_country',
					'shipping_postcode'
				) ) ) {
					if ( isset( $cm_fields[ $key ] ) ) {
						$cm_fields[ $key ]          = $shipping[ $key ];
						$cm_fields[ $key ]['label'] = $shipping[ $key ]['label'];
						$cm_fields[ $key ]['class'] = $shipping[ $key ]['class'];
						$cm_fields[ $key ]['clear'] = $shipping[ $key ]['clear'];
					}
				}
				
			}
			foreach($shipping as $s_key=>$s_value):
				if(isset($cm_fields[$s_key])):
					if(in_array($s_key,$cm_fields[$s_key])):
						if($cm_fields[$s_key]['type'] == 'state'):
							//get locale state settings from $billing array 
							$cm_fields[$s_key]['required'] = $shipping[$s_key]['required'];
						endif;
					endif;
				endif;
			endforeach;
			//var_dump($cm_fields);
			$shipping = $cm_fields;
			
		endif;
		
	return $shipping;
}
//Filter the Billing Fields
function sod_woocommerce_checkout_manager_billing_fields($billing){
	$cm_fields = get_option('woocommerce_checkout_billing_fields');
		
		if($cm_fields):
			foreach($cm_fields as $key=>$cm_field){
				$classes = $cm_field['class'] . ', ' . $cm_field['css_class'];
				$class 	= explode(",",$classes);//explode(",",$cm_field['class']);
				
				$custom_class 	= explode(",",$cm_field['css_class']);
				
				switch(strtolower($cm_field['type'])){
					case "date":
						$class[]= 'date'; 
						$cm_field['type']="text";
						$cm_field['class']=$class;
					break;
					case "checkbox":
						$class[]= 'checkbox'; 
						$cm_field['class']=$class;
					break;
					case "country":
						if(!in_array('update_totals_on_change', $class)):
							$class[] = 'update_totals_on_change';
						endif;
						if(!in_array('country_select', $class)):
							$class[] = 'country_select';
						endif;
						break;
					
				}
				
				if(in_array('sod-clear',$class) || in_array('form-row-last',$class )):
					$cm_fields[$key]['clear'] = 'yes';
					$class = array_diff($class, array('sod-clear'));
				endif;
				if($cm_field['name']=="billing_state"):
					$cm_field['rel'] = 'billing_country';
				endif;
				if($cm_field['name']=="billing_country"):
					$cm_field['rel'] = 'billing_state';
				endif;
				
				if(array_key_exists('required', $cm_field)):
					if($cm_field['required']=="on"):
						$cm_field['required']=true;
					else:
						$cm_field['required']=false;
					endif;
				endif;
			
				unset($cm_fields[$key]['class']);
				$cm_fields[$key]['class'] = $class;
				
				if(!isset($cm_field['enabled'])):
					unset($cm_fields[$key]);
				else:
					if($cm_field['enabled']!= "on" ):
						unset($cm_fields[$key]);	
					endif;
				endif;
				if ( in_array( $key, array(
					'billing_state',
					'billing_country',
					'billing_postcode',
					
				) ) ) {
					if ( isset( $cm_fields[ $key ] ) ) {
						$cm_fields[ $key ]          = $billing[ $key ];
						$cm_fields[ $key ]['label'] = $billing[ $key ]['label'];
						$cm_fields[ $key ]['class'] = $billing[ $key ]['class'];
						$cm_fields[ $key ]['clear'] = $billing[ $key ]['clear'];
					}
				}
			}
			foreach($billing as $b_key=>$b_value):
				if(isset($cm_fields[$b_key])):
					if(in_array($b_key,$cm_fields[$b_key])):
						if($cm_fields[$b_key]['type'] == 'state'):
							//get locale state settings from $billing array 
							$cm_fields[$b_key]['required'] = $billing[$b_key]['required'];
						endif;
					endif;
				endif;
			endforeach;
			
			/* support for SOD Fedex Residential Address */
			$plugins = get_option('active_plugins');
			$required_plugin = 'sod-woocommerce-fedex/shipping-fedex.php';
			if ( in_array( $required_plugin , $plugins ) ) :
				if(!isset($cm_fields['residential-indicator'])):
					$cm_fields['residential-indicator'] = array( 
						'type'=>'checkbox',
						'checked'=>'checked',
						'enabled'=> true,
						'label_class'=>array('fedex-residential'),
						'class'=>array('fedex-residential'),
						'placeholder'	=> '',
						'label' => __('Residential Address?', 'woocommerce')
					);
				endif;
			else:
				unset($cm_fields['residential-indicator']);
			endif;
			/*  ----------- */
			
			$billing = $cm_fields;//array_merge($cm_fields,$billing);
		endif;
		
	return $billing;
}

/* fix for post WC 2.0 to get label for zipcode */
add_filter( 'woocommerce_get_country_locale_base', 'sod_filter_zip_label' );
function sod_filter_zip_label($locale){

	$fields = get_option('woocommerce_checkout_billing_fields');
	
	if( $fields['billing_postcode'] ){
		$locale['postcode']['label'] = $fields['billing_postcode']['label'];
	}
	
	return $locale;
}

function sod_woocommerce_checkout_manager_additional_fields($additional){
	$cm_fields = get_option('woocommerce_checkout_additional_fields');
		if($cm_fields):
			foreach($cm_fields as $key=>$cm_field){
				$classes = $cm_field['class'] . ', ' . $cm_field['css_class'];
				$class 	= explode(",",$classes);//explode(",",$cm_field['class']);
				
				$custom_class 	= explode(",",$cm_field['css_class']);
				switch(strtolower($cm_field['type'])){
					case "date":
						$class[]= 'date'; 
						$cm_field['type']="text";
						$cm_field['class']=$class;
					break;
					case "checkbox":
						$class[]= 'checkbox'; 
						$cm_field['class']=$class;
					break;
					
				}
				
				
				if(array_key_exists('required', $cm_field)):
					if($cm_field['required']=="on"):
						$cm_field['required']=true;
					else:
						$cm_field['required']=false;
					endif;
				endif;
			
				unset($cm_fields[$key]['class']);
				$cm_fields[$key]['class'] = $class;
				
				if(!isset($cm_field['enabled'])):
					unset($cm_fields[$key]);
				else:
					if($cm_field['enabled']!= "on" ):
						unset($cm_fields[$key]);	
					endif;
				endif;
				
			}
			
			$additional = $cm_fields;
		endif;
		
	return $additional;
}
/*
 * WP Ajax Functions
 */

//Add New Billing Row
add_action('wp_ajax_add_new_billing_field', 'sod_add_new_billing_field');
function sod_add_new_billing_field(){
		$nonce = $_POST['ajax_nonce'];
		if ( ! wp_verify_nonce( $nonce, 'ajax_nonce' ) )
    	die ( 'Busted!');
		$key   = '0';
		$options = ''; 
		$positions_options='';
		$types = array(
			'text'			=>__('Text Field','sod_wc_checkout_fields'),
			'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
			'date'			=>__('Date','sod_wc_checkout_fields'),
			'checkbox'		=>__('Checkbox','sod_wc_checkout_fields'),
			'selects'		=>__('Select','sod_wc_checkout_fields'),
			'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
			'heading'		=>__('Heading','sod_wc_checkout_fields')
		);
		
		foreach($types as $r=>$value){
			$options .='<option value="'.$r.'">'.$value.'</option>';
		};
		$positions = array(
			'form-row-first'=>__('Left','sod_wc_checkout_fields'),
			'form-row-last'	=>__('Right','sod_wc_checkout_fields'),
			'form-row-wide'			=>__('Full Row','sod_wc_checkout_fields')
		);
		foreach($positions as $p_key=>$p_value){
			$positions_options .='<option value="'.$p_key.'">'.$p_value.'</option>';
		}
		$row ='<tr>
				<td class="" data-label="enabled"><input name="woocommerce_checkout_billing_fields['.$key.'][enabled]" id="woocommerce_checkout_billing_fields['.$key.'][enabled]" type="checkbox" /></td>
				<td data-label="label"><input type="text" name="woocommerce_checkout_billing_fields['.$key.'][label]" id="woocommerce_checkout_billing_fields['.$key.'][label]" value=""/></td>
				<td data-label="name"><input type="text" class="name required" name="woocommerce_checkout_billing_fields['.$key.'][name]" id="woocommerce_checkout_billing_fields['.$key.'][name]" value=""/></td>
				<td data-label="placeholder"><input type="text" name="woocommerce_checkout_billing_fields['.$key.'][placeholder]" id="woocommerce_checkout_billing_fields['.$key.'][placeholder]" value=""/></td>
				<td data-label="default_field"><input type="hidden" name="woocommerce_checkout_billing_fields['.$key.'][default_field]" id="woocommerce_checkout_billing_fields['.$key.'][default_field]" value=""/></td>
				<td class="narrow" data-label="required"><input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][required]" id="woocommerce_checkout_billing_fields['.$key.'][required]" /></td>
				<td data-label="type"><select name="woocommerce_checkout_billing_fields['.$key.'][type]" id="woocommerce_checkout_billing_fields['.$key.'][type]">'.$options.'</td>
				<td data-label="class"><select name="woocommerce_checkout_billing_fields['.$key.'][class]" id="woocommerce_checkout_billing_fields['.$key.'][class]">'.$positions_options.'</select></td>
				<td data-label="css_class"><input class="css" type="text" name="woocommerce_checkout_billing_fields['.$key.'][css_class]" id="woocommerce_checkout_billing_fields['.$key.'][css_class]" value=""/></td>
				<td><a href="#" class="delete_billing button">X</a></td>
			</tr>';
			echo $row;
	}
//Add New Shipping Row
add_action('wp_ajax_add_new_shipping_field', 'sod_add_new_shipping_field');    
function sod_add_new_shipping_field(){
	$nonce = $_POST['ajax_nonce'];
	if ( ! wp_verify_nonce( $nonce, 'ajax_nonce' ) )
    die ( 'Busted!');
	$key   = '0';
	$options = ''; 
	$positions_options='';
	$types = array(
		'text'			=>__('Text Field','sod_wc_checkout_fields'),
		'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
		'date'			=>__('Date','sod_wc_checkout_fields'),
		'checkbox' 		=>__('Checkbox','sod_wc_checkout_fields'),
		'select'		=>__('Select','sod_wc_checkout_fields'),
		'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
		'heading'		=>__('Heading','sod_wc_checkout_fields')
	);
	foreach($types as $r=>$value){
		$options .='<option value="'.$r.'">'.$value.'</option>';
	};
	$positions = array(
		'form-row-first'=>__('Left','sod_wc_checkout_fields'),
		'form-row-last'	=>__('Right','sod_wc_checkout_fields'),
		'form-row-wide'				=>__('Full Row','sod_wc_checkout_fields')
	);
	foreach($positions as $p_key=>$p_value){
		$positions_options .='<option value="'.$p_key.'" >'.$p_value.'</option>';
	}
	$row ='<tr>
			<td data-label="enabled"><input name="woocommerce_checkout_shipping_fields['.$key.'][enabled]" id="woocommerce_checkout_shipping_fields['.$key.'][enabled]" type="checkbox"/></td>
			<td data-label="label"><input type="text" name="woocommerce_checkout_shipping_fields['.$key.'][label]" id="woocommerce_checkout_shipping_fields['.$key.'][label]" value=""/></td>
			<td data-label="name"><input type="text" class="name required" name="woocommerce_checkout_shipping_fields['.$key.'][name]" id="woocommerce_checkout_shipping_fields['.$key.'][name]"value=""/></td>
			<td data-label="placeholder"><input type="text" name="woocommerce_checkout_shipping_fields['.$key.'][placeholder]" id="woocommerce_checkout_shipping_fields['.$key.'][placeholder]" value=""/></td>
			<td data-label="default_field"><input type="hidden" name="woocommerce_checkout_shipping_fields['.$key.'][default_field]" id="woocommerce_checkout_shipping_fields['.$key.'][default_field]" value=""/></td>
			<td class="narrow" data-label="required"><input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][required]" id="woocommerce_checkout_shipping_fields['.$key.'][required]" /></td>
			<td data-label="type"><select name="woocommerce_checkout_shipping_fields['.$key.'][type]" id="woocommerce_checkout_shipping_fields['.$key.'][type]">'.$options.'</td>
			<td data-label="class"><select name="woocommerce_checkout_shipping_fields['.$key.'][class]" id="woocommerce_checkout_shipping_fields['.$key.'][class]">'.$positions_options.'</select></td>
			<td data-label="css_class"><input type="text" class="css" name="woocommerce_checkout_shipping_fields['.$key.'][css_class]" id="woocommerce_checkout_shipping_fields['.$key.'][css_class]" value=""/></td>
			<td><a href="#" class="delete_shipping button">X</a></td>
		</tr>';
	echo $row;
}
//Add New Shipping Row
add_action('wp_ajax_add_new_additional_field', 'sod_add_new_additional_field');    
function sod_add_new_additional_field(){
	$nonce = $_POST['ajax_nonce'];
	if ( ! wp_verify_nonce( $nonce, 'ajax_nonce' ) )
    die ( 'Busted!');
	$key   = '0';
	$options = ''; 
	$positions_options='';
	$types = array(
		'text'			=>__('Text Field','sod_wc_checkout_fields'),
		'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
		'date'			=>__('Date','sod_wc_checkout_fields'),
		'checkbox' 		=>__('Checkbox','sod_wc_checkout_fields'),
		'select'		=>__('Select','sod_wc_checkout_fields'),
		'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
		'heading'		=>__('Heading','sod_wc_checkout_fields')
	);
	foreach($types as $r=>$value){
		$options .='<option value="'.$r.'">'.$value.'</option>';
	};
	$positions = array(
		'form-row-first'=>__('Left','sod_wc_checkout_fields'),
		'form-row-last'	=>__('Right','sod_wc_checkout_fields'),
		'form-row-wide'				=>__('Full Row','sod_wc_checkout_fields')
	);
	foreach($positions as $p_key=>$p_value){
		$positions_options .='<option value="'.$p_key.'" >'.$p_value.'</option>';
	}
	$row ='<tr>
			<td data-label="enabled"><input name="woocommerce_checkout_additional_fields['.$key.'][enabled]" id="woocommerce_checkout_additional_fields['.$key.'][enabled]" type="checkbox"/></td>
			<td data-label="label"><input type="text" name="woocommerce_checkout_additional_fields['.$key.'][label]" id="woocommerce_checkout_additional_fields['.$key.'][label]" value=""/></td>
			<td data-label="name"><input type="text" class="name required" name="woocommerce_checkout_additional_fields['.$key.'][name]" id="woocommerce_checkout_additional_fields['.$key.'][name]"value=""/></td>
			<td data-label="placeholder"><input type="text" name="woocommerce_checkout_additional_fields['.$key.'][placeholder]" id="woocommerce_checkout_additional_fields['.$key.'][placeholder]" value=""/></td>
			<td data-label="default_field"><input type="hidden" name="woocommerce_checkout_additional_fields['.$key.'][default_field]" id="woocommerce_checkout_additional_fields['.$key.'][default_field]" value=""/></td>
			<td class="narrow" data-label="required"><input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][required]" id="woocommerce_checkout_additional_fields['.$key.'][required]" /></td>
			<td data-label="type"><select name="woocommerce_checkout_additional_fields['.$key.'][type]" id="woocommerce_checkout_additional_fields['.$key.'][type]">'.$options.'</td>
			<td data-label="class"><select name="woocommerce_checkout_additional_fields['.$key.'][class]" id="woocommerce_checkout_additional_fields['.$key.'][class]">'.$positions_options.'</select></td>
			<td data-label="css_class"><input type="text" class="css" name="woocommerce_checkout_additional_fields['.$key.'][css_class]" id="woocommerce_checkout_additional_fields['.$key.'][css_class]" value=""/></td>
			<td><a href="#" class="delete_shipping button">X</a></td>
		</tr>';
	echo $row;
}


//New Custom Order Meta Box
add_action( 'add_meta_boxes', 'sod_custom_order_data_add_meta_box' );
function sod_custom_order_data_add_meta_box(){
	add_meta_box('sod_custom_order_data',__( 'Custom Checkout Field Order Data', 'sod_wc_checkout_fields' ),'sod_custom_order_data_metabox','shop_order' );	
}

/*
 * Email: (Billing Details)
 */
add_action('woocommerce_email_after_order_table','sod_custom_order_data_email',99 );
function sod_custom_order_data_email($order){
	// Use nonce for verification
	
  	wp_nonce_field( plugin_basename( __FILE__ ), 'sod_custom_order_nonce' );
	$cm_billing_fields 	= get_option('woocommerce_checkout_billing_fields');
	$cm_shipping_fields = get_option('woocommerce_checkout_shipping_fields');
	$cm_additional_fields = get_option('woocommerce_checkout_additional_fields');
	$cm_shipping_data	= array();
	$cm_billing_data	= array();
	$cm_additional_data = array();
	$ID 				= $order->id;
	/*
	 * Unset default fields
	 * only need to capture custom ones
	 */
	if($cm_billing_fields):
		foreach($cm_billing_fields as $key=>$field){
			//Check for date type
			if(strtolower($field['default_field'])=="on"):
				
				unset($cm_billing_fields[$key]);
			
			else:
				
				$cm_billing_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);	
				
			endif;
			
		}
	endif;
	if($cm_shipping_fields):
		foreach($cm_shipping_fields as $key=>$field){
				
			if(strtolower($field['default_field'])=="on"):
				
				unset($cm_shipping_fields[$key]);
				
			else:
				
				$cm_shipping_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);
				
			endif;
		}
	endif;
	if($cm_additional_fields):
		foreach($cm_additional_fields as $key=>$field){
				
			if(strtolower($field['default_field'])=="on"):
				
				unset($cm_additional_fields[$key]);
				
			else:
				
				$cm_additional_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);
				
			endif;
		}
	endif;
	?>
		
		<?php if($cm_billing_fields || $cm_shipping_fields || $cm_additional_fields): ?>
		<!--<h2><?php _e('Additional details', 'sod_wc_checkout_fields'); ?></h2>-->
		<?php if($cm_additional_fields):?>
			<!--<h2><?php _e('Additional Details', 'sod_wc_checkout_fields'); ?></h2>-->
			<div id="order_customer_additional_data" class="panel woocommerce_options_panel" style="display: block; ">
			<?php foreach($cm_additional_fields as $key=>$field){
				if($field && is_array($field)):
					if($field['type']=="heading"):
						?>
						<h3><?php echo $field['label']; ?></h3>
						<?php
					else:
						if($field['type']=="checkbox"):
							
							$field['value'] = strtolower($field['value']=="on")?"Yes":"No";
						endif;
						?>
			        	<p class="form-field">
			        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
							<label name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>"><?php echo $field['value'];?></label>
						</p>
					<?php
					endif;
				endif;
			} ?>
			</div>
		<?php endif; ?>
		<?php if($cm_billing_fields):?>
			<?php
				$billing_details_heading = __('Additional Billing Details', 'sod_wc_checkout_fields' );
				$billing_details_heading = apply_filters('sod_cofm_billing_details_heading', $billing_details_heading);
			?>
			<h3><?php echo $billing_details_heading; ?></h3>
			<div id="order_customer_billing_data" class="panel woocommerce_options_panel" style="display: block; ">
			<?php foreach($cm_billing_fields as $key=>$field){
				if($field && is_array($field)):
					if($field['type']=="heading"):
						?>
						<h3><?php echo $field['label']; ?></h3>
						<?php
					else:
						if($field['type']=="checkbox"):
							$field['value'] = $field['value']=="1"?"Yes":"No";
						endif;
						?>
			        	<p class="form-field">
			        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
							<label name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>"><?php echo $field['value'];?></label>
						</p>
					<?php
					endif;
				endif;
			} ?>
			</div>
		<?php 
		endif;
		if($cm_shipping_fields):?>
			<?php
				$shipping_details_heading = __('Additional Shipping Details', 'sod_wc_checkout_fields' );
				$shipping_details_heading = apply_filters('sod_cofm_shipping_details_heading', $shipping_details_heading);
			?>
			<h3><?php echo $shipping_details_heading; ?></h3>
			<div id="order_customer_billing_data" class="panel woocommerce_options_panel" style="display: block; ">
			<?php foreach($cm_shipping_fields as $key=>$field){
				if($field && is_array($field)):
					if($field['type']=="heading"):
						?>
						<h3><?php echo $field['label']; ?></h3>
						<?php
					else:
						if($field['type']=="checkbox"):
							$field['value'] = $field['value']=="1"?"Yes":"No";
						endif;
						?>
			        	<p class="form-field">
			        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
							<label name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>"><?php echo $field['value'];?></label>
						</p>
					<?php
					endif;
				endif;
			} ?>
			</div>
		<?php endif;
		
		endif;
}
function sod_custom_order_data_account_view($ID){
	// Use nonce for verification
	$cm_billing_fields 	= get_option('woocommerce_checkout_billing_fields');
	$cm_shipping_fields = get_option('woocommerce_checkout_shipping_fields');
	$cm_additional_fields = get_option('woocommerce_checkout_additional_fields');
	$cm_shipping_data	= array();
	$cm_billing_data	= array();
	$cm_additional_data = array();
	$ID 				= $ID;
	/*
	 * Unset default fields
	 * only need to capture custom ones
	 */
	if($cm_billing_fields):
		foreach($cm_billing_fields as $key=>$field){
			//Check for date type
			if(strtolower($field['default_field'])=="on"):
				
				unset($cm_billing_fields[$key]);
			
			else:
				
				$cm_billing_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);	
				
			endif;
			
		}
	endif;
	if($cm_shipping_fields):
		foreach($cm_shipping_fields as $key=>$field){
				
			if(strtolower($field['default_field'])=="on"):
				
				unset($cm_shipping_fields[$key]);
				
			else:
				
				$cm_shipping_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);
				
			endif;
		}
	endif;
	if($cm_additional_fields):
		foreach($cm_additional_fields as $key=>$field){
			$cm_additional_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);
		}
	endif;
	?>
		
		<?php if($cm_billing_fields || $cm_shipping_fields || $cm_additional_fields): ?>
		<h2><?php _e('Additional details', 'sod_wc_checkout_fields'); ?></h2>
		<?php if($cm_additional_fields):?>
			<div id="order_customer_additional_data" class="panel woocommerce_options_panel" style="display: block; ">
			<?php foreach($cm_additional_fields as $key=>$field){
				if($field && is_array($field)):
					if($field['type']=="heading"):
						//display the heading
						?>
						<h3 class="cf-heading"><?php echo $field['label']; ?></h3>
						<?php
					else:
						if($field['type']=="checkbox"):
							$field['value'] = strtolower($field['value'])=="on"?"Yes":"No";
						endif;
						?>
			        	<p class="form-field">
			        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
							<label name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>"><?php echo $field['value'];?></label>
						</p>
					<?php
					endif;
				endif;
			} ?>
			</div>
		<?php endif;
		if($cm_billing_fields):?>
			<div id="order_customer_billing_data" class="panel woocommerce_options_panel" style="display: block; ">
			<?php
				$billing_details_heading = __('Additional Billing Details', 'sod_wc_checkout_fields' );
				$billing_details_heading = apply_filters('sod_cofm_billing_details_heading', $billing_details_heading);
			?>
			<h3><?php echo $billing_details_heading; ?></h3>
			<?php foreach($cm_billing_fields as $key=>$field){
				if($field && is_array($field)):
					if($field['type']=="heading"): //display the heading
						?>
						<h3 class="cf-heading"><?php echo $field['label']; ?></h3>
						<?php
					else:
						if($field['type']=="checkbox"):
							$field['value'] = $field['value']=="1"?"Yes":"No";
						endif;
						?>
			        	<p class="form-field">
			        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
							<label name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>"><?php echo $field['value'];?></label>
						</p>
					<?php
					endif;
				endif;
			} ?>
			</div>
		<?php 
		endif;
		if($cm_shipping_fields):?>
			<div id="order_customer_billing_data" class="panel woocommerce_options_panel" style="display: block; ">
				<?php
				$shipping_details_heading = __('Additional Shipping Details', 'sod_wc_checkout_fields' );
				$shipping_details_heading = apply_filters('sod_cofm_shipping_details_heading', $shipping_details_heading);
			?>
			<h3><?php echo $shipping_details_heading; ?></h3>
			<?php foreach($cm_shipping_fields as $key=>$field){
				if($field && is_array($field)):
					if($field['type']=="heading"):
						//display the heading
						?>
						<h3 class="cf-heading"><?php echo $field['label']; ?></h3>
						<?php
					else:
						if($field['type']=="checkbox"):
							$field['value'] = $field['value']=="1"?"Yes":"No";
						endif;
						?>
			        	<p class="form-field">
			        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
							<label name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>"><?php echo $field['value'];?></label>
						</p>
					<?php
					endif;
				endif;
			} ?>
			</div>
		<?php endif; 
		
		endif;
}
add_action('woocommerce_view_order','sod_custom_order_data_account_view',99);
add_action('woocommerce_thankyou', 'sod_custom_order_data_account_view', 99);
//New Custom Order Meta Box Data
function sod_custom_order_data_metabox($post){
	// Use nonce for verification
  	//wp_nonce_field( plugin_basename( __FILE__ ), 'sod_custom_order_nonce' );
	$cm_billing_fields 	= get_option('woocommerce_checkout_billing_fields');
	$cm_shipping_fields = get_option('woocommerce_checkout_shipping_fields');
	$cm_additional_fields = get_option('woocommerce_checkout_additional_fields');
	$cm_shipping_data	= array();
	$cm_billing_data	= array();
	$cm_additional_data = array();
	$ID 				= $post->ID;
	/*
	 * Unset default fields
	 * only need to capture custom ones
	 */
	if($cm_billing_fields):
		foreach($cm_billing_fields as $key=>$field){
			//Check for date type
			if(strtolower($field['default_field'])=="on"):
				unset($cm_billing_fields[$key]);
			else:
				$cm_billing_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);	
			endif;
			
		}
	endif;
	if($cm_shipping_fields):
		foreach($cm_shipping_fields as $key=>$field){
			if(strtolower($field['default_field'])=="on"):
				unset($cm_shipping_fields[$key]);
			else:
				$cm_shipping_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);
			endif;
		}
	endif;
	if($cm_additional_fields):
		foreach($cm_additional_fields as $key=>$field){
			if(strtolower($field['default_field'])=="on"):
				unset($cm_additional_fields[$key]);
			else:
				$cm_additional_fields[$key]['value'] = get_post_meta($ID,'_'.$key,true);
			endif;
		}
	endif;
	

	if($cm_billing_fields):?>
		<div id="order_customer_billing_data" class="panel woocommerce_options_panel" style="display: block; ">
			<h2><?php _e( 'Additional Billing Details', 'sod_wc_checkout_fields' ); ?></h2>
		<?php foreach($cm_billing_fields as $key=>$field){
			if($field && is_array($field)):
				if($field['type']=="heading"):
					//display heading
					?>
					<h3><?php echo $field['label']; ?></h3>
					<?php
				else:
					if($field['type']=="checkbox"):
						$field['value'] = $field['value']=="1"?"Yes":"No";
					endif;
					?>
		        	<p class="form-field">
		        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
						<input type="text" name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>" value="<?php echo $field['value'];?>"/>
					</p>
				<?php
				endif;
			endif;
		} ?>
		</div>
	<?php 
	endif;
	if($cm_shipping_fields):?>
		<div id="order_customer_shipping_data" class="panel woocommerce_options_panel" style="display: block; ">
			<h2><?php _e( 'Additional Shipping Details', 'sod_wc_checkout_fields' ); ?></h2>
		<?php foreach($cm_shipping_fields as $key=>$field){
			if($field && is_array($field)):
				if($field['type']=="heading"):
					//display heading
					?>
					<h3><?php echo $field['label']; ?></h3>
					<?php
				else:
					if($field['type']=="checkbox"):
						$field['value'] = $field['value']=="1"?"Yes":"No";
					endif;
					?>
		        	<p class="form-field">
		        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
						<input type="text" name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>" value="<?php echo $field['value'];?>"/>
					</p>
				<?php
				endif;
			endif;
		} ?>
		</div>
	<?php 
	endif;
	if($cm_additional_fields):?>
		<div id="order_customer_additional_data" class="panel woocommerce_options_panel" style="display: block; ">
			<h2><?php _e( 'Additional Details', 'sod_wc_checkout_fields' ); ?></h2>
		<?php foreach($cm_additional_fields as $key=>$field){
			if($field && is_array($field)):
				if($field['type']=="heading"):
					//display heading
					?>
					<h3><?php echo $field['label']; ?></h3>
					<?php
				else:
					if($field['type']=="checkbox"):
						$field['value'] = strtolower($field['value'])=="on"?"Yes":"No";
					endif;
					?>
		        	<p class="form-field">
		        		<label for="<?php echo $field['name'];?>"><?php echo $field['label'];?>:</label>
						<input type="text" name="<?php echo $field['name'];?>" id="<?php echo $field['name'];?>" value="<?php echo $field['value'];?>"/>
					</p>
				<?php
				endif;
			endif;
		} ?>
		</div>
	<?php 
	endif; 
}
//New Custom Order Meta Box Update / Save Data
add_action( 'save_post', 'sod_custom_order_data_save_metabox' );
/* When the post is saved, saves our custom data */
function sod_custom_order_data_save_metabox( $post_id ) {
	// verify if this is an auto save routine. 
  	// If it is our form has not been submitted, so we dont want to do anything
  	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) 
    	return;
	
	// verify this came from the our screen and with proper authorization,
  	// because save_post can be triggered at other times
  	
  	//if ( !wp_verify_nonce( $_POST['sod_custom_order_nonce'], plugin_basename( __FILE__ ) ) )
    	//return;
	
	$cm_billing_fields 	= get_option('woocommerce_checkout_billing_fields');
	
	$cm_shipping_fields = get_option('woocommerce_checkout_shipping_fields');
	
	$cm_additional_fields = get_option('woocommerce_checkout_additional_fields');
	if($cm_billing_fields):
		foreach($cm_billing_fields as $key=>$field){
		
			if(isset($_POST[$key])):
		
				update_post_meta($post_id,'_'.$key, woocommerce_clean($_POST[$key]));
		
			endif;
			
		}
	endif;
	if($cm_shipping_fields):
		foreach($cm_shipping_fields as $key=>$field){
		
			if(isset($_POST[$key])):
		
				update_post_meta($post_id,'_'.$key, woocommerce_clean($_POST[$key]));
		
			endif;
		}
	endif;
	if($cm_additional_fields):
		foreach($cm_additional_fields as $key=>$field){
			if(isset($_POST[$key])):
				update_post_meta($post_id,'_'.$key, woocommerce_clean($_POST[$key]));
			endif;
		}
	endif;
}
/*
 * Deactivation Hook
 * Cleanup custom fields from options
 */
register_deactivation_hook(__FILE__, 'sod_checkout_field_manager_deactivation');
function sod_checkout_field_manager_deactivation(){
	$settings	= get_option('woocommerce_checkout_settings', false); 
	if(!$settings['preserve_settings']):
		delete_option('woocommerce_checkout_billing_fields');
		delete_option('woocommerce_checkout_shipping_fields');
		delete_option('woocommerce_checkout_additional_fields');
	endif;
}


