<?php
/*
Template Name: Products Template
*/
?>

<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap clearfix">

						<div id="main" class="bodycol singlecol clearfix" role="main">

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

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

								<?php comments_template(); ?>

							</article>

							<article class="threecol-grid">

								<?php if(get_field('three_col_grid')): ?>
 
								 
									<?php while(has_sub_field('three_col_grid')): ?>

									<div class="fourcol threecol-grid-cell">
										<a href="<?php the_sub_field('page_link'); ?>">

											<?php 
												$attachment_id = get_sub_field('image'); // attachment ID
												$size = 'meatatbillys-feature-img'; // Thumbnail size
												$image_attributes = wp_get_attachment_image_src( $attachment_id, $size ); // returns an array
											?> 
											<img class="threecol-grid-img" src="<?php echo $image_attributes[0]; ?>">
											<h2 class="threecol-grid-heading"><?php the_sub_field('heading'); ?></h2>
										</a>
									</div>
								 								 
									<?php endwhile; ?>
								 
								 
								<?php endif; ?>

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

						<?php //get_sidebar(); ?>

				</div>

			</div>

<?php get_footer(); ?>
