jQuery(document).ready(function () {
    var deliveryDays;
    var cutOffTime;
    var isDelivery = false;
    jQuery('#billing_city').select2().width('100%');
    var messageField = jQuery('#deliveryMessage');
    var messageToDisplay;


    //set default value of postcode and run onChangePostcode()
    jQuery('#billing_postcode').val('');
    onChangePostcode();

    jQuery("#ship-to-different-address").hide();

    jQuery('#billing_postcode').keyup(onChangePostcode);
    jQuery('#billing_city').change(updateShippingOptions);
    jQuery('#pickupButton').click(selectPickup);
    jQuery('#deliveryButton').click(selectDelivery);

    function updateShippingOptions() {
        updatePickupDeliveryButtons();
        updatePickupDeliveryCalendar();

        if(isDelivery) {
            // hide pickup option
            jQuery('#shipping_css').text('#shipping_method li:nth-child(1) { display: none } ' +
            '#shipping_method input { display: none }');
        } else {
            jQuery('#shipping_css').text('#shipping_method li:nth-child(2) { display: none } ' +
                '#shipping_method input { display: none }');
        }


        if(isDelivery) {
            updateShippingOptionsForDelivery();
        } else {
            updateShippingOptionsForPickup();
        }
    }

    function updatePickupDeliveryButtons() {
        var selectedSuburb = jQuery('#billing_city').val();
        var deliveryButton = jQuery('#deliveryButton');
        var pickupButton = jQuery('#pickupButton');

        if(!selectedSuburb || selectedSuburb === 'NA') {
            deliveryButton.prop('disabled', true);
            deliveryButton.html('Delivery not available for this area, <br> please pickup instore');
        } else {
            deliveryButton.prop('disabled', false);
            deliveryButton.html('Delivery');
        }

        if(isDelivery) {
            deliveryButton.css('backgroundColor','#2E56B3'); //selected
            pickupButton.css('backgroundColor','#828BA0');
        } else {
            deliveryButton.css('backgroundColor','#828BA0');
            pickupButton.css('backgroundColor','#2E56B3'); //selected
        }
    }

    function updatePickupDeliveryCalendar() {
        if(isDelivery) {
            var config = {
                dateFormat: "DD, dd/mm/yy",
                beforeShowDay: deliveryBeforeShowDay
            };
            jQuery( "#delivery_date" ).datepicker(config);
            jQuery("#billy-cart-additional-fields span.delivery-date").show();
            jQuery("#billy-cart-additional-fields span.pickup-time").hide();
        } else {
            var config = {
                dateFormat: "DD, dd/mm/yy",
                beforeShowDay: pickupBeforeShowDay
            };
            jQuery( "#pickup_date" ).datepicker(config);
            jQuery("#billy-cart-additional-fields span.delivery-date").hide();
            jQuery("#billy-cart-additional-fields span.pickup-time").show();
        }

        function deliveryBeforeShowDay (date) {
            if (isValidDeliveryDate(date)) {
                return [true, '', ''];
            }
            return [false, '', ''];
        }

        function pickupBeforeShowDay (date) {
            if (isValidPickupDate(date)) {
                return [true, '', ''];
            }
            return [false, '', ''];
        }

    }

    function updateShippingOptionsForPickup() {
        jQuery("#shipping_method_0_local_pickup").click();
        jQuery("#delivery_date").val('');
        //jQuery("#shipping_method_0_billy_cart_shipping").hide();

        messageField.text('');
        updateCalendarPickupDays();
    }

    function updateShippingOptionsForDelivery() {
        jQuery("#shipping_method_0_billy_cart_shipping").click();
        jQuery("#pickup_date").val('');
       // jQuery("#shipping_method_0_local_pickup").hide();

        var selectedSuburb = jQuery('#billing_city').val();
        var deliveryZone = getDeliveryZoneOfSuburb(selectedSuburb);
        deliveryDays = getDaysForDeliveryZone(deliveryZone);
        cutOffTime = getCutOffTimeForDeliveryZone(deliveryZone);

        updateCalendarDeliveryDays();

        messageToDisplay = 'Delivery to ' + selectedSuburb + ' occur on ' + deliveryDays +
            '\n your next delivery day is on: ' + getDefaultDeliveryDate() + ' between ' +
            getTime(deliveryZone.start_time) + ' and ' + getTime(deliveryZone.end_time) + '.';

        messageField.text(messageToDisplay);

        function getTime(time) {
            return getTimeWithDots(getTime12Hour(time)) + ' ' + getTimeEnd(time);
        }

        function getTimeWithDots(time) {
            return time.substr(0, time.length - 2) + ':' + time.substr(time.length - 2);
        }

        function getTime12Hour(time) {
            if(time >= 1300) {
                return (time - 1200) + '';
            }
            return time;
        }

        function getTimeEnd(time) {
            if(time > 1200) {
                return 'pm';
            }
            return 'am';
        }

        function getDeliveryZoneOfSuburb(suburb) {
            var matched;
            jQuery.each(deliveryZones, function (key, deliveryZone) {
                jQuery.each(deliveryZone.postcodes, function (key, location) {
                    if (location.suburb == suburb) {
                        matched = deliveryZone;
                    }
                });
            });
            return matched;
        }

        function getDaysForDeliveryZone(deliveryZone) {
            console.log(deliveryZone);
            return deliveryZone.delivery_day;
        }

        function getCutOffTimeForDeliveryZone(deliveryZone){
            return deliveryZone.cutoff_time;
        }
    }

    function updateCalendarDeliveryDays() {
        // update the days somehow
        jQuery("#delivery_date").datepicker("refresh");
        jQuery("#delivery_date").val(getDefaultDeliveryDate());

    }

    function updateCalendarPickupDays() {
        // update the days somehow
        jQuery("#pickup_date").datepicker("refresh");
        jQuery("#pickup_date").val(getDefaultPickupDate());
    }




    function onChangePostcode () {
        var selectedPostcode = jQuery('#billing_postcode').val();
        var deliveryButton = jQuery('#deliveryButton');

        var suburbs = getSuburbsWithPostcode(selectedPostcode);
        if (suburbs.length == 0) {
            isDelivery = false;
            emptySuburbSelect();
        }
        else {
            addSuburbsToSuburbSelect(suburbs);
        }
        updateShippingOptions();


        function isValidPostcode(postcode) {
            return postcode.length === 4;
        }

        function getSuburbsWithPostcode(postcode) {
            var possibleSuburbs = [];
            if(!isValidPostcode(postcode)){
                return possibleSuburbs;
            }
            jQuery.each(deliveryZones, function (key, deliveryZone) {
                jQuery.each(deliveryZone.postcodes, function (key, location) {
                    if (location.postcode == postcode) {
                        possibleSuburbs.push(location.suburb);
                    }
                });
            });
            return possibleSuburbs;
        }

        function emptySuburbSelect() {
            var suburbSelectElement = jQuery('#billing_city');
            suburbSelectElement.empty(); // remove old options
            suburbSelectElement.append(jQuery('<option></option>')
                .attr('value', '').text(''));
            suburbSelectElement.append(jQuery('<option></option>')
                .attr('value', 'NA').text('No Suburb Available'));
            suburbSelectElement.select2();
            suburbSelectElement.select2('val', 'NA');
            return suburbSelectElement;
        }
        function addSuburbsToSuburbSelect(suburbs) {
            var suburbSelectElement = jQuery('#billing_city');
            suburbSelectElement.empty();
            suburbSelectElement.append(jQuery('<option></option>')
                .attr('value', '').text(''));
            jQuery.each(suburbs, function (key, value) {
                console.log(value);
                suburbSelectElement.append(jQuery('<option></option>')
                    .attr('value', value).text(value));
            });
            suburbSelectElement.select2();
            return suburbSelectElement;
        }


    }

    function getDefaultPickupDate() {
        var date = new Date();
        while(!isValidPickupDate(date)) {
            date.setDate(date.getDate()+1);
        }
        var curr_date = date.getDate();
        var curr_month = date.getMonth() + 1; //Months are zero based
        var curr_year = date.getFullYear();
        return jQuery.datepicker.formatDate(  "DD, dd/mm/yy", date );
    }
    function getDefaultDeliveryDate() {
        var date = new Date();
        while(!isValidDeliveryDate(date)) {
            date.setDate(date.getDate() + 1);
        }
        var curr_date = date.getDate();
        var curr_month = date.getMonth() + 1; //Months are zero based
        var curr_year = date.getFullYear();

        return jQuery.datepicker.formatDate(  "DD, dd/mm/yy", date );
        //console.log('hello', date);
        //return date;
    }

    function isValidDeliveryDate(date) {
        if (!deliveryDays || !jQuery('#billing_city').val()) {
            return false;
        }
        var todaysDate = new Date();
        var timeNow = todaysDate.getHours() * 100;
        //console.log('time now', timeNow);
        var fortnightAway = new Date(+new Date + 1000 * 60 * 60 * 24 * 21);
        var tomorrowDate = new Date(+new Date + 1000 * 60 * 60 * 24 * 1);


        if (date <= todaysDate) {
            return false;
        }

        if (date > fortnightAway) {
            return false;
        }

        var weekday = new Array(7);
        weekday[0]=  "Sunday";
        weekday[1] = "Monday";
        weekday[2] = "Tuesday";
        weekday[3] = "Wednesday";
        weekday[4] = "Thursday";
        weekday[5] = "Friday";
        weekday[6] = "Saturday";

        var day = weekday[date.getDay()];
        //console.log('date', date);
        //console.log('day being checked', day);

        if (deliveryDays.indexOf(day) == -1) {
            //console.log('date above is not found');
            return false;
        }
        else if (date.getDate() == tomorrowDate.getDate() &&
            date.getMonth() == tomorrowDate.getMonth() &&
            date.getFullYear() == tomorrowDate.getFullYear() &&
            timeNow >= cutOffTime){
            return false;
        }

        return true;
    }


    function isValidPickupDate(date) {

        var todaysDate = new Date();
        var timeNow = todaysDate.getHours() * 100;
        //console.log('time now', timeNow);
        var aWeekAway = new Date(+new Date + 1000 * 60 * 60 * 24 * 8);
        var tomorrowDate = new Date(+new Date + 1000 * 60 * 60 * 24 * 1);


        if (date <= todaysDate) {
            return false;
        }

        if (date > aWeekAway) {
            return false;
        }

        else if (date.getDate() == tomorrowDate.getDate() &&
            date.getMonth() == tomorrowDate.getMonth() &&
            date.getFullYear() == tomorrowDate.getFullYear() &&
            timeNow >= cutOffTime){
            return false;
        }

        return true;
    }

    function selectPickup() {
        isDelivery = false;

        var config = {
            dateFormat: "DD, dd/mm/yy",
            beforeShowDay: beforeShowDay
        };

        jQuery( "#pickup_date" ).datepicker(config);
        jQuery("#billy-cart-additional-fields span.delivery-date").hide();
        jQuery("#billy-cart-additional-fields span.pickup-time").show();



        updateShippingOptions();

        function beforeShowDay (date) {
            if (isValidPickupDate(date)) {
                return [true, "Highlighted", 'haha'];
            }
            return [false, '', ''];
        }
    }

    function selectDelivery() {
        isDelivery = true;
        var config = {
            dateFormat: "DD, dd/mm/yy",
            beforeShowDay: beforeShowDay
        };
        jQuery( "#delivery_date" ).datepicker(config);
        jQuery("#billy-cart-additional-fields span.delivery-date").show();
        jQuery("#billy-cart-additional-fields span.pickup-time").hide();
        updateShippingOptions();

        function beforeShowDay (date) {
            if (isValidDeliveryDate(date)) {
                return [true, '', ''];
            }
            return [false, '', ''];
        }

    }

});
