/*
meatatbillys Scripts File
Author: Eddie Machado

This file should contain any js scripts you want to add to the site.
Instead of calling it in the header or throwing it inside wp_head()
this file will be called automatically in the footer so as not to
slow the page load.

*/
/** Checkout displaying date picker for pickup **/
// var button1 = document.getElementById("shipping_method_0_local_pickup");
// var button2 = document.getElementById("shipping_method_0_billy_cart_shipping");

// if (button1.checked){
//     document.getElementById( 'pickup_date_2_field' ).style.display = 'block';
//     document.getElementById( 'pickup_time_2_field' ).style.display = 'block';
// }else if (button2.checked) {
//     document.getElementById( 'pickup_date_2_field' ).style.display = 'none';
//     document.getElementById( 'pickup_time_2_field' ).style.display = 'none';
// }

// jQuery(document).ajaxStop(function(event, request, settings ) {

// 	jQuery('input:radio[name="shipping_method[0]"]').change(
// 	    function(){
// 	        if (jQuery(this).val() == 'local_pickup') {
// 	          jQuery( "#pickup_date_2_field" ).show();
// 	          jQuery( "#pickup_time_2_field" ).show();
// 	        }
// 	        else {
// 	          jQuery( "#pickup_date_2_field" ).hide();
// 	          jQuery( "#pickup_time_2_field" ).hide();
// 	        }

//     });

// });

/* Date picker */
jQuery('#pickup_date').prop('readonly', true);

/* when product quantity changes, update quantity attribute on add-to-cart button */
			jQuery("form.cart").on("change", "input.qty", function() {
			    if (this.value === "0")
			        this.value = "1";
			 
			    jQuery(this.form).find("button[data-quantity]").attr("data-quantity", this.value);
			});
			
// Accordian menu
jQuery(document).ready(function(jQuery){
									jQuery('.product-categories').dcAccordion({
										eventType: 'click',
										autoClose: true,
										saveState: true,
										disableLink: false,
										speed: 'fast',
										classActive: 'test',
										showCount: false
									});
								});

// Check if browser can handle SVG
if(!Modernizr.svg){
    // Get all img tag of the document and create variables
    var i=document.getElementsByTagName("img"),j,y;

    // For each img tag
    for(j = i.length ; j-- ; ){
        y = i[j].src
        // If filenames ends with SVG
        if( y.match(/svg$/) ){
            // Replace "svg" by "png"
            i[j].src = y.slice(0,-3) + 'png'
        }
    }
}
// IE8 ployfill for GetComputed Style (for Responsive Script below)
if (!window.getComputedStyle) {
	window.getComputedStyle = function(el, pseudo) {
		this.el = el;
		this.getPropertyValue = function(prop) {
			var re = /(\-([a-z]){1})/g;
			if (prop == 'float') prop = 'styleFloat';
			if (re.test(prop)) {
				prop = prop.replace(re, function () {
					return arguments[2].toUpperCase();
				});
			}
			return el.currentStyle[prop] ? el.currentStyle[prop] : null;
		}
		return this;
	}
}

// as the page loads, call these scripts
jQuery(document).ready(function($) {

	/*
	Responsive jQuery is a tricky thing.
	There's a bunch of different ways to handle
	it, so be sure to research and find the one
	that works for you best.
	*/
	
	/* getting viewport width */
	var responsive_viewport = $(window).width();
	
	/* if is below 481px */
	if (responsive_viewport < 481) {
	
	} /* end smallest screen */
	
	/* if is larger than 481px */
	if (responsive_viewport > 481) {
	
	} /* end larger than 481px */
	
	/* if is above or equal to 768px */
	if (responsive_viewport >= 768) {
	
		/* load gravatars */
		$('.comment img[data-gravatar]').each(function(){
			$(this).attr('src',$(this).attr('data-gravatar'));
		});
		
	}
	
	/* off the bat large screen actions */
	if (responsive_viewport > 1030) {
	
	}
	
	
	// add all your scripts here
	
 
}); /* end of as page load scripts */


/*! A fix for the iOS orientationchange zoom bug.
 Script by @scottjehl, rebound by @wilto.
 MIT License.
*/
(function(w){
	// This fix addresses an iOS bug, so return early if the UA claims it's something else.
	if( !( /iPhone|iPad|iPod/.test( navigator.platform ) && navigator.userAgent.indexOf( "AppleWebKit" ) > -1 ) ){ return; }
	var doc = w.document;
	if( !doc.querySelector ){ return; }
	var meta = doc.querySelector( "meta[name=viewport]" ),
		initialContent = meta && meta.getAttribute( "content" ),
		disabledZoom = initialContent + ",maximum-scale=1",
		enabledZoom = initialContent + ",maximum-scale=10",
		enabled = true,
		x, y, z, aig;
	if( !meta ){ return; }
	function restoreZoom(){
		meta.setAttribute( "content", enabledZoom );
		enabled = true; }
	function disableZoom(){
		meta.setAttribute( "content", disabledZoom );
		enabled = false; }
	function checkTilt( e ){
		aig = e.accelerationIncludingGravity;
		x = Math.abs( aig.x );
		y = Math.abs( aig.y );
		z = Math.abs( aig.z );
		// If portrait orientation and in one of the danger zones
		if( !w.orientation && ( x > 7 || ( ( z > 6 && y < 8 || z < 8 && y > 6 ) && x > 5 ) ) ){
			if( enabled ){ disableZoom(); } }
		else if( !enabled ){ restoreZoom(); } }
	w.addEventListener( "orientationchange", restoreZoom, false );
	w.addEventListener( "devicemotion", checkTilt, false );
})( this );