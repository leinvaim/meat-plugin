jQuery(document).ready(function () {
    var deliveryDays;
    var cutOffTime;

    jQuery('#billing_city').change(function() {
        var selectedSuburb = jQuery('#billing_city').val();
        var deliveryZone = getDeliveryZoneOfSuburb(selectedSuburb);

        deliveryDays = getDaysForDeliveryZone(deliveryZone);
        cutOffTime = getCutOffTimeForDeliveryZone(deliveryZone);

        updateCalendarDeliveryDays();




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




    });

    function updateCalendarDeliveryDays() {

        // update the days somehow
        jQuery("#delivery_date").datepicker("refresh");
        jQuery("#delivery_date").val(getDefaultDeliveryDate());
    }


    jQuery('#billing_postcode').keyup(function () {

        var selectedPostcode = jQuery('#billing_postcode').val();
        var deliveryButton = jQuery('#deliveryButton');

        if(!isValidPostcode(selectedPostcode)) {
            emptySuburbSelect();
            deliveryButton.prop('disabled', true);
            deliveryButton.html('Sorry, delivery is not available');
            // do something with calendar?
            return;
        }

        var suburbs = getSuburbsWithPostcode(selectedPostcode);

        console.log('suburb', suburbs.length);
        if (suburbs.length == 0) {
            deliveryButton.prop('disabled', true);
            deliveryButton.html('Sorry, delivery is not available');
            //todo: check pickup button instead of running selectPickup method.
            // causing trouble when changing postcode, always reset to pickup.
            //selectPickup();
        }
        else {
            deliveryButton.prop('disabled', false);
            deliveryButton.html('Delivery');
        }

        addSuburbsToSuburbSelect(suburbs);


        function isValidPostcode(postcode) {
            return postcode.length === 4;
        }


        function getSuburbsWithPostcode(postcode) {
            var possibleSuburbs = [];
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
        }
        function addSuburbsToSuburbSelect(suburbs) {
            var suburbSelectElement = jQuery('#billing_city');
            suburbSelectElement.empty(); // remove old options
            suburbSelectElement.append(jQuery('<option></option>')
                .attr('value', '').text('- Select your suburb -'));

            jQuery.each(suburbs, function (key, value) {
                console.log(value);
                suburbSelectElement.append(jQuery('<option></option>')
                    .attr('value', value).text(value));
            });

            return suburbSelectElement;
        }


    });

    jQuery('#pickupButton').click(selectPickup);
    jQuery('#deliveryButton').click(selectDelivery);

    function selectPickup() {
        //jQuery("#shipping_method_0_local_pickup").click();
        //togglBillycartFields();
    }


    function getDefaultDeliveryDate() {
        if (!deliveryDays) {
            console.log('no default value');
            return '';
        }
        var date = new Date();
        while(!isValidDeliveryDate(date)) {
            date.setDate(date.getDate()+1);
        }

        var curr_date = date.getDate();
        var curr_month = date.getMonth() + 1; //Months are zero based
        var curr_year = date.getFullYear();

        return jQuery.datepicker.formatDate(  "DD, dd/mm/yy", date );
        //console.log('hello', date);
        //return date;
    }

    function isValidDeliveryDate(date) {
        if (!deliveryDays) {
            return false;
        }
        var todaysDate = new Date();
        var timeNow = todaysDate.getHours() * 100;
        console.log('time now', timeNow);
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

        if (deliveryDays.indexOf(day) == -1) {
            return false;
        }
        else if (date.getDay() == tomorrowDate.getDay() &&
            date.getMonth() == tomorrowDate.getMonth() &&
            date.getFullYear() == tomorrowDate.getFullYear() &&
            timeNow > cutOffTime){
            return false;
        }

        return true;
    }

    function selectDelivery() {
        //jQuery("#shipping_method_0_billy_cart_shipping").click();
        //togglBillycartFields();
        var config = {
            dateFormat: "DD, dd/mm/yy",
            beforeShowDay: beforeShowDay
        };

        function beforeShowDay (date) {

            if (isValidDeliveryDate(date)) {
                return [true, '', ''];
            }
            return [false, '', ''];
        }

        jQuery( "#delivery_date" ).datepicker(config);
        //jQuery( "#craig" ).datepicker({});
    }

});
