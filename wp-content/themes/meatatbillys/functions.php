<?php
/*
Author: Studio Culture
URL: htp://studio-culture.com.au

This is where you can drop your custom functions or
just edit things like thumbnail sizes, header images,
sidebars, comments, ect.
*/

/************* INCLUDE NEEDED FILES ***************/

/*
1. library/meatatbillys.php
	- head cleanup (remove rsd, uri links, junk css, ect)
	- enqueueing scripts & styles
	- theme support functions
	- custom menu output & fallbacks
	- related post function
	- page-navi function
	- removing <p> from around images
	- customizing the post excerpt
	- custom google+ integration
	- adding custom fields to user profiles
*/
require_once( 'library/meatatbillys.php' ); // if you remove this, meatatbillys will break
/*
2. library/custom-post-type.php
	- an example custom post type
	- example custom taxonomy (like categories)
	- example custom taxonomy (like tags)
*/
//require_once( 'library/custom-post-type.php' ); // you can disable this if you like
/*
3. library/admin.php
	- removing some default WordPress dashboard widgets
	- an example custom dashboard widget
	- adding custom login css
	- changing text in footer of admin
*/
require_once( 'library/admin.php' ); // this comes turned off by default
/*
4. library/translation/translation.php
	- adding support for other languages
*/
// require_once( 'library/translation/translation.php' ); // this comes turned off by default

/************* THUMBNAIL SIZE OPTIONS *************/

// Thumbnail sizes
add_image_size( 'meatatbillys-thumb-600', 600, 150, true );
add_image_size( 'meatatbillys-thumb-300', 300, 100, true );
add_image_size( 'meatatbillys-feature-img', 300, 300, true);
add_image_size( 'meatatbillys-supplier', 300, 200, true);

/*
to add more sizes, simply copy a line from above
and change the dimensions & name. As long as you
upload a "featured image" as large as the biggest
set width or height, all the other sizes will be
auto-cropped.

To call a different size, simply change the text
inside the thumbnail function.

For example, to call the 300 x 300 sized image,
we would use the function:
<?php the_post_thumbnail( 'meatatbillys-thumb-300' ); ?>
for the 600 x 100 image:
<?php the_post_thumbnail( 'meatatbillys-thumb-600' ); ?>

You can change the names and dimensions to whatever
you like. Enjoy!
*/

add_filter( 'image_size_names_choose', 'meatatbillys_custom_image_sizes' );

function meatatbillys_custom_image_sizes( $sizes ) {
    return array_merge( $sizes, array(
        'meatatbillys-thumb-600' => __('600px by 150px'),
        'meatatbillys-thumb-300' => __('300px by 100px'),
    ) );
}

/*
The function above adds the ability to use the dropdown menu to select 
the new images sizes you have just created from within the media manager 
when you add media to your content blocks. If you add more image sizes, 
duplicate one of the lines in the array and name it according to your 
new image size.
*/

/************* ACTIVE SIDEBARS ********************/

