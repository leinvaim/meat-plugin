<!doctype html>

<!--[if lt IE 7]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--> <html <?php language_attributes(); ?> class="no-js"><!--<![endif]-->

	<head>
		<meta charset="utf-8">

		<?php // Google Chrome Frame for IE ?>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title><?php wp_title(''); ?></title>

		<?php // mobile meta (hooray!) ?>
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' /> 

		<?php // icons & favicons (for more: http://www.jonathantneal.com/blog/understand-the-favicon/) ?>
		<link rel="apple-touch-icon" href="<?php echo get_template_directory_uri(); ?>/library/images/apple-icon-touch.png">
		<link rel="icon" href="<?php echo get_template_directory_uri(); ?>/favicon.png">
		<!--[if IE]>
			<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.ico">
		<![endif]-->
		<?php // or, set /favicon.ico for IE10 win ?>
		<meta name="msapplication-TileColor" content="#f01d4f">
		<meta name="msapplication-TileImage" content="<?php echo get_template_directory_uri(); ?>/library/images/win8-tile-icon.png">

		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">

		<?php // wordpress head functions ?>

		<!-- <link href='https://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Amatic+SC:400,700' rel='stylesheet' type='text/css'>
 -->
		<?php wp_head(); ?>
		<?php // end of wordpress head ?>

		<?php // drop Google Analytics Here ?>
		<?php // end analytics ?>

	</head>

	<body <?php body_class(); ?>>

		<div id="container">

			<header class="header" role="banner">
				<div id="top-sub-nav-container">
					<div class="wrap clearfix">
						<?php meatatbillys_sub_nav_links(); ?>
					</div>
				</div>

				<div id="inner-header" class="wrap clearfix">

					<?php // to use a image just replace the bloginfo('name') with your img src and remove the surrounding <p> ?>
					<a id="logo"  href="<?php echo home_url(); ?>" rel="nofollow"><img src="<?php echo get_template_directory_uri(); ?>/library/images/meat-at-billys-logo.svg"></a>

					<div id="header-right">
						<div id="social-container">
							<ul id="header-social">
							       <li id="social-facebook"><a target="_blank" href="https://www.facebook.com/MeatAtBillys">Facebook</a></li>
							       <li id="social-twitter"><a target="_blank" href="https://twitter.com/meatatbillys">Twitter</a></li>
							       <li id="social-instagram"><a target="_blank" href="http://instagram.com/meatatbillys">Instagram</a></li>
							       <li id="social-googleplus"><a target="_blank" href="https://plus.google.com/u/0/b/116697419349783371654/116697419349783371654/posts">Google Plus</a></li>
							       <li id="social-email"><a target="_blank" href="mailto:info@meatatbillys.com.au">Email</a></li>
							</ul>
						</div>
						<div>
							<span id="header-address">241 Waterworks Road, <br>Ashgrove, QLD, 4060</span>
							<span id="header-number">(07) 3366 2912</span>
						</div>
						<div>
							<!-- searchform -->
							<form action="<?php echo home_url( '/' ); ?>" id="searchform" method="get">
								<div>
									<input type="text" value="<?php the_search_query(); ?>" name="s" id="s" placeholder="<?php _e('Search...', 'woocommerce'); ?>" />

									<!--<input type="submit" id="searchsubmit" value="<?php _e('Search', 'woocommerce'); ?>" />-->

									<input type="hidden" name="post_type" value="product" />
								</div>
							</form>
							<!-- end searchform -->
						</div>
						<div id="home-shop-button">
							<a class="button" href="/online-butcher/">SHOP ONLINE NOW</a>
						</div>
					</div>
					<nav id="main-nav" role="navigation">
						<?php meatatbillys_main_nav(); ?>
						<div id="menu-cart">
							<?php global $woocommerce; ?>
							<a class="cart-contents" href="<?php echo $woocommerce->cart->get_cart_url(); ?>" title="<?php _e('View your shopping cart', 'woothemes'); ?>"><img id="cart-icon" src="<?php echo get_template_directory_uri(); ?>/library/images/cart-icon.png"> <span id="cart-text">CART TOTAL: </span><?php echo $woocommerce->cart->get_cart_total(); ?></a>
						</div>
					</nav>

					<nav id="main-nav-mobile" role="navigation">
						<?php //meatatbillys_main_nav(); ?>
						<div id="menu-cart">
							<?php global $woocommerce; ?>
							<a class="cart-contents" href="<?php echo $woocommerce->cart->get_cart_url(); ?>" title="<?php _e('View your shopping cart', 'woothemes'); ?>"><img id="cart-icon" src="<?php echo get_template_directory_uri(); ?>/library/images/cart-icon.png">CART TOTAL: <?php echo $woocommerce->cart->get_cart_total(); ?></a>
						</div>
					</nav>

					<!-- IF stagement for homepage or not -->
					<?php if ( is_front_page() ) { ?> 

						<?php echo get_new_royalslider(1); ?>

					<?php } else {?>

								
					<?}?>

					
				</div>

			</header>
