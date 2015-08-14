<?php
/**
 * Loop Price
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

global $product;
?>

<?php if ( $price_html = $product->get_price_html() ) : ?>
	<span class="price arch-price"><?php echo $price_html; ?>

		  <?php global $product;

			if ( $product->is_type( 'simple' ) ) {

				echo "each";
			}

			 ?>
	</span>
	
<?php endif; ?>