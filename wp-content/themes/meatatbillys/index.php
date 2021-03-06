<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap clearfix">

						<div id="main" class="bodycol last clearfix" role="main">

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							<article id="post-<?php the_ID(); ?>" <?php post_class( 'clearfix' ); ?> role="article">

								<header class="article-header">

									<h1 class="h2"><a href="<?php the_permalink() ?>" rel="bookmark" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h1>
									<p class="byline vcard"><?php
										printf( __( '<time class="updated" datetime="%1$s" pubdate>%2$s</time>', 'meatatbillystheme' ), get_the_time('Y-m-j'), get_the_time(get_option('date_format')), meatatbillys_get_the_author_posts_link(), get_the_category_list(', '));
									?></p>

								</header>

								<section class="entry-content clearfix">
									<?php if ( has_post_thumbnail() ) { the_post_thumbnail('meatatbillys-feature-img'); } ?>
									<?php the_excerpt(); ?>
								</section>

								<footer class="article-footer">
									<p class="tags"><?php the_tags( '<span class="tags-title">' . __( 'Tags:', 'meatatbillystheme' ) . '</span> ', ', ', '' ); ?></p>

								</footer>

								<?php // comments_template(); // uncomment if you want to use them ?>

							</article>

							<?php endwhile; ?>

									<?php if ( function_exists( 'meatatbillys_page_navi' ) ) { ?>
											<?php meatatbillys_page_navi(); ?>
									<?php } else { ?>
											<nav class="wp-prev-next">
													<ul class="clearfix">
														<li class="prev-link"><?php next_posts_link( __( '&laquo; Older Entries', 'meatatbillystheme' )) ?></li>
														<li class="next-link"><?php previous_posts_link( __( 'Newer Entries &raquo;', 'meatatbillystheme' )) ?></li>
													</ul>
											</nav>
									<?php } ?>

							<?php else : ?>

									<article id="post-not-found" class="hentry clearfix">
											<header class="article-header">
												<h1><?php _e( 'Oops, Post Not Found!', 'meatatbillystheme' ); ?></h1>
										</header>
											<section class="entry-content">
												<p><?php _e( 'Uh Oh. Something is missing. Try double checking things.', 'meatatbillystheme' ); ?></p>
										</section>
										<footer class="article-footer">
												<p><?php _e( 'This is the error message in the index.php template.', 'meatatbillystheme' ); ?></p>
										</footer>
									</article>

							<?php endif; ?>

						</div>

						<?php get_sidebar(); ?>

				</div>

			</div>

<?php get_footer(); ?>
