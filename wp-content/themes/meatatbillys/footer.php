			<footer class="footer" role="contentinfo">
				<!-- IF stagement for homepage or not -->
				<?php if ( is_front_page() ) { ?> 


				<?php } else {?>
					<div class="upper-footer">
						<div class="wrap clearfix">
							<div class="quick-links-container clearfix">
								<h2>QUICK LINKS</h2>
								<div class="twocol first">
									<a href="<?php echo home_url(); ?>/product-category/beef-cheeks-grass-fed-short-ribs-and-more/">
										<img src="<?php bloginfo('template_directory'); ?>/library/images/quick-links-beef.png">
										<h3>BEEF</h3>
									</a>
								</div>
								<div class="twocol">
									<a href="<?php echo home_url(); ?>/product-category/pork-chops-cutlets-and-more/">
										<img src="<?php bloginfo('template_directory'); ?>/library/images/quick-links-pork.png">
										<h3>PORK</h3>
									</a>
								</div>
								<div class="twocol">
									<a href="<?php echo home_url(); ?>/product-category/chicken-schnitzel-enchiladas-and-more/">
										<img src="<?php bloginfo('template_directory'); ?>/library/images/quick-links-poultry.png">
										<h3>POULTRY</h3>
									</a>
								</div>
								<div class="twocol">
									<a href="<?php echo home_url(); ?>/product-category/lamb-backstrap-shanks-and-more/">
										<img src="<?php bloginfo('template_directory'); ?>/library/images/quick-links-lamb.png">
										<h3>LAMB</h3>
									</a>
								</div>
								<div class="twocol">
									<a href="<?php echo home_url(); ?>/product-category/delicatessen/">
										<img src="<?php bloginfo('template_directory'); ?>/library/images/quick-links-deli.png">
										<h3>DELI</h3>
									</a>
								</div>
								<div class="twocol last">
									<a href="<?php echo home_url(); ?>/product-category/sausages-bbq-gluten-free-and-more/">
										<img src="<?php bloginfo('template_directory'); ?>/library/images/quick-links-sausages.png">
										<h3>SAUSAGES</h3>
									</a>
								</div>
							</div>
							<div class="sixcol home-intro first clearfix">
								<h2>RECIPES &amp; NEWS</h2>
								<?php $recent = new WP_Query("showposts=1"); while($recent->have_posts()) : $recent->the_post();?>
											<a href="<?php the_permalink() ?>" rel="bookmark">
												<h3 class="page-title"><?php the_title(); ?></h3>
											</a>
												<?php the_excerpt('Read more'); ?>
										<?php endwhile; ?>
										
							</div>
							<div class="sixcol home-subscribe last clearfix">
								<?php get_sidebar('subscribe'); ?>
							</div>
						</div>
					</div>
							
				<?}?>

				<div class="lower-footer">
				<div id="inner-footer" class="wrap clearfix">

					<div class=" threecol first">
						<?php if ( is_active_sidebar( 'footer1' ) ) : ?>

							<?php dynamic_sidebar( 'footer1' ); ?>

						<?php else : ?>

							<?php // This content shows up if there are no widgets defined in the backend. ?>

							<div class="alert alert-help">
								<p><?php _e( 'Please activate some Widgets.', 'meatatbillystheme' );  ?></p>
							</div>

						<?php endif; ?>
					</div>
					<div class="threecol">
						<?php if ( is_active_sidebar( 'footer2' ) ) : ?>

							<?php dynamic_sidebar( 'footer2' ); ?>

						<?php else : ?>

							<?php // This content shows up if there are no widgets defined in the backend. ?>

							<div class="alert alert-help">
								<p><?php _e( 'Please activate some Widgets.', 'meatatbillystheme' );  ?></p>
							</div>

						<?php endif; ?>
					</div>
					<div class="threecol">
						<?php if ( is_active_sidebar( 'footer3' ) ) : ?>

							<?php dynamic_sidebar( 'footer3' ); ?>

						<?php else : ?>

							<?php // This content shows up if there are no widgets defined in the backend. ?>

							<div class="alert alert-help">
								<p><?php _e( 'Please activate some Widgets.', 'meatatbillystheme' );  ?></p>
							</div>

						<?php endif; ?>
					</div>
					<div class="threecol last">
						<?php if ( is_active_sidebar( 'footer4' ) ) : ?>

							<?php dynamic_sidebar( 'footer4' ); ?>

						<?php else : ?>

							<?php // This content shows up if there are no widgets defined in the backend. ?>

							<div class="alert alert-help">
								<p><?php _e( 'Please activate some Widgets.', 'meatatbillystheme' );  ?></p>
							</div>

						<?php endif; ?>
					</div>

					<nav role="navigation">
							<?php meatatbillys_footer_links(); ?>
					</nav>

				</div>

				</div>
			</footer>
			<div>
					<p class="source-org copyright">&copy; <?php echo date('Y'); ?> <?php bloginfo( 'name' ); ?> - Website by <a rel="nofollow" id="studioculture" target="_blank" href="http://studio-culture.com.au">Studio Culture</a></p>
				</div>

		</div>

		<?php wp_footer(); ?>

	</body>

</html>
