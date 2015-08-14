/*
 * JigoShop Checkout Field Manager Admin JS
 * Copyright Sixty One Designs 2012
 */
jQuery(document).ready(function(){
	//Sortable Tables
	if(jQuery('table#checkout-billing-fields tbody.billing-fields, table#checkout-shipping-fields tbody.shipping-fields, table#checkout-additional-fields tbody.additional-fields').length > 0 ){
		jQuery('table#checkout-billing-fields tbody.billing-fields, table#checkout-shipping-fields tbody.shipping-fields, table#checkout-additional-fields tbody.additional-fields').sortable({
			//placeholder: "highlight",
			start: function(e, info) {
				if(info.item.hasClass('sod-date')){
					info.item.siblings("tr.sod-cofm-date-options").appendTo(info.item);
				}
	    	},
	    	stop: function(e, info) {
	    		if(info.item.hasClass('sod-date')){
	    			info.item.after(info.item.find("tr.sod-cofm-date-options"));
	    		}
	    	},
	    	connectWith: jQuery(this),
	    	revert: true,
	    	opacity: '0.5',
			update: function() {}
		});
	}
	
	
	//Add New Billing Field
	jQuery('#new_billing_field').live('click',function(){
		var Othis = jQuery(this);
		jQuery.post(  
            checkoutmanager.siteurl+"/wp-admin/admin-ajax.php",
              //Data  
            {  
               action:'add_new_billing_field',  
               'cookie': encodeURIComponent(document.cookie),  
               'ajax_nonce':checkoutmanager.ajax_nonce,
             },  
            //on success function  
            function(row){
            	jQuery('table#checkout-billing-fields tbody.billing-fields').prepend(row);
            }
         );  
		return false;
	})
	//Add New Shipping Field
	jQuery('#new_shipping_field').live('click',function(){
		var Othis = jQuery(this);
		jQuery.post(  
            checkoutmanager.siteurl+"/wp-admin/admin-ajax.php",
              //Data  
            {  
               action:'add_new_shipping_field',  
               'cookie': encodeURIComponent(document.cookie),  
               'ajax_nonce':checkoutmanager.ajax_nonce,
             },  
            //on success function  
            function(row){
            	jQuery('table#checkout-shipping-fields tbody.shipping-fields').prepend(row);
            }
         );  
		return false;
	})
	//Add New Additional Field
	jQuery('#new_additional_field').live('click',function(){
		var Othis = jQuery(this);
		jQuery.post(  
            checkoutmanager.siteurl+"/wp-admin/admin-ajax.php",
              //Data  
            {  
               action:'add_new_additional_field',  
               'cookie': encodeURIComponent(document.cookie),  
               'ajax_nonce':checkoutmanager.ajax_nonce,
             },  
            //on success function  
            function(row){
            	jQuery('table#checkout-additional-fields tbody.additional-fields').prepend(row);
            }
         );  
		return false;
	})
	//Delete Shipping Row
	jQuery('a.delete_shipping').live('click',function(){
		jQuery(this).parent().parent().next('.sod-cofm-date-options').remove(); //get rid of date options if they're there
		jQuery(this).parent().parent().remove();
		return false;
	});
	//Delete Billing Row
	jQuery('a.delete_billing').live('click',function(){
		jQuery(this).parent().parent().next('.sod-cofm-date-options').remove(); //get rid of date options if they're there
		jQuery(this).parent().parent().remove();
		return false;
	});
	//Delete Additional Row
	jQuery('a.delete_additional').live('click',function(){
		jQuery(this).parent().parent().next('.sod-cofm-date-options').remove(); //get rid of date options if they're there
		jQuery(this).parent().parent().remove();
		return false;
	});
	//Add Pointer Handle Drag class to row onhover
	 jQuery("table#checkout-billing-fields tbody.billing-fields tr").hover(
        function () {
            jQuery(this).find('td.narrow:first').addClass('pointer');
        }, 
        function () {
            jQuery(this).find('td.narrow:first').removeClass('pointer');
        }
    );
    //preformats new field names (billing)
    jQuery('table#checkout-billing-fields tbody.billing-fields tr input.name').live('focusout', function(){
    	var text = jQuery(this).val().split(" ").join('_').toLowerCase();
    	var $tr  = jQuery(this).parent().parent();
    	var $tbody = $tr.parent();
    	text = text.replace(/'/g, '');
    	jQuery($tr).children('td').each(function(){
    		var label = jQuery(this).attr('data-label');
    		
    		var $input = jQuery(this).find('input');
    		var $select = jQuery(this).find('select');
    		if(label!= undefined){
    			$input.attr('name', 'woocommerce_checkout_billing_fields['+text+']['+label+']');
    			$input.attr('id', 'woocommerce_checkout_billing_fields['+text+']['+label+']');
    			$select.attr('name', 'woocommerce_checkout_billing_fields['+text+']['+label+']');
    			$select.attr('id', 'woocommerce_checkout_billing_fields['+text+']['+label+']');
    		}
    	})
    	jQuery(this).val(text);
    })
     //preformats new field names (billing)
    jQuery('table#checkout-shipping-fields tbody.shipping-fields tr input.name').live('focusout', function(){
    	var text = jQuery(this).val().split(" ").join('_').toLowerCase();
    	var $tr  = jQuery(this).parent().parent();
    	var $tbody = $tr.parent();
    	text = text.replace(/'/g, '');
    	jQuery($tr).children('td').each(function(){
    		var label = jQuery(this).attr('data-label');
    		
    		var $input = jQuery(this).find('input');
    		var $select = jQuery(this).find('select');
    		if(label!= undefined){
    			$input.attr('name', 'woocommerce_checkout_shipping_fields['+text+']['+label+']');
    			$input.attr('id', 'woocommerce_checkout_shipping_fields['+text+']['+label+']');
    			$select.attr('name', 'woocommerce_checkout_shipping_fields['+text+']['+label+']');
    			$select.attr('id', 'woocommerce_checkout_shipping_fields['+text+']['+label+']');
    		}
    	})
    	jQuery(this).val(text);
    })
    //preformats new field names (billing)
    jQuery('table#checkout-additional-fields tbody.additional-fields tr input.name').live('focusout', function(){
    	var text = jQuery(this).val().split(" ").join('_').toLowerCase();
    	var $tr  = jQuery(this).parent().parent();
    	var $tbody = $tr.parent();
    	text = text.replace(/'/g, '');
    	jQuery($tr).children('td').each(function(){
    		var label = jQuery(this).attr('data-label');
    		
    		var $input = jQuery(this).find('input');
    		var $select = jQuery(this).find('select');
    		if(label!= undefined){
    			$input.attr('name', 'woocommerce_checkout_additional_fields['+text+']['+label+']');
    			$input.attr('id', 'woocommerce_checkout_additional_fields['+text+']['+label+']');
    			$select.attr('name', 'woocommerce_checkout_additional_fields['+text+']['+label+']');
    			$select.attr('id', 'woocommerce_checkout_additional_fields['+text+']['+label+']');
    		}
    	})
    	jQuery(this).val(text);
    })
    //preformats new field css (billing)
     jQuery('table#checkout-billing-fields tbody.billing-fields tr input.css').live('focusout', function(){
    	var text = jQuery(this).val().split(' ').join('-').toLowerCase();
    	text = text.replace(/'/g, '');
    	jQuery(this).attr('name', 'woocommerce_checkout_billing_fields['+text+'][css]');
    	jQuery(this).attr('id', 'woocommerce_checkout_billing_fields['+text+'][css]');
    	jQuery(this).val(text);
    })
    //preformats new field css (additional)
     jQuery('table#checkout-additional-fields tbody.additional-fields tr input.css').live('focusout', function(){
    	var text = jQuery(this).val().split(' ').join('-').toLowerCase();
    	text = text.replace(/'/g, '');
    	jQuery(this).attr('name', 'woocommerce_checkout_additional_fields['+text+'][css]');
    	jQuery(this).attr('id', 'woocommerce_checkout_additional_fields['+text+'][css]');
    	jQuery(this).val(text);
    })
    //preformats new field names (shipping)
    jQuery('table#checkout-shipping-fields tbody.shipping-fields tr input.name').live('focusout', function(){
    	var text = jQuery(this).val().split(" ").join('_').toLowerCase();
    	text = text.replace(/'/g, '');
    	jQuery(this).val(text);
    })
    //preformats new field css (shipping)
     jQuery('table#checkout-shipping-fields tbody.shipping-fields tr input.css').live('focusout', function(){
    	var classes = jQuery(this).val().split(' ').join('-').toLowerCase();
    	text = text.replace(/'/g, '');
    	
    	jQuery(this).val(text);
    })
    
    jQuery('table#checkout-billing-fields input.button-primary').live('click', function(){
    	var ret = true;
    	   jQuery('input.name.required').each(function(){
    	   		var nm = jQuery(this).val();
    	   		if(nm == ''){
    	   			jQuery(this).css({'border':'1px solid red'});
    	   			ret = false;
    	   		}
    	   });
    	   if(!ret){
    	   		return false;
    	   }
    })
    jQuery('table#checkout-shipping-fields input.button-primary').live('click', function(){
    	var ret = true;
    	   jQuery('input.name.required').each(function(){
    	   		var nm = jQuery(this).val();
    	   		if(nm == ''){
    	   			jQuery(this).css({'border':'1px solid red'});
    	   			ret = false;
    	   		}
    	   });
    	   if(!ret){
    	   		return false;
    	   }
    })
    jQuery('table#checkout-additional-fields input.button-primary').live('click', function(){
    	var ret = true;
    	   jQuery('input.name.required').each(function(){
    	   		var nm = jQuery(this).val();
    	   		if(nm == ''){
    	   			jQuery(this).css({'border':'1px solid red'});
    	   			ret = false;
    	   		}
    	   });
    	   if(!ret){
    	   		return false;
    	   }
    })
})