// Sidebars & Widgetizes Areas
function meatatbillys_register_sidebars() {
	register_sidebar(array(
		'id' => 'sidebar1',
		'name' => __( 'Sidebar 1', 'meatatbillystheme' ),
		'description' => __( 'The first (primary) sidebar.', 'meatatbillystheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	register_sidebar(array(
		'id' => 'footer1',
		'name' => __( 'Footer 1', 'meatatbillystheme' ),
		'description' => __( 'Footer Widget 1', 'meatatbillystheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	register_sidebar(array(
		'id' => 'footer2',
		'name' => __( 'Footer 2', 'meatatbillystheme' ),
		'description' => __( 'Footer Widget 2', 'meatatbillystheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	register_sidebar(array(
		'id' => 'footer3',
		'name' => __( 'Footer 3', 'meatatbillystheme' ),
		'description' => __( 'Footer Widget 3', 'meatatbillystheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	register_sidebar(array(
		'id' => 'footer4',
		'name' => __( 'Footer 4', 'meatatbillystheme' ),
		'description' => __( 'Footer Widget 4', 'meatatbillystheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	/*
	to add more sidebars or widgetized areas, just copy
	and edit the above sidebar code. In order to call
	your new sidebar just use the following code:

	Just change the name to whatever your new
	sidebar's id is, for example:

	register_sidebar(array(
		'id' => 'sidebar2',
		'name' => __( 'Sidebar 2', 'meatatbillystheme' ),
		'description' => __( 'The second (secondary) sidebar.', 'meatatbillystheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	To call the sidebar in your template, you can just copy
	the sidebar.php file and rename it to your sidebar's name.
	So using the above example, it would be:
	sidebar-sidebar2.php

	*/
} // don't remove this bracket!

/************* COMMENT LAYOUT *********************/

// Comment Layout
function meatatbillys_comments( $comment, $args, $depth ) {
   $GLOBALS['comment'] = $comment; ?>
	<li <?php comment_class(); ?>>
		<article id="comment-<?php comment_ID(); ?>" class="clearfix">
			<header class="comment-author vcard">
				<?php
				/*
					this is the new responsive optimized comment image. It used the new HTML5 data-attribute to display comment gravatars on larger screens only. What this means is that on larger posts, mobile sites don't have a ton of requests for comment images. This makes load time incredibly fast! If you'd like to change it back, just replace it with the regular wordpress gravatar call:
					echo get_avatar($comment,$size='32',$default='<path_to_url>' );
				*/
				?>
				<?php // custom gravatar call ?>
				<?php
					// create variable
					$bgauthemail = get_comment_author_email();
				?>
				<img data-gravatar="http://www.gravatar.com/avatar/<?php echo md5( $bgauthemail ); ?>?s=32" class="load-gravatar avatar avatar-48 photo" height="32" width="32" src="<?php echo get_template_directory_uri(); ?>/library/images/nothing.gif" />
				<?php // end custom gravatar call ?>
				<?php printf(__( '<cite class="fn">%s</cite>', 'meatatbillystheme' ), get_comment_author_link()) ?>
				<time datetime="<?php echo comment_time('Y-m-j'); ?>"><a href="<?php echo htmlspecialchars( get_comment_link( $comment->comment_ID ) ) ?>"><?php comment_time(__( 'F jS, Y', 'meatatbillystheme' )); ?> </a></time>
				<?php edit_comment_link(__( '(Edit)', 'meatatbillystheme' ),'  ','') ?>
			</header>
			<?php if ($comment->comment_approved == '0') : ?>
				<div class="alert alert-info">
					<p><?php _e( 'Your comment is awaiting moderation.', 'meatatbillystheme' ) ?></p>
				</div>
			<?php endif; ?>
			<section class="comment_content clearfix">
				<?php comment_text() ?>
			</section>
			<?php comment_reply_link(array_merge( $args, array('depth' => $depth, 'max_depth' => $args['max_depth']))) ?>
		</article>
	<?php // </li> is added by WordPress automatically ?>
<?php
} // don't remove this bracket!

/************* SEARCH FORM LAYOUT *****************/

// Search Form
function meatatbillys_wpsearch($form) {
	$form = '<form role="search" method="get" id="searchform" action="' . home_url( '/' ) . '" >
	<label class="screen-reader-text" for="s">' . __( 'Search for:', 'meatatbillystheme' ) . '</label>
	<input type="text" value="' . get_search_query() . '" name="s" id="s" placeholder="' . esc_attr__( 'Search the Site...', 'meatatbillystheme' ) . '" />
	<input type="submit" id="searchsubmit" value="' . esc_attr__( 'Search' ) .'" />
	</form>';
	return $form;
} // don't remove this bracket!

/* Remove default WooCommerce style sheet */
add_filter( 'woocommerce_enqueue_styles', '__return_false' );

/** set default settings of attachment media box - basicwp.com */
function attachment_default_settings() {
  update_option('image_default_align', 'left' );
  update_option('image_default_link_type', 'none' );
  update_option('image_default_size', 'large' );
}
add_action('after_setup_theme', 'attachment_default_settings');

/** woocommerce: remove archive add to cart **/
    remove_action( 'woocommerce_after_shop_loop_item', 
               'woocommerce_template_loop_add_to_cart', 10 );

/** Add to cart button in Cat page **/
add_action( 'woocommerce_after_shop_loop_item', 
            'woocommerce_template_single_add_to_cart', 30 );

/** woocommerce: move price on single page**/
    remove_action( 'woocommerce_single_product_summary', 
               'woocommerce_template_single_price', 10 );
    add_action( 'woocommerce_single_product_summary', 
            'woocommerce_template_single_price', 25 );

/** Remove short description **/
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 20);

/** Move product description **/
function woocommerce_template_product_description() {
woocommerce_get_template( 'single-product/tabs/description.php' );
}
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_product_description', 20 );

/*** Remove tabs from product details page */
add_filter( 'woocommerce_product_tabs', 'woo_remove_product_tabs', 98 );
function woo_remove_product_tabs( $tabs ) {

unset( $tabs['description'] ); // Remove the description tab
unset( $tabs['reviews'] ); // Remove the reviews tab
unset( $tabs['additional_information'] ); // Remove the additional information tab

return $tabs;
}

/** Remove WooCommerce breadcrumbs */
remove_action( 'woocommerce_before_main_content','woocommerce_breadcrumb', 20, 0);

/** Remove default sorting */
remove_action( 'woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30 );

/** Remove Showing results functionality site-wide */
function woocommerce_result_count() {
        return;
}
// Ensure cart contents update when products are added to the cart via AJAX (place the following in functions.php)
add_filter('add_to_cart_fragments', 'woocommerce_header_add_to_cart_fragment');
 
function woocommerce_header_add_to_cart_fragment( $fragments ) {
	global $woocommerce;
	
	ob_start();
	
	?>
		<a class="cart-contents" href="<?php echo $woocommerce->cart->get_cart_url(); ?>" title="<?php _e('View your shopping cart', 'woothemes'); ?>"><img id="cart-icon" src="<?php echo get_template_directory_uri(); ?>/library/images/cart-icon.png"><span id="cart-text">CART TOTAL: </span><?php echo $woocommerce->cart->get_cart_total(); ?></a>
	<?php
	
	$fragments['a.cart-contents'] = ob_get_clean();
	
	return $fragments;
	
}
add_action( 'widgets_init', 'override_woocommerce_widgets', 15 );
 
function override_woocommerce_widgets() {
  // Ensure our parent class exists to avoid fatal error (thanks Wilgert!)
 
  if ( class_exists( 'WC_Widget_Product_Categories' ) ) {
    unregister_widget( 'WC_Widget_Product_Categories' );
 
    include_once( 'widgets/widget-product-categories.php' );
    include_once( 'woocommerce/custom-class-product-cat-list-walker.php' );
 
    register_widget( 'Custom_WC_Widget_Product_Categories' );
  }
}
/*
* goes in theme functions.php or a custom plugin. Replace the image filename/path with your own :)
*
**/
add_action( 'init', 'custom_fix_thumbnail' );
 
function custom_fix_thumbnail() {
  add_filter('woocommerce_placeholder_img_src', 'custom_woocommerce_placeholder_img_src');
   
	function custom_woocommerce_placeholder_img_src( $src ) {
	$upload_dir = wp_upload_dir();
	$uploads = untrailingslashit( $upload_dir['baseurl'] );
	$src = $uploads . '/2014/06/placeholder.png';
	 
	return $src;
	}
}
/**
 * Code goes in functions.php or a custom plugin. Replace XX with the country code your changing.
 */
add_filter( 'woocommerce_states', 'custom_woocommerce_states' );

function custom_woocommerce_states( $states ) {

  $states['AU'] = array(
    'QLD' => 'Queensland'
  );

  return $states;
}
/** 
 * Manipulate default state and countries
 * 
 * As always, code goes in your theme functions.php file
 */
add_filter( 'default_checkout_country', 'change_default_checkout_country' );
add_filter( 'default_checkout_state', 'change_default_checkout_state' );

function change_default_checkout_country() {
  return 'AU'; // country code
}

function change_default_checkout_state() {
  return 'QLD'; // state code
}
?>