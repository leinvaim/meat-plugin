




jQuery( document ).ready(function() {


    jQuery('.billy-radio').click(function () {

        jQuery('.billy-radio').removeClass('active');
        jQuery(this).addClass('active');
        jQuery(this).children('input').attr('checked', true);
        jQuery(this).parents('form:first').submit();

    });


    jQuery('#billy-cart-reset-button').change(function(){
        //jQuery('form.shipping_calculator').submit();
    });




    jQuery('#calc_shipping_postcode').keypress(function(e) {
        if(e.which == 13) {
            e.preventDefault();
            jQuery( "button[name='calc_shipping']" ).trigger( "click" );
        }
    });

    jQuery('#dispatch_details_field').hide();


});



