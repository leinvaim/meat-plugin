<?php 
/*
 * WooCommerce Checkout Field Manager Class
 * Copyright Sixty One Designs 2012
 */
class SOD_Woocommerce_Checkout_Fields{
	public $billing_fields;
	public $shipping_fields;
	public $additional_fields;
	function __construct() {
		$this->settings	= get_option('woocommerce_checkout_settings', false); 
		$billing_fields 	= get_option('woocommerce_checkout_billing_fields');
		$shipping_fields 	= get_option('woocommerce_checkout_shipping_fields');
		$additional_fields 	= get_option('woocommerce_checkout_additional_fields');
		if(!$additional_fields):
			$this->additional_fields = array(
					'order_comments' => array(
						'default_field'	=> true,
						'enabled'	=> true,
						'type' => 'textarea',
						'class' => array('notes','sod-clear'),
						'label' => __('Order Notes', 'woocommerce'),
						'placeholder' => _x('Notes about your order, e.g. special notes for delivery.', 'placeholder', 'woocommerce')
					)
			);
		else:
			$this->additional_fields = $additional_fields;
		endif;
		
		if(!$billing_fields):
			$this->billing_fields = array(
			//$fields = array(
			'billing_country' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'type'			=> 'country', 
				'label' 		=> __('Country', 'woocommerce'), 
				'placeholder' 	=> _x('Country', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-wide', 'sod-clear', 'update_totals_on_change', 'country_select'),
				'label_css'		=> array('form-row-wide', 'update_totals_on_change', 'country_select')
				),
			'billing_first_name' => array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('First Name', 'woocommerce'), 
				'placeholder' 	=> _x('First Name', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class'			=> array('form-row-first'),
				'type'			=>'text'
				),
			'billing_last_name' => array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Last Name', 'woocommerce'), 
				'placeholder' 	=> _x('Last Name', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-last', 'sod-clear'),
				'type'			=>'text',
				'clear'			=> true
				),
			'billing_company' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Company Name', 'woocommerce'), 
				'placeholder' 	=> _x('Company (optional)', 'placeholder', 'woocommerce'),
				'class' 		=> array('sod-clear', 'form-row-wide'),
				'type'			=>'text' ,
				'clear'			=> true,
				),
			'billing_address_1' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Address', 'woocommerce'), 
				'placeholder' 	=> _x('Address', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-wide', 'address-field', 'sod-clear'), 
				),
			'billing_address_2' => array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Address 2', 'woocommerce'), 
				'placeholder' 	=> _x( 'Apartment, suite, unit etc. (optional)', 'placeholder', 'woocommerce' ),
				'class' 		=> array('form-row-wide', 'address-field', 'sod-clear'), 
				'label_class' 	=> array('hidden'),
				'clear'			=> true
				),
			'billing_city' 		=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Town/City', 'woocommerce'), 
				'placeholder' 	=> _x('Town/City', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-wide', 'sod-clear', 'address-field'),
				),
			
