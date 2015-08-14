/*
 * Woocommerce Checkout Field Manager Frontend JS
 * Copyright Sixty One Designs 2012
 */
jQuery(document).ready(function(){
	
	//Add Datepickers to date fields
	 jQuery(function() {
	 	jQuery('.date > input').each(function(){
			jQuery(this).datepicker();
		});
		//Remove "value" attribute from checkboxes
		jQuery('.checkbox > input').each(function(){
			jQuery(this).removeAttr('value');
		});
		//jQuery("select.country_select").chosen();
		
	});
	var parent = jQuery('input[name="createaccount"]').parent();
	parent.before('<div class="clear left hundred"></div>');
		// Frontend Chosen selects
	//jQuery("select.chzn").chosen();
})
