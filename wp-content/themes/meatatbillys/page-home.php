<?php
/*
Template Name: Home Page
*/
?>

<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap clearfix">

						<div id="main" class="wrap first clearfix" role="main">

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							<h1 class="page-title heading-center heading-double">Billy's Pick of the Week</h1>

							<section class="entry-content clearfix home-featured">
									<?php echo do_shortcode("[featured_products per_page='8' columns='4']"); ?>
							</section>

							<div class="sixcol first home-intro">
								<article id="post-<?php the_ID(); ?>" <?php post_class( 'clearfix' ); ?> role="article" itemscope itemtype="http://schema.org/BlogPosting">

								<header class="article-header">

									<h1 class="page-title"><?php the_title(); ?></h1>

								</header>
								
										<section class="entry-content clearfix" itemprop="articleBody">
											<?php the_content(); ?>
										</section>

										<footer class="article-footer">
											<p class="clearfix"><?php the_tags( '<span class="tags">' . __( 'Tags:', 'meatatbillystheme' ) . '</span> ', ', ', '' ); ?></p>

										</footer>

									</article>

									<?php endwhile; else : ?>

											<article id="post-not-found" class="hentry clearfix">
													<header class="article-header">
														<h1><?php _e( 'Oops, Post Not Found!', 'meatatbillystheme' ); ?></h1>
												</header>
													<section class="entry-content">
														<p><?php _e( 'Uh Oh. Something is missing. Try double checking things.', 'meatatbillystheme' ); ?></p>
												</section>
												<footer class="article-footer">
														<p><?php _e( 'This is the error message in the page-custom.php template.', 'meatatbillystheme' ); ?></p>
												</footer>
											</article>

									<?php endif; ?>
								</div>
								<div class="sixcol last home-signup">
									<?php get_sidebar('subscribe'); ?>
								</div>

						</div>

				</div>

			</div>

<?php get_footer(); ?>