			'billing_state' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'type'			=> 'state', 
				'label' 		=> __('State/County', 'woocommerce'), 
				'placeholder' 	=> _x('State/County', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array( 'update_totals_on_change',  'form-row-first', 'address-field'),
				
				),
			'billing_postcode' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Postcode/Zip', 'woocommerce'), 
				'placeholder' 	=> _x('Postcode/Zip', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class'			=> array('form-row-last', 'update_totals_on_change', 'address-field', 'sod-clear'),
				'clear'			=> true
			),
			'billing_email'     => array(
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Email Address', 'woocommerce'), 
				'placeholder' 	=> _x('Email Address', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-first'),
				'validate'		=> array( 'email' ),
				
			),	
			'billing_phone' 	=> array(
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Phone', 'woocommerce'), 
				'placeholder' 	=> _x('Phone', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-last', 'sod-clear'),
				'clear'			=> true
			)
			);				
			
		else:
			$this->billing_fields = $billing_fields;
		endif;
		
		if(!$shipping_fields):
			$this->shipping_fields = array(
				//$fields = array(
			'shipping_country' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'type'			=> 'country', 
				'label' 		=> __('Country', 'woocommerce'), 
				'placeholder' 	=> _x('Country', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-wide','sod-clear', 'update_totals_on_change', 'country_select'),
				'label_css'		=> array('form-row-wide','sod-clear', 'update_totals_on_change', 'country_select')
				),
			'shipping_first_name' => array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('First Name', 'woocommerce'), 
				'placeholder' 	=> _x('First Name', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class'			=> array('form-row-first'),
				),
			'shipping_last_name' => array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Last Name', 'woocommerce'), 
				'placeholder' 	=> _x('Last Name', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-last','sod-clear'),
				'clear'			=> true
				),
			'shipping_company' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Company Name', 'woocommerce'), 
				'placeholder' 	=> _x('Company (optional)', 'placeholder', 'woocommerce'),
				'class' 		=> array( 'form-row-wide', 'sod-clear'),
				'type'			=>'text' ,
				'clear'			=> true,
				),
			'shipping_address_1' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Address', 'woocommerce'), 
				'placeholder' 	=> _x('Address', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-wide', 'address-field','sod-clear',),
				),
			'shipping_address_2' => array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Address 2', 'woocommerce'), 
				'placeholder' 	=> _x( 'Apartment, suite, unit etc. (optional)', 'placeholder', 'woocommerce' ),
				'class' 		=> array( 'form-row-wide', 'address-field','sod-clear'), 
				'label_class' 	=> array('hidden'),
				'clear'			=> true
				),
			'shipping_city' 		=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Town/City', 'woocommerce'), 
				'placeholder' 	=> _x('Town/City', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array('form-row-wide', 'address-field', 'sod-clear'),
				),
			'shipping_state' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'type'			=> 'state', 
				'label' 		=> __('State/County', 'woocommerce'), 
				'placeholder' 	=> _x('State/County', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class' 		=> array( 'update_totals_on_change',  'form-row-first', 'address-field'),
				
				),
			'shipping_postcode' 	=> array( 
				'default_field'		=>true,
				'enabled'		=> true,
				'label' 		=> __('Postcode/Zip', 'woocommerce'), 
				'placeholder' 	=> _x('Postcode/Zip', 'placeholder', 'woocommerce'), 
				'required' 		=> true, 
				'class'			=> array('form-row-last', 'update_totals_on_change', 'address-field','sod-clear'),
				'clear'			=> true
				)
			
			);	
		else:
			$this->shipping_fields = $shipping_fields;
		endif;
	}

	function billing_fields_form(){
		?>
		<p><?php _e('Drag each row to reposition the field during checkout.', 'sod_wc_checkout_fields');?></p>
		<table class="widefat page" cellspacing="0" id="checkout-billing-fields">
			<thead>
				<tr>
					<td colspan="10" class="block">
						<input type="submit" class="button-primary right" value="<?php _e('Save Settings','sod_wc_checkout_fields') ?>" />
						<a id="new_billing_field" class="add button "><?php _e('Add Billing Section Field', 'sod_wc_checkout_fields') ?></a>
					</td>
				</tr>
				<tr>
					<th class="narrow">
						<?php _e('Enabled','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is the label of the field that is visible during checkout.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is the label of the field that is visible during checkout.','woocommerce');?>"></a>
						<?php _e('Label','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is the name of the field that is used internally. It should be lowercase with no special characters. Spaces will be replaced with underscores.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is the name of the field that is used internally. It should be lowercase with no special characters. Spaces will be replaced with underscores.','woocommerce');?>"></a>
						<?php _e('Name','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is placeholder text that appears with the field before the customer enters their information. For checkboxes, this is ignored.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is placeholder text that appears with the field before the customer enters their information. For checkboxes, this is ignored.','woocommerce');?>"></a>
						<?php _e('Placeholder','sod_wc_checkout_fields');?>
					</th>
					<th class="narrow">
						<?php _e('Default Field?','sod_wc_checkout_fields');?>
					</th>
					<th class="narrow">
						<?php _e('Required?','sod_wc_checkout_fields');?>
					</th>
					<th>
						<?php _e('Type','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('Pick whether you\'d like your field position left, right or as a whole row. If you choose left or right, the field will take up half the row.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('Pick whether you\'d like your field position left, right or as a whole row. If you choose left or right, the field will take up half the row.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Position');?>
					</th>
					<th><a href="#" tip="<?php _e('Enter any custom css classes you\'d like to add to the paragraph tag that surronds the field. Instead of spaces, you should use dashes. Muliple classes should be separated by a comma, with no space before or after the comma.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('Enter any custom css classes you\'d like to add to the paragraph tag that surronds the field. Instead of spaces, you should use dashes. Muliple classes should be separated by a comma, with no space before or after the comma.','sod_wc_checkout_fields');?>"></a>
						<?php _e('CSS Classes');?>
					</th>
					<th></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="10" class="block">
						<input type="submit" class="button-primary right" value="<?php _e('Save Settings','sod_wc_checkout_fields') ?>" />
						<a id="new_billing_field" class="add button"><?php _e('Add Billing Section Field','sod_wc_checkout_fields'); ?></a>
					</td>
				</tr>
			</tfoot>
  			<tbody class="billing-fields">
			<?php
			
			foreach($this->billing_fields as $key=>$billing_field){
				$billing_field['default_field'] = (isset($billing_field['default_field']) && ($billing_field['default_field'] == true) ) ? true : false;
				$read_only 	= $billing_field['default_field'] ==true ? 'readonly="readonly"': "";
				$name = $key;
				$not_required = array(
					'billing_company','billing_address_2'
				);
				if(isset($this->settings['edit_core'])):
					if($this->settings['edit_core'] == true):
						$default_read_only 	= $billing_field['default_field'] ==true ? 'disabled="disabled"': "";
						$enabled_read_only 	= false;
						$required_read_only	= false;
					else:
						$default_read_only 	= $billing_field['default_field'] ==true ? 'disabled="disabled"': "";
						$enabled_read_only 	= ($billing_field['default_field'] ==true || $billing_field['default_field'] =="on") && $billing_field['required']==true && !in_array($name, $not_required)? 'disabled="disabled" checked="checked"': "";
						$required_read_only	= $billing_field['required']==true && !in_array($name, $not_required)  ? 'disabled="disabled" checked="checked"': "";
					endif;
				else:
					$default_read_only 	= $billing_field['default_field'] ==true ? 'disabled="disabled"': "";
					$enabled_read_only 	= isset( $billing_field['default_field'] ) ? $billing_field['default_field'] ==true && ( isset( $billing_field['required'] ) ? $billing_field['required']:false) == true && !in_array($name, $not_required)? 'disabled="disabled"': "": "";
					$required_read_only	= isset( $billing_field['required'] ) ? $billing_field['required'] == true && !in_array( $name, $not_required ) ? 'disabled="disabled"': "":"";
				endif;
				$disabled 	= $billing_field['default_field'] ==true ? 'disabled="disabled"': null;
				if(isset($billing_field['required'])):
					$required = $billing_field['required']==true ? 'checked="checked"':null;
				else:
					$required ='';
				endif;
				
				//$custom_css_class 	= 
				if(isset($billing_field['css_class'])):
					$custom_css_class = is_array($billing_field['css_class'])?implode(",",$billing_field['css_class']):$billing_field['css_class'];
				else:
					$custom_css_class = '';//isset($billing_field['css_class'])?$billing_field['css_class']:''; 
				endif;
				$css_class 	 = is_array($billing_field['class'])?implode(",",$billing_field['class']):$billing_field['class'];
				$default	 = $billing_field['default_field'] ==true? 'checked="checked"':null;
				
				if(isset($billing_field['enabled'])):
					$enabled = $billing_field['enabled'] ==true? 'checked="checked"':null;
				else:
					$enabled = '';
				endif;
				
				$delete_btn = $billing_field['default_field'] ==false ? '<a href="#" class="delete_billing button">X</a>':null;
				$options = "";
				$positions_options = "";
				$selected_value = 'text';
				if ($default):
					$default_input='<input type="checkbox" class="no-display" name="woocommerce_checkout_billing_fields['.$key.'][default_field]" '.$default_read_only. ' ' .$default.' id="woocommerce_checkout_billing_fields['.$key.'][default_field]" />';
					$types = array(
						'text'			=>__('Text Field','sod_wc_checkout_fields'),
						'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
						'state'			=>__('State','sod_wc_checkout_fields'),
						'country'		=>__('Country','sod_wc_checkout_fields'),
						'postcode'		=>__('Post Code','sod_wc_checkout_fields'),
						'date'			=>__('Date','sod_wc_checkout_fields'),
						'checkbox'		=>__('Checkbox','sod_wc_checkout_fields'),
						'selects'		=>__('Select','sod_wc_checkout_fields'),
						'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
						'heading'		=>__('Heading', 'sod_wc_checkout_fields')
					);
				else:
					$default_input='<input type="hidden" value="" class="no-display" name="woocommerce_checkout_billing_fields['.$key.'][default_field]"  id="woocommerce_checkout_billing_fields['.$key.'][default_field]" />';
					$types = array(
						'text'			=>__('Text Field','sod_wc_checkout_fields'),
						'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
						'date'			=>__('Date','sod_wc_checkout_fields'),
						'checkbox'		=>__('Checkbox','sod_wc_checkout_fields'),
						'selects'		=>__('Select','sod_wc_checkout_fields'),
						'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
						'heading'		=>__('Heading', 'sod_wc_checkout_fields')
					);	
				endif;
				$positions = array(
					'form-row-first'=>__('Left','sod_wc_checkout_fields'),
					'form-row-last'	=>__('Right','sod_wc_checkout_fields'),
					'form-row-wide'	=>__('Full Row','sod_wc_checkout_fields')
				);
				
				foreach($positions as $p_key=>$p_value){
					//Warning when not set - need to fix
					if(is_array( $billing_field['class'])):
						if(in_array($p_key, $billing_field['class'])):
							$selected = 'selected="selected"';
							$positions_options .='<option value="'.$css_class.'" '.$selected.'>'.$p_value.'</option>';
						else:
							if(isset($billing_field['class'])):
							
								if(in_array($p_key, $billing_field['class'])):
									$selected = 'selected="selected"';
									$positions_options .='<option value="'.$billing_field['class'].'" '.$selected.'>'.$p_value.'</option>';
								else:
									$selected = $p_key ==$css_class? 'selected="selected"':null;
									$positions_options .='<option value="'.$p_key.'" '.$selected.'>'.$p_value.'</option>';
								endif;
							endif;
						endif;
					else:
						if(isset($billing_field['class'])):
							$class_array = explode(",", $billing_field['class']);
							if(in_array($p_key, $class_array)):
								$selected = 'selected="selected"';
								$positions_options .='<option value="'.$billing_field['class'].'" '.$selected.'>'.$p_value.'</option>';
							else:
								$selected = $p_key ==$css_class? 'selected="selected"':null;
								$positions_options .='<option value="'.$p_key.'" '.$selected.'>'.$p_value.'</option>';
							endif;
						endif;
					endif;
					 
					
				}

				foreach($types as $r=>$value){
					
					if(isset($billing_field['type'])):
						if($r ==$billing_field['type']):
							$selected_value =  $billing_field['type'];
						endif;
					
						$selected = $r ==$billing_field['type']? 'selected="selected"':null; 
					endif;
					$options .='<option value="'.$r.'" '.$selected.'>'.$value.'</option>';
					
				};
				$b_type = (isset($billing_field['type']) ? $billing_field['type'] : '');
				$hidden_input = $disabled ? '<input type="hidden" id="woocommerce_checkout_billing_fields['.$key.'][type]" name="woocommerce_checkout_billing_fields['.$key.'][type]" value="'.$selected_value.'"/>':null;
				$hidden_enabled_input = $enabled_read_only ?'<input type="hidden" id="woocommerce_checkout_billing_fields['.$key.'][enabled]" name="woocommerce_checkout_billing_fields['.$key.'][enabled]" value="on"/>':null;
				$hidden_default_input = $default_read_only ?'<input type="hidden" id="woocommerce_checkout_billing_fields['.$key.'][default_field]" name="woocommerce_checkout_billing_fields['.$key.'][default_field]" value="on"/>':null;
				$hidden_required_input = $required_read_only ?'<input type="hidden" id="woocommerce_checkout_billing_fields['.$key.'][required]" name="woocommerce_checkout_billing_fields['.$key.'][required]" value="on"/>':null;
				$row ='<tr class="sod-row-' . $key . ' sod-' . $b_type . '">
						<td class="narrow"><input name="woocommerce_checkout_billing_fields['.$key.'][enabled]" '.$enabled_read_only.' id="woocommerce_checkout_billing_fields['.$key.'][enabled]" type="checkbox" '.$enabled.'/>'.$hidden_enabled_input.'</td>
						<td><input type="text" name="woocommerce_checkout_billing_fields['.$key.'][label]"  id="woocommerce_checkout_billing_fields['.$key.'][label]" value="' . $billing_field['label'].	'"/></td>
						<td><input type="text" class="name" name="woocommerce_checkout_billing_fields['.$key.'][name]" '.$read_only.'id="woocommerce_checkout_billing_fields['.$key.'][name]"value="' . $key.'"/></td>
						<td><input type="text" name="woocommerce_checkout_billing_fields['.$key.'][placeholder]" id="woocommerce_checkout_billing_fields['.$key.'][placeholder]" value="' . $billing_field['placeholder'].	'"/></td>
						<td class="narrow">'.$default_input.''.$hidden_default_input.'</td>
						<td class="narrow"><input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][required]"  '.$required_read_only	.' ' .$required.' id="woocommerce_checkout_billing_fields['.$key.'][required]" />'.$hidden_required_input.'</td>
						<td><select name="woocommerce_checkout_billing_fields['.$key.'][type]" '.$disabled.' id="woocommerce_checkout_billing_fields['.$key.'][type]">'.$options.'</select>'.$hidden_input.'</td>
						<td><select name="woocommerce_checkout_billing_fields['.$key.'][class]" id="woocommerce_checkout_billing_fields['.$key.'][class]">'.$positions_options.'</select></td>
						<td><input type="text" class="css_class" name="woocommerce_checkout_billing_fields['.$key.'][css_class]" id="woocommerce_checkout_billing_fields['.$key.'][css_class]" value="'.$custom_css_class.'"/></td>
						<td>'.$delete_btn.'</td>
					</tr>';
				if($b_type == 'date'):
					//date picker options
					$date_format_options = array(
						'mm/dd/yy'	=> 'mm/dd/yy',
						'dd/mm/yy'	=> 'dd/mm/yy'
					);
					$date_format_options = apply_filters('sod_cofm_date_options', $date_format_options );
					$df_options = '';
					$df = (isset($billing_field['date_format']) ? $billing_field['date_format'] : '');
					foreach( $date_format_options as $format=>$display ):
						$selected = ($df == $format) ? 'selected="selected"' : '';
						$df_options .= '<option value="' . $format . '" ' . $selected . '>' . $display . '</option>';
					endforeach;
					$checked = (isset($billing_field['disabled_days']) ? $billing_field['disabled_days'] : array());
					for($i = 0; $i <= 6; $i++):
						if(isset($checked[$i])):
							$checked[$i] = ' checked';
						else:
							$checked[$i] = '';
						endif;
					endfor;
					$min = (isset($billing_field['min_date']) ? $billing_field['min_date'] : '');
					$max = (isset($billing_field['max_date']) ? $billing_field['max_date'] : '');
					$row .= '<tr class="sod-cofm-date-options sod-date-' . $key . '" style="background-color:#cbe4de">
								<td><span style="float:right;"><strong>' . $key . '</strong>' . __( ' Date Picker Settings', 'sod_wc_checkout_fields' ) . '&rarr;</span></td>
								<td>' . __( 'Date Format: ', 'sod_wc_checkout_fields' ) . '<select name="woocommerce_checkout_billing_fields['.$key.'][date_format]" id="woocommerce_checkout_billing_fields['.$key.'][date_format]">' . $df_options . '</select></td>
								<td>' . __( 'Min Date', 'sod_wc_checkout_fields' ) . '<input type="text" name="woocommerce_checkout_billing_fields['.$key.'][min_date]" id="woocommerce_checkout_billing_fields['.$key.'][min_date]" value="' . $min . '" />
								<td>' . __( 'Max Date', 'sod_wc_checkout_fields' ) . '<input type="text" name="woocommerce_checkout_billing_fields['.$key.'][max_date]" id="woocommerce_checkout_billing_fields['.$key.'][max_date]" value="' . $max . '" />
								<td colspan="6">' . __( 'Disable Days', 'sod_wc_checkout_fields' ) . '<br />
									' . __( 'Sun: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][disabled_days][0]" value="0" ' . $checked[0] . ' />
									' . __( 'Mon: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][disabled_days][1]" value="1" ' . $checked[1] . ' />
									' . __( 'Tue: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][disabled_days][2]" value="2" ' . $checked[2] . ' />
									' . __( 'Wed: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][disabled_days][3]" value="3" ' . $checked[3] . ' />
									' . __( 'Thur: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][disabled_days][4]" value="4" ' . $checked[4] . ' />
									' . __( 'Fri: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][disabled_days][5]" value="5" ' . $checked[5] . ' />
									' . __( 'Sat: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_billing_fields['.$key.'][disabled_days][6]" value="6" ' . $checked[6] . ' />
							</tr>';
				endif;
				echo $row;
			};?>
			</tbody>
		</table>
		
	<?php
	}
	function settings_form(){
		
		$enabled_core_edit = isset($this->settings['edit_core'])? $this->settings['edit_core'] == "on" ? 'checked="checked"' : false : false;
		$preserve_settings = isset($this->settings['preserve_settings']) ? $this->settings['preserve_settings'] == "on" ? 'checked="checked"' : false : false;
		
		?>
		<table class="page" cellspacing="0" id="checkout-settings-fields">
			<tfoot>
				<tr>
					<td class="block">
						<input type="submit" class="button-primary" value="<?php _e('Save Settings','sod_wc_checkout_fields'); ?>" />
					</td>
				</tr>
			</tfoot>
			<tbody class="settings">
				<tr>
					<td class="narrow">
						<p class="alert"><?php _e('Click the checkbox below to disable or enable editing WooCommerce core required checkout fields. If you do choose to enable the ability to edit core required checkout fields, you run the risk of interfering with shipping methods or payment gateways. Support for any problems with shipping methods, payment gateways or other plugins resulting from editing core required checkout fields will be limited.', 'sod_wc_checkout_fields');?></p>
						<label for="woocommerce_checkout_settings[edit_core]"><?php _e('Allow editing of core required checkout fields','sod_wc_checkout_fields');?></label>
						<input name="woocommerce_checkout_settings[edit_core]" <?php echo $enabled_core_edit;?> id="woocommerce_checkout_settings[edit_core]" type="checkbox" /></td>
					</tr>
				<tr>
					<td class="narrow">
						<p>
						<label for="woocommerce_checkout_settings[preserve_settings]"><?php _e('Retain fields if plugin is deactivated?','sod_wc_checkout_fields');?></label>
						<input name="woocommerce_checkout_settings[preserve_settings]" <?php echo $preserve_settings;?> id="woocommerce_checkout_settings[preserve_settings]" type="checkbox" /></td>
						</p>
					</td>
				</tr>
			</tbody>
		</table>
	<?php 
		
	}
	function shipping_fields_form(){
		?>
		<p><?php _e('Drag each row to reposition the field during checkout.', 'sod_wc_checkout_fields');?></p>	
		<table class="widefat page" cellspacing="0" id="checkout-shipping-fields">
			<thead>
				<tr>
					<td colspan="10"  class="block">
						<input type="submit" class="button-primary right" value="<?php _e('Save Settings','sod_wc_checkout_fields'); ?>" />
						<a id="new_shipping_field" class="add button"><?php _e('Add Shipping Section Field','sod_wc_checkout_fields'); ?></a>
					</td>
				</tr>
				<tr>
					<th class="narrow">
						<?php _e('Enabled','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is the label of the field that is visible during checkout.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is the label of the field that is visible during checkout.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Label','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is the name of the field that is used internally. It should be lowercase with no special characters. Spaces will be replaced with underscores.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is the name of the field that is used internally. It should be lowercase with no special characters. Spaces will be replaced with underscores.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Name','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is placeholder text that appears with the field before the customer enters their information. For checkboxes, this is ignored.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is placeholder text that appears with the field before the customer enters their information. For checkboxes, this is ignored.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Placeholder','sod_wc_checkout_fields');?>
					</th>
					<th class="narrow">
						<?php _e('Default Field?','sod_wc_checkout_fields');?>
					</th>
					<th class="narrow">
						<?php _e('Required?','sod_wc_checkout_fields');?>
					</th>
					<th>
						<?php _e('Type','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('Pick whether you\'d like your field position left, right or as a whole row. If you choose left or right, the field will take up half the row.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('Pick whether you\'d like your field position left, right or as a whole row. If you choose left or right, the field will take up half the row.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Position');?>
					</th>
					<th><a href="#" tip="<?php _e('Enter any custom css classes you\'d like to add to the paragraph tag that surronds the field. Instead of spaces, you should use dashes. Muliple classes should be separated by a comma, with no space before or after the comma.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('Enter any custom css classes you\'d like to add to the paragraph tag that surronds the field. Instead of spaces, you should use dashes. Muliple classes should be separated by a comma, with no space before or after the comma.','sod_wc_checkout_fields');?>"></a>
						<?php _e('CSS Classes','sod_wc_checkout_fields');?>
					</th>
					<th></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="10" class="block">
						<input type="submit" class="button-primary right" value="<?php _e('Save Settings','sod_wc_checkout_fields') ?>" />
						<a id="new_shipping_field" class="add button"><?php _e('Add Shipping Section Field','sod_wc_checkout_fields'); ?></a>
					</td>
				</tr>
			</tfoot>
  			<tbody class="shipping-fields">
			<?php
			
			foreach($this->shipping_fields as $key=>$field){
				$field['default_field'] = (isset($field['default_field']) && ($field['default_field'] == true) ) ? true : false;
				$read_only 	= $field['default_field'] ==true ? 'readonly="readonly"': "";
				$name = $key;
				$not_required = array(
					'shipping_company','shipping_address_2'
				);
				if(isset($this->settings['edit_core']))://? $this->settings['edit_core'] == "on" ? 'checked="checked"' : false : false;
					if($this->settings['edit_core'] == true):
						$default_read_only 	= $field['default_field'] ==true ? 'disabled="disabled"': "";
						$enabled_read_only 	= false;//$field['default'] ==true && $field['required']==true && !in_array($name, $not_required)? 'disabled="disabled"': "";
						$required_read_only	= false;//$field['required']==true && !in_array($name, $not_required) ? 'disabled="disabled"': "";
					else:
						$default_read_only 	= $field['default_field'] ==true ? 'disabled="disabled"': "";
						$enabled_read_only 	= $field['default_field'] ==true && $field['required']==true && !in_array($name, $not_required)? 'disabled="disabled"': "";
						$required_read_only	= $field['required']==true && !in_array($name, $not_required) ? 'disabled="disabled"': "";
					endif;
				else:
					$default_read_only 	= $field['default_field'] ==true ? 'disabled="disabled"': "";
					$enabled_read_only 	= isset( $field['default_field'] ) ? $field['default_field'] ==true && ( isset( $field['required'] ) ? $field['required']:false) == true && !in_array($name, $not_required)? 'disabled="disabled"': "": "";
					$required_read_only	= isset( $field['required'] ) ? $field['required'] == true && !in_array( $name, $not_required ) ? 'disabled="disabled"': "":"";
				endif;
				$disabled 	= $field['default_field'] ==true ? 'disabled="disabled"': null;
				if(isset($field['required'])):
					$required 	= $field['required']==true ? 'checked="checked"':null;
				else:
					$required = '';
				endif;
				
				if(isset($field['css_class'])):
					$custom_css_class 	= is_array($field['css_class'])?implode(",",$field['css_class']):$field['css_class'];
				else:
					$custom_css_class = '';
				endif;
				
				$css_class 	= is_array($field['class'])?implode(",",$field['class']):$field['class'];
				
				if(isset($field['default_field'])):
					$default = $field['default_field'] ==true? 'checked="checked"':null;
				else:
					$default = '';
				endif;
				
				if(isset($field['enabled'])):
					$enabled = $field['enabled'] ==true? 'checked="checked"':null;
				else:
					$enabled = '';
				endif;
				
				$delete_btn = $field['default_field'] ==false ? '<a href="#" class="delete_shipping button">X</a>':null;
				$options = "";
				$positions_options = "";
				$selected_value = 'text';
				if ($default):
					$default_input='<input type="checkbox" class="no-display" name="woocommerce_checkout_shipping_fields['.$key.'][default_field]" '.$default_read_only. ' ' .$default.' id="woocommerce_checkout_shipping_fields['.$key.'][default_field]" />';
					$types = array(
						'text'			=>__('Text Field','sod_wc_checkout_fields'),
						'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
						'state'			=>__('State','sod_wc_checkout_fields'),
						'country'		=>__('Country','sod_wc_checkout_fields'),
						'postcode'		=>__('Post Code','sod_wc_checkout_fields'),
						'date'			=>__('Date','sod_wc_checkout_fields'),
						'checkbox'		=>__('Checkbox','sod_wc_checkout_fields'),
						'selects'		=>__('Select','sod_wc_checkout_fields'),
						'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
						'heading'		=>__('Heading', 'sod_wc_checkout_fields')
					);
				else:
					$default_input='<input type="hidden" value="" class="no-display" name="woocommerce_checkout_shipping_fields['.$key.'][default_field]"  id="woocommerce_checkout_shipping_fields['.$key.'][default_field]" />';
					$types = array(
						'text'			=>__('Text Field','sod_wc_checkout_fields'),
						'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
						'date'			=>__('Date','sod_wc_checkout_fields'),
						'checkbox'		=>__('Checkbox','sod_wc_checkout_fields'),
						'selects'		=>__('Select','sod_wc_checkout_fields'),
						'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
						'heading'		=>__('Heading','sod_wc_checkout_fields')
					);	
				endif;
				$positions = array(
					'form-row-first'=>__('Left','sod_wc_checkout_fields'),
					'form-row-last'	=>__('Right','sod_wc_checkout_fields'),
					'form-row-wide'				=>__('Full Row','sod_wc_checkout_fields')
				);
				
				
				foreach($positions as $p_key=>$p_value){
					//Warning when not set - need to fix
					if(is_array( $field['class'])):
						if(in_array($p_key, $field['class'])):
							$selected = 'selected="selected"';
							$positions_options .='<option value="'.$css_class.'" '.$selected.'>'.$p_value.'</option>';
						else:
							if(isset($field['class'])):
							
								if(in_array($p_key, $field['class'])):
									$selected = 'selected="selected"';
									$positions_options .='<option value="'.$field['class'].'" '.$selected.'>'.$p_value.'</option>';
								else:
									$selected = $p_key ==$css_class? 'selected="selected"':null;
									$positions_options .='<option value="'.$p_key.'" '.$selected.'>'.$p_value.'</option>';
								endif;
							endif;
						endif;
					else:
						if(isset($field['class'])):
							$class_array = explode(",", $field['class']);
							if(in_array($p_key, $class_array)):
								$selected = 'selected="selected"';
								$positions_options .='<option value="'.$field['class'].'" '.$selected.'>'.$p_value.'</option>';
							else:
								$selected = $p_key ==$css_class? 'selected="selected"':null;
								$positions_options .='<option value="'.$p_key.'" '.$selected.'>'.$p_value.'</option>';
							endif;
						endif;
					endif;
					 
					
				}
				foreach($types as $r=>$value){
					if(isset($field['type'])):
						if($r ==$field['type']):
							$selected_value =  $field['type'];
						endif;
						$selected = $r ==$field['type']? 'selected="selected"':null;
					endif; 
					$options .='<option value="'.$r.'" '.$selected.'>'.$value.'</option>';
				};
				$s_type = (isset($field['type']) ? $field['type'] : '');
				$hidden_input = $disabled ? '<input type="hidden" id="woocommerce_checkout_shipping_fields['.$key.'][type]" name="woocommerce_checkout_shipping_fields['.$key.'][type]" value="'.$selected_value.'"/>':null;
				$hidden_enabled_input = $enabled_read_only ?'<input type="hidden" id="woocommerce_checkout_shipping_fields['.$key.'][enabled]" name="woocommerce_checkout_shipping_fields['.$key.'][enabled]" value="on"/>':null;
				$hidden_default_input = $default_read_only ?'<input type="hidden" id="woocommerce_checkout_shipping_fields['.$key.'][default_field]" name="woocommerce_checkout_shipping_fields['.$key.'][default_field]" value="on"/>':null;
				$hidden_required_input = $required_read_only ?'<input type="hidden" id="woocommerce_checkout_shipping_fields['.$key.'][required]" name="woocommerce_checkout_shipping_fields['.$key.'][required]" value="on"/>':null;
				$row ='<tr class="sod-row-' . $key . ' sod-' . $s_type . '">
						<td class="narrow"><input name="woocommerce_checkout_shipping_fields['.$key.'][enabled]" '.$enabled_read_only.' id="woocommerce_checkout_shipping_fields['.$key.'][enabled]" type="checkbox" '.$enabled.'/>'.$hidden_enabled_input.'</td>
						<td><input type="text" name="woocommerce_checkout_shipping_fields['.$key.'][label]"  id="woocommerce_checkout_shipping_fields['.$key.'][label]" value="' . $field['label'].	'"/></td>
						<td><input type="text" class="name" name="woocommerce_checkout_shipping_fields['.$key.'][name]" '.$read_only.'id="woocommerce_checkout_shipping_fields['.$key.'][name]"value="' . $key.'"/></td>
						<td><input type="text" name="woocommerce_checkout_shipping_fields['.$key.'][placeholder]" id="woocommerce_checkout_shipping_fields['.$key.'][placeholder]" value="' . $field['placeholder'].	'"/></td>
						<td class="narrow">'.$default_input.''.$hidden_default_input.'</td>
						<td class="narrow"><input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][required]"  '.$required_read_only	.' ' .$required.' id="woocommerce_checkout_shipping_fields['.$key.'][required]" />'.$hidden_required_input.'</td>
						<td><select name="woocommerce_checkout_shipping_fields['.$key.'][type]" '.$disabled.' id="woocommerce_checkout_shipping__fields['.$key.'][type]">'.$options.'</select>'.$hidden_input.'</td>
						<td><select name="woocommerce_checkout_shipping_fields['.$key.'][class]" id="woocommerce_checkout_shipping_fields['.$key.'][class]">'.$positions_options.'</select></td>
						<td><input type="text" class="css_class" name="woocommerce_checkout_shipping_fields['.$key.'][css_class]" id="woocommerce_checkout_shipping_fields['.$key.'][css_class]" value="'.$custom_css_class.'"/></td>
						<td>'.$delete_btn.'</td>
					</tr>';
				if($s_type == 'date'):
					//date picker options
					$date_format_options = array(
						'mm/dd/yy'	=> 'mm/dd/yy',
						'dd/mm/yy'	=> 'dd/mm/yy'
					);
					$date_format_options = apply_filters('sod_cofm_date_options', $date_format_options );
					$df_options = '';
					$df = (isset($field['date_format']) ? $field['date_format'] : '');
					foreach( $date_format_options as $format=>$display ):
						$selected = ($df == $format) ? 'selected="selected"' : '';
						$df_options .= '<option value="' . $format . '" ' . $selected . '>' . $display . '</option>';
					endforeach;
					$checked = (isset($field['disabled_days']) ? $field['disabled_days'] : array());
					for($i = 0; $i <= 6; $i++):
						if(isset($checked[$i])):
							$checked[$i] = ' checked';
						else:
							$checked[$i] = '';
						endif;
					endfor;
					$min = (isset($field['min_date']) ? $field['min_date'] : '');
					$max = (isset($field['max_date']) ? $field['max_date'] : '');
					$row .= '<tr class="sod-cofm-date-options sod-date-' . $key . '" style="background-color:#cbe4de">
								<td><span style="float:right;"><strong>' . $key . '</strong>' . __( ' Date Picker Settings', 'sod_wc_checkout_fields' ) . '&rarr;</span></td>
								<td>' . __( 'Date Format: ', 'sod_wc_checkout_fields' ) . '<select name="woocommerce_checkout_shipping_fields['.$key.'][date_format]" id="woocommerce_checkout_shipping_fields['.$key.'][date_format]">' . $df_options . '</select></td>
								<td>' . __( 'Min Date', 'sod_wc_checkout_fields' ) . '<input type="text" name="woocommerce_checkout_shipping_fields['.$key.'][min_date]" id="woocommerce_checkout_shipping_fields['.$key.'][min_date]" value="' . $min . '" />
								<td>' . __( 'Max Date', 'sod_wc_checkout_fields' ) . '<input type="text" name="woocommerce_checkout_shipping_fields['.$key.'][max_date]" id="woocommerce_checkout_shipping_fields['.$key.'][max_date]" value="' . $max . '" />
								<td colspan="6">' . __( 'Disable Days', 'sod_wc_checkout_fields' ) . '<br />
									' . __( 'Sun: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][disabled_days][0]" value="0" ' . $checked[0] . ' />
									' . __( 'Mon: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][disabled_days][1]" value="1" ' . $checked[1] . ' />
									' . __( 'Tue: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][disabled_days][2]" value="2" ' . $checked[2] . ' />
									' . __( 'Wed: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][disabled_days][3]" value="3" ' . $checked[3] . ' />
									' . __( 'Thur: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][disabled_days][4]" value="4" ' . $checked[4] . ' />
									' . __( 'Fri: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][disabled_days][5]" value="5" ' . $checked[5] . ' />
									' . __( 'Sat: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_shipping_fields['.$key.'][disabled_days][6]" value="6" ' . $checked[6] . ' />
							</tr>';
				endif;
				echo $row;
			};?>
			</tbody>
		</table>		
		
	<?php
	}
	function additional_fields_form(){
		?>
		<p><?php _e('<strong>Note:</strong> You must enable customer notes in Woocommerce Settings for these fields to show up. You can then disable the notes box below.', 'sod_wc_checkout_fields');?></p>
		<p><?php _e('Drag each row to reposition the field during checkout.', 'sod_wc_checkout_fields');?></p>	
		<table class="widefat page" cellspacing="0" id="checkout-additional-fields">
			<thead>
				<tr>
					<td colspan="10"  class="block">
						<input type="submit" class="button-primary right" value="<?php _e('Save Settings','sod_wc_checkout_fields'); ?>" />
						<a id="new_additional_field" class="add button"><?php _e('Add Additional Section Field','sod_wc_checkout_fields'); ?></a>
					</td>
				</tr>
				<tr>
					<th class="narrow">
						<?php _e('Enabled','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is the label of the field that is visible during checkout.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is the label of the field that is visible during checkout.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Label','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is the name of the field that is used internally. It should be lowercase with no special characters. Spaces will be replaced with underscores.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is the name of the field that is used internally. It should be lowercase with no special characters. Spaces will be replaced with underscores.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Name','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('This is placeholder text that appears with the field before the customer enters their information. For checkboxes, this is ignored.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('This is placeholder text that appears with the field before the customer enters their information. For checkboxes, this is ignored.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Placeholder','sod_wc_checkout_fields');?>
					</th>
					<th class="narrow">
						<?php _e('Default Field?','sod_wc_checkout_fields');?>
					</th>
					<th class="narrow">
						<?php _e('Required?','sod_wc_checkout_fields');?>
					</th>
					<th>
						<?php _e('Type','sod_wc_checkout_fields');?>
					</th>
					<th>
						<a href="#" tip="<?php _e('Pick whether you\'d like your field position left, right or as a whole row. If you choose left or right, the field will take up half the row.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('Pick whether you\'d like your field position left, right or as a whole row. If you choose left or right, the field will take up half the row.','sod_wc_checkout_fields');?>"></a>
						<?php _e('Position');?>
					</th>
					<th><a href="#" tip="<?php _e('Enter any custom css classes you\'d like to add to the paragraph tag that surronds the field. Instead of spaces, you should use dashes. Muliple classes should be separated by a comma, with no space before or after the comma.','sod_wc_checkout_fields');?>" class="tips" tabindex="99" title="<?php _e('Enter any custom css classes you\'d like to add to the paragraph tag that surronds the field. Instead of spaces, you should use dashes. Muliple classes should be separated by a comma, with no space before or after the comma.','sod_wc_checkout_fields');?>"></a>
						<?php _e('CSS Classes','sod_wc_checkout_fields');?>
					</th>
					<th></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="10" class="block">
						<input type="submit" class="button-primary right" value="<?php _e('Save Settings','sod_wc_checkout_fields') ?>" />
						<a id="new_additional_field" class="add button"><?php _e('Add Additional Section Field','sod_wc_checkout_fields'); ?></a>
					</td>
				</tr>
			</tfoot>
  			<tbody class="additional-fields">
			<?php
			
			foreach($this->additional_fields as $key=>$field){
				
				$read_only 	= $field['default_field'] ==true ? 'readonly="readonly"': "";
				$name = $key;
				$not_required = array(
					'shipping_company','shipping_address_2'
				);
				if(isset($this->settings['edit_core']))://? $this->settings['edit_core'] == "on" ? 'checked="checked"' : false : false;
					if($this->settings['edit_core'] == true):
						$default_read_only 	= $field['default_field'] ==true ? 'disabled="disabled"': "";
						$enabled_read_only 	= false;//$field['default'] ==true && $field['required']==true && !in_array($name, $not_required)? 'disabled="disabled"': "";
						$required_read_only	= false;//$field['required']==true && !in_array($name, $not_required) ? 'disabled="disabled"': "";
					else:
						$default_read_only 	= $field['default_field'] ==true ? 'disabled="disabled"': "";
						$enabled_read_only 	= $field['default_field'] ==true && $field['required']==true && !in_array($name, $not_required)? 'disabled="disabled"': "";
						$required_read_only	= $field['required']==true && !in_array($name, $not_required) ? 'disabled="disabled"': "";
					endif;
				else:
					$default_read_only 	= $field['default_field'] ==true ? 'disabled="disabled"': "";
					$enabled_read_only 	= isset( $field['default_field'] ) ? $field['default_field'] ==true && ( isset( $field['required'] ) ? $field['required']:false) == true && !in_array($name, $not_required)? 'disabled="disabled"': "": "";
					$required_read_only	= isset( $field['required'] ) ? $field['required'] == true && !in_array( $name, $not_required ) ? 'disabled="disabled"': "":"";
				endif;
				$disabled 	= $field['default_field'] ==true ? 'disabled="disabled"': null;
				if(isset($field['required'])):
					$required 	= $field['required']==true ? 'checked="checked"':null;
				else:
					$required = '';
				endif;
				
				if(isset($field['css_class'])):
					$custom_css_class 	= is_array($field['css_class'])?implode(",",$field['css_class']):$field['css_class'];
				else:
					$custom_css_class = '';
				endif;
				$css_class 	= is_array($field['class'])?implode(",",$field['class']):$field['class'];
				
				if(isset($field['default_field'])):
					$default = $field['default_field'] ==true? 'checked="checked"':null;
				else:
					$default = '';
				endif;
				
				if(isset($field['enabled'])):
					$enabled = $field['enabled'] ==true? 'checked="checked"':null;
				else:
					$enabled = '';
				endif;
				
				$delete_btn = $field['default_field'] ==false ? '<a href="#" class="delete_additional button">X</a>':null;
				$options = "";
				$positions_options = "";
				$selected_value = 'text';
				if ($default):
					$default_input='<input type="checkbox" class="no-display" name="woocommerce_checkout_additional_fields['.$key.'][default_field]" '.$default_read_only. ' ' .$default.' id="woocommerce_checkout_additional_fields['.$key.'][default_field]" />';
					$types = array(
						'text'			=>__('Text Field','sod_wc_checkout_fields'),
						'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
						'state'			=>__('State','sod_wc_checkout_fields'),
						'country'		=>__('Country','sod_wc_checkout_fields'),
						'postcode'		=>__('Post Code','sod_wc_checkout_fields'),
						'date'			=>__('Date','sod_wc_checkout_fields'),
						'checkbox'		=>__('Checkbox','sod_wc_checkout_fields'),
						'selects'		=>__('Select','sod_wc_checkout_fields'),
						'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
						'heading'		=>__('Heading', 'sod_wc_checkout_fields')
					);
				else:
					$default_input='<input type="hidden" value="" class="no-display" name="woocommerce_checkout_additional_fields['.$key.'][default_field]"  id="woocommerce_checkout_additional_fields['.$key.'][default_field]" />';
					$types = array(
						'text'			=>__('Text Field','sod_wc_checkout_fields'),
						'textarea' 		=>__('Text Area','sod_wc_checkout_fields'),
						'date'			=>__('Date','sod_wc_checkout_fields'),
						'checkbox'		=>__('Checkbox','sod_wc_checkout_fields'),
						'selects'		=>__('Select','sod_wc_checkout_fields'),
						'radios'		=>__('Radio Group','sod_wc_checkout_fields'),
						'heading'		=>__('Heading','sod_wc_checkout_fields')
					);	
				endif;
				$positions = array(
					'form-row-first'=>__('Left','sod_wc_checkout_fields'),
					'form-row-last'	=>__('Right','sod_wc_checkout_fields'),
					'sod-clear'				=>__('Full Row','sod_wc_checkout_fields')
				);
				
				
				foreach($positions as $p_key=>$p_value){
					//Warning when not set - need to fix
					if(is_array( $field['class'])):
						if(in_array($p_key, $field['class'])):
							$selected = 'selected="selected"';
							$positions_options .='<option value="'.$css_class.'" '.$selected.'>'.$p_value.'</option>';
						else:
							if(isset($field['class'])):
							
								if(in_array($p_key, $field['class'])):
									$selected = 'selected="selected"';
									$positions_options .='<option value="'.$field['class'].'" '.$selected.'>'.$p_value.'</option>';
								else:
									$selected = $p_key ==$css_class? 'selected="selected"':null;
									$positions_options .='<option value="'.$p_key.'" '.$selected.'>'.$p_value.'</option>';
								endif;
							endif;
						endif;
					else:
						if(isset($field['class'])):
							$class_array = explode(",", $field['class']);
							if(in_array($p_key, $class_array)):
								$selected = 'selected="selected"';
								$positions_options .='<option value="'.$field['class'].'" '.$selected.'>'.$p_value.'</option>';
							else:
								$selected = $p_key ==$css_class? 'selected="selected"':null;
								$positions_options .='<option value="'.$p_key.'" '.$selected.'>'.$p_value.'</option>';
							endif;
						endif;
					endif;
					 
					
				}
				foreach($types as $r=>$value){
					if(isset($field['type'])):
						if($r ==$field['type']):
							$selected_value =  $field['type'];
						endif;
						$selected = $r ==$field['type']? 'selected="selected"':null;
					endif; 
					$options .='<option value="'.$r.'" '.$selected.'>'.$value.'</option>';
				};
				
				$hidden_input = $disabled ? '<input type="hidden" id="woocommerce_checkout_additional_fields['.$key.'][type]" name="woocommerce_checkout_additional_fields['.$key.'][type]" value="'.$selected_value.'"/>':null;
				$hidden_enabled_input = $enabled_read_only ?'<input type="hidden" id="woocommerce_checkout_additional_fields['.$key.'][enabled]" name="woocommerce_checkout_additional_fields['.$key.'][enabled]" value="on"/>':null;
				$hidden_default_input = $default_read_only ?'<input type="hidden" id="woocommerce_checkout_additional_fields['.$key.'][default_field]" name="woocommerce_checkout_additional_fields['.$key.'][default_field]" value="on"/>':null;
				$hidden_required_input = $required_read_only ?'<input type="hidden" id="woocommerce_checkout_additional_fields['.$key.'][required]" name="woocommerce_checkout_additional_fields['.$key.'][required]" value="on"/>':null;
				$row ='<tr class="sod-row-' . $key . ' sod-' . $field['type'] . '">
						<td class="narrow"><input name="woocommerce_checkout_additional_fields['.$key.'][enabled]" '.$enabled_read_only.' id="woocommerce_checkout_additional_fields['.$key.'][enabled]" type="checkbox" '.$enabled.'/>'.$hidden_enabled_input.'</td>
						<td><input type="text" name="woocommerce_checkout_additional_fields['.$key.'][label]"  id="woocommerce_checkout_additional_fields['.$key.'][label]" value="' . $field['label'].	'"/></td>
						<td><input type="text" class="name" name="woocommerce_checkout_additional_fields['.$key.'][name]" '.$read_only.'id="woocommerce_checkout_additional_fields['.$key.'][name]"value="' . $key.'"/></td>
						<td><input type="text" name="woocommerce_checkout_additional_fields['.$key.'][placeholder]" id="woocommerce_checkout_additional_fields['.$key.'][placeholder]" value="' . $field['placeholder'].	'"/></td>
						<td class="narrow">'.$default_input.''.$hidden_default_input.'</td>
						<td class="narrow"><input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][required]"  '.$required_read_only	.' ' .$required.' id="woocommerce_checkout_additional_fields['.$key.'][required]" />'.$hidden_required_input.'</td>
						<td><select name="woocommerce_checkout_additional_fields['.$key.'][type]" '.$disabled.' id="woocommerce_checkout_additional_fields['.$key.'][type]">'.$options.'</select>'.$hidden_input.'</td>
						<td><select name="woocommerce_checkout_additional_fields['.$key.'][class]" id="woocommerce_checkout_additional_fields['.$key.'][class]">'.$positions_options.'</select></td>
						<td><input type="text" class="css_class" name="woocommerce_checkout_additional_fields['.$key.'][css_class]" id="woocommerce_checkout_additional_fields['.$key.'][css_class]" value="'.$custom_css_class.'"/></td>
						<td>'.$delete_btn.'</td>
					</tr>';
				if($field['type'] == 'date'):
					//date picker options
					$date_format_options = array(
						'mm/dd/yy'	=> 'mm/dd/yy',
						'dd/mm/yy'	=> 'dd/mm/yy'
					);
					$date_format_options = apply_filters('sod_cofm_date_options', $date_format_options );
					$df_options = '';
					$df = (isset($field['date_format']) ? $field['date_format'] : '');
					foreach( $date_format_options as $format=>$display ):
						$selected = ($df == $format) ? 'selected="selected"' : '';
						$df_options .= '<option value="' . $format . '" ' . $selected . '>' . $display . '</option>';
					endforeach;
					$checked = (isset($field['disabled_days']) ? $field['disabled_days'] : array());
					for($i = 0; $i <= 6; $i++):
						if(isset($checked[$i])):
							$checked[$i] = ' checked';
						else:
							$checked[$i] = '';
						endif;
					endfor;
					$min = (isset($field['min_date']) ? $field['min_date'] : '');
					$max = (isset($field['max_date']) ? $field['max_date'] : '');
					$row .= '<tr class="sod-cofm-date-options sod-date-' . $key . '" style="background-color:#cbe4de">
								<td><span style="float:right;"><strong>' . $key . '</strong>' . __( ' Date Picker Settings', 'sod_wc_checkout_fields' ) . '&rarr;</span></td>
								<td>' . __( 'Date Format: ', 'sod_wc_checkout_fields' ) . '<select name="woocommerce_checkout_additional_fields['.$key.'][date_format]" id="woocommerce_checkout_additional_fields['.$key.'][date_format]">' . $df_options . '</select></td>
								<td>' . __( 'Min Date', 'sod_wc_checkout_fields' ) . '<input type="text" name="woocommerce_checkout_additional_fields['.$key.'][min_date]" id="woocommerce_checkout_additional_fields['.$key.'][min_date]" value="' . $min . '" />
								<td>' . __( 'Max Date', 'sod_wc_checkout_fields' ) . '<input type="text" name="woocommerce_checkout_additional_fields['.$key.'][max_date]" id="woocommerce_checkout_additional_fields['.$key.'][max_date]" value="' . $max . '" />
								<td colspan="6">' . __( 'Disable Days', 'sod_wc_checkout_fields' ) . '<br />
									' . __( 'Sun: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][disabled_days][0]" value="0" ' . $checked[0] . ' />
									' . __( 'Mon: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][disabled_days][1]" value="1" ' . $checked[1] . ' />
									' . __( 'Tue: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][disabled_days][2]" value="2" ' . $checked[2] . ' />
									' . __( 'Wed: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][disabled_days][3]" value="3" ' . $checked[3] . ' />
									' . __( 'Thur: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][disabled_days][4]" value="4" ' . $checked[4] . ' />
									' . __( 'Fri: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][disabled_days][5]" value="5" ' . $checked[5] . ' />
									' . __( 'Sat: ', 'sod_wc_checkout_fields' ) . '<input type="checkbox" name="woocommerce_checkout_additional_fields['.$key.'][disabled_days][6]" value="6" ' . $checked[6] . ' />
							</tr>';
				endif;
				echo $row;
			};?>
			</tbody>
		</table>		
		
	<?php
	}
}

 ?>
