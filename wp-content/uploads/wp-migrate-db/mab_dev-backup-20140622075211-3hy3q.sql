# WordPress MySQL database migration
#
# Generated: Sunday 22. June 2014 07:52 UTC
# Hostname: localhost
# Database: `mab_dev`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `mab_commentmeta`
#

DROP TABLE IF EXISTS `mab_commentmeta`;


#
# Table structure of table `mab_commentmeta`
#

CREATE TABLE `mab_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_commentmeta`
#
INSERT INTO `mab_commentmeta` ( `meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'akismet_error', '1370606225'),
(2, 2, 'akismet_history', 'a:4:{s:4:"time";d:1370606225.6765859127044677734375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(3, 2, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:15;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:49:"Simple and effective design. One of my favorites.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:56:"http://demo2.woothemes.com/woocommerce/product/woo-logo/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:56:"http://demo2.woothemes.com/woocommerce/product/woo-logo/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:49:"Simple and effective design. One of my favorites.";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:30:"/woocommerce/product/woo-logo/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"15";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"bbd941e9bf";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"273";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:56:"http://demo2.woothemes.com/woocommerce/product/woo-logo/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"57596";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606225";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:15:25";}'),
(4, 2, 'rating', '4'),
(5, 2, 'akismet_history', 'a:4:{s:4:"time";d:1370607940.89634990692138671875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(6, 3, 'akismet_error', '1370606029'),
(7, 3, 'akismet_history', 'a:4:{s:4:"time";d:1370606029.1820490360260009765625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(8, 3, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:19;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:56:"Wonderful quality, and an awesome design. WooThemes ftw!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:63:"http://demo2.woothemes.com/woocommerce/product/premium-quality/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:63:"http://demo2.woothemes.com/woocommerce/product/premium-quality/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:56:"Wonderful quality, and an awesome design. WooThemes ftw!";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:37:"/woocommerce/product/premium-quality/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"19";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"0f92b67011";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"291";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:63:"http://demo2.woothemes.com/woocommerce/product/premium-quality/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"54854";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606029";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 10:41:52";}'),
(9, 3, 'rating', '4'),
(10, 3, 'akismet_history', 'a:4:{s:4:"time";d:1370607930.6214559078216552734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(11, 4, 'akismet_error', '1370606265'),
(12, 4, 'akismet_history', 'a:4:{s:4:"time";d:1370606265.92131900787353515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(13, 4, 'akismet_as_submitted', ''),
(14, 4, 'rating', '5'),
(15, 4, 'akismet_history', 'a:4:{s:4:"time";d:1370607942.4681990146636962890625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(16, 5, 'akismet_error', '1370605393'),
(17, 5, 'akismet_history', 'a:4:{s:4:"time";d:1370605393.68045711517333984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(18, 5, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:22;s:14:"comment_author";s:12:"James Koster";s:20:"comment_author_email";s:23:"james@jameskoster.co.uk";s:18:"comment_author_url";N;s:15:"comment_content";s:53:"Nice T-shirt, I got one in black. Goes with anything!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"86.146.141.82";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"James Koster";s:10:"POST_email";s:23:"james@jameskoster.co.uk";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:53:"Nice T-shirt, I got one in black. Goes with anything!";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:36:"/woocommerce/product/ship-your-idea/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"22";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"19b2b0163a";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"292";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"86.146.141.82";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"47178";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370605393";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:14:41";}'),
(19, 5, 'rating', '4'),
(20, 5, 'akismet_history', 'a:4:{s:4:"time";d:1370605641.8064620494842529296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(21, 6, 'akismet_error', '1370606115'),
(22, 6, 'akismet_history', 'a:4:{s:4:"time";d:1370606115.2617321014404296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(23, 6, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:22;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:47:"Very comfortable shirt, and I love the graphic!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:47:"Very comfortable shirt, and I love the graphic!";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:36:"/woocommerce/product/ship-your-idea/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"22";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"19b2b0163a";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"281";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"55879";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606115";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:14:41";}'),
(24, 6, 'rating', '4'),
(25, 6, 'akismet_history', 'a:4:{s:4:"time";d:1370607935.6320250034332275390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(26, 7, 'akismet_error', '1370610134'),
(27, 7, 'akismet_history', 'a:4:{s:4:"time";d:1370610134.2017900943756103515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(28, 7, 'akismet_as_submitted', 'a:64:{s:15:"comment_post_ID";i:22;s:14:"comment_author";s:6:"Stuart";s:20:"comment_author_email";s:20:"stuart@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:54:"Great T-shirt quality, Great Design and Great Service.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"82.32.109.140";s:10:"user_agent";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:8:"referrer";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:6:"Stuart";s:10:"POST_email";s:20:"stuart@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:54:"Great T-shirt quality, Great Design and Great Service.";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:36:"/woocommerce/product/ship-your-idea/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"22";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"0ad3ed6bac";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:15:"HTTP_CONNECTION";s:5:"close";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.5";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:12:"HTTP_REFERER";s:62:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea/";s:11:"HTTP_COOKIE";s:0:"";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:14:"CONTENT_LENGTH";s:3:"282";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"82.32.109.140";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"40932";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370610134";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:14:41";}'),
(29, 7, 'rating', '5'),
(30, 7, 'akismet_history', 'a:4:{s:4:"time";d:1370611526.547483921051025390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(31, 8, 'akismet_error', '1370606072'),
(32, 8, 'akismet_history', 'a:4:{s:4:"time";d:1370606072.7117550373077392578125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(33, 8, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:31;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:76:"The ninja silhouette is one of my favorite designs. This is a great product.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:64:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:64:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:76:"The ninja silhouette is one of my favorite designs. This is a great product.";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:38:"/woocommerce/product/ninja-silhouette/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"31";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"a0acab20c6";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"308";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:64:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"55289";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606072";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:15:05";}'),
(34, 8, 'rating', '5'),
(35, 8, 'akismet_history', 'a:4:{s:4:"time";d:1370607931.63070201873779296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(36, 9, 'akismet_error', '1370610085'),
(37, 9, 'akismet_history', 'a:4:{s:4:"time";d:1370610085.324596881866455078125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(38, 9, 'akismet_as_submitted', 'a:64:{s:15:"comment_post_ID";i:37;s:14:"comment_author";s:6:"Stuart";s:20:"comment_author_email";s:20:"stuart@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:65:"This will go great with my Hoodie that I ordered a few weeks ago.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"82.32.109.140";s:10:"user_agent";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/happy-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/happy-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:6:"Stuart";s:10:"POST_email";s:20:"stuart@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:65:"This will go great with my Hoodie that I ordered a few weeks ago.";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/happy-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"37";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"7da2a7b2b2";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:15:"HTTP_CONNECTION";s:5:"close";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.5";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/happy-ninja/";s:11:"HTTP_COOKIE";s:0:"";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:14:"CONTENT_LENGTH";s:3:"288";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"82.32.109.140";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"40272";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370610085";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:14:15";}'),
(39, 9, 'rating', '5'),
(40, 9, 'akismet_history', 'a:4:{s:4:"time";d:1370611525.10484409332275390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(41, 10, 'akismet_error', '1370620193'),
(42, 10, 'akismet_history', 'a:4:{s:4:"time";d:1370620193.9864521026611328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(43, 10, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:37;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:56:"Love this shirt! The ninja near and dear to my heart. <3";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/happy-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/happy-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:56:"Love this shirt! The ninja near and dear to my heart. <3";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/happy-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"37";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"7da2a7b2b2";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"281";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/happy-ninja/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"24107";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620193";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:14:15";}'),
(44, 10, 'rating', '5'),
(45, 10, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9563140869140625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(46, 11, 'akismet_error', '1370610209'),
(47, 11, 'akismet_history', 'a:4:{s:4:"time";d:1370610209.978949069976806640625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(48, 11, 'akismet_as_submitted', 'a:64:{s:15:"comment_post_ID";i:40;s:14:"comment_author";s:6:"Stuart";s:20:"comment_author_email";s:20:"stuart@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:108:"Another great quality product that anyone who see\'s me wearing has asked where to purchase one of their own.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"82.32.109.140";s:10:"user_agent";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:8:"referrer";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:6:"Stuart";s:10:"POST_email";s:20:"stuart@woothemes.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:108:"Another great quality product that anyone who see\'s me wearing has asked where to purchase one of their own.";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:38:"/woocommerce/product/ship-your-idea-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"40";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"3493e6658d";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:15:"HTTP_CONNECTION";s:5:"close";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.5";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:12:"HTTP_REFERER";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:11:"HTTP_COOKIE";s:0:"";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:14:"CONTENT_LENGTH";s:3:"338";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"82.32.109.140";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"41743";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370610209";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:57";}'),
(49, 11, 'rating', '4'),
(50, 11, 'akismet_history', 'a:4:{s:4:"time";d:1370611527.7993829250335693359375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(51, 12, 'akismet_error', '1370611492'),
(52, 12, 'akismet_history', 'a:4:{s:4:"time";d:1370611492.6543419361114501953125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(53, 12, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:40;s:14:"comment_author";s:4:"Ryan";s:20:"comment_author_email";s:18:"ryan@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:168:"This hoodie gets me lots of looks while out in public, I got the blue one and it\'s awesome. Not sure if people are looking at my hoodie only, or also at my rocking bod.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:14:"99.153.225.252";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:4:"Ryan";s:10:"POST_email";s:18:"ryan@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:168:"This hoodie gets me lots of looks while out in public, I got the blue one and it\'s awesome. Not sure if people are looking at my hoodie only, or also at my rocking bod.";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:38:"/woocommerce/product/ship-your-idea-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"40";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"3493e6658d";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"398";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:14:"99.153.225.252";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"54935";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370611492";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:57";}'),
(54, 12, 'rating', '5'),
(55, 12, 'akismet_history', 'a:4:{s:4:"time";d:1370611529.7720489501953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(56, 13, 'akismet_error', '1370620411'),
(57, 13, 'akismet_history', 'a:4:{s:4:"time";d:1370620411.1445829868316650390625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(58, 13, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:40;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:8:"Ship it!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"3";s:12:"POST_comment";s:8:"Ship it!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:38:"/woocommerce/product/ship-your-idea-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"40";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"3493e6658d";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"236";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:64:"http://demo2.woothemes.com/woocommerce/product/ship-your-idea-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"27030";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620411";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:57";}'),
(59, 13, 'rating', '3'),
(60, 13, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9381520748138427734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(61, 14, 'akismet_error', '1370606279'),
(62, 14, 'akismet_history', 'a:4:{s:4:"time";d:1370606279.836287975311279296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(63, 14, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:47;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:71:"This hoodie is great for those chilly winter days. I love the WooNinja!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:71:"This hoodie is great for those chilly winter days. I love the WooNinja!";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/woo-ninja-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"47";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"38d66a284b";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"300";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"58209";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606279";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:45";}'),
(64, 14, 'rating', '5'),
(65, 14, 'akismet_history', 'a:4:{s:4:"time";d:1370607944.7811119556427001953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(66, 15, 'akismet_error', '1370620393'),
(67, 15, 'akismet_history', 'a:4:{s:4:"time";d:1370620393.6741259098052978515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(68, 15, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:47;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:40:"Perfect for the lady Ninja in your life!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:40:"Perfect for the lady Ninja in your life!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/woo-ninja-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"47";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"ade950552e";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"263";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"26829";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620393";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:45";}'),
(69, 15, 'rating', '4'),
(70, 15, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.94254302978515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(71, 16, 'akismet_error', '1370605612'),
(72, 16, 'akismet_history', 'a:4:{s:4:"time";d:1370605612.873900890350341796875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}') ;
INSERT INTO `mab_commentmeta` ( `meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(73, 16, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:50;s:14:"comment_author";s:12:"James Koster";s:20:"comment_author_email";s:23:"james@jameskoster.co.uk";s:18:"comment_author_url";N;s:15:"comment_content";s:103:"Perfect when you\'re waiting for the next batch of Woo Goodies to be released. Patient Ninja is Patient.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"86.146.141.82";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:61:"http://demo2.woothemes.com/woocommerce/product/patient-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:61:"http://demo2.woothemes.com/woocommerce/product/patient-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"James Koster";s:10:"POST_email";s:23:"james@jameskoster.co.uk";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:103:"Perfect when you\'re waiting for the next batch of Woo Goodies to be released. Patient Ninja is Patient.";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:35:"/woocommerce/product/patient-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"50";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"ad4e7e1f00";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"339";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:61:"http://demo2.woothemes.com/woocommerce/product/patient-ninja/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"86.146.141.82";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"49636";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370605612";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:17:10";}'),
(74, 16, 'rating', '4'),
(75, 16, 'akismet_history', 'a:4:{s:4:"time";d:1370605643.71494293212890625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(76, 17, 'akismet_error', '1370605993'),
(77, 17, 'akismet_history', 'a:4:{s:4:"time";d:1370605993.45998096466064453125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(78, 17, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:50;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:46:"The most comfortable hoodie I have ever owned!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:61:"http://demo2.woothemes.com/woocommerce/product/patient-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:61:"http://demo2.woothemes.com/woocommerce/product/patient-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:46:"The most comfortable hoodie I have ever owned!";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:35:"/woocommerce/product/patient-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"50";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"ad4e7e1f00";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"277";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:61:"http://demo2.woothemes.com/woocommerce/product/patient-ninja/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"54451";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370605993";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:17:10";}'),
(79, 17, 'rating', '5'),
(80, 17, 'akismet_history', 'a:4:{s:4:"time";d:1370607929.392714977264404296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(81, 18, 'akismet_error', '1370606643'),
(82, 18, 'akismet_history', 'a:4:{s:4:"time";d:1370606643.435740947723388671875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(83, 18, 'akismet_as_submitted', ''),
(84, 18, 'rating', '5'),
(85, 18, 'akismet_history', 'a:4:{s:4:"time";d:1370607947.308474063873291015625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(86, 19, 'akismet_error', '1370606091'),
(87, 19, 'akismet_history', 'a:4:{s:4:"time";d:1370606091.7579820156097412109375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(88, 19, 'akismet_as_submitted', 'a:64:{s:15:"comment_post_ID";i:53;s:14:"comment_author";s:6:"Andrew";s:20:"comment_author_email";s:25:"andrew@chromeorange.co.uk";s:18:"comment_author_url";N;s:15:"comment_content";s:149:"I bought this thinking it was a nice green colour, apparently it GREY! I\'m colour blind so I don\'t care but my girlfriend says grey makes me look fat";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"86.19.152.140";s:10:"user_agent";s:81:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0";s:8:"referrer";s:61:"http://demo2.woothemes.com/woocommerce/product/happy-ninja-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:61:"http://demo2.woothemes.com/woocommerce/product/happy-ninja-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:6:"Andrew";s:10:"POST_email";s:25:"andrew@chromeorange.co.uk";s:11:"POST_rating";s:1:"1";s:12:"POST_comment";s:149:"I bought this thinking it was a nice green colour, apparently it GREY! I\'m colour blind so I don\'t care but my girlfriend says grey makes me look fat";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:35:"/woocommerce/product/happy-ninja-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"53";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"d96b507062";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:81:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0";s:15:"HTTP_CONNECTION";s:5:"close";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.5";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:12:"HTTP_REFERER";s:61:"http://demo2.woothemes.com/woocommerce/product/happy-ninja-2/";s:11:"HTTP_COOKIE";s:0:"";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:14:"CONTENT_LENGTH";s:3:"387";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"86.19.152.140";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"55431";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606091";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:17:38";}'),
(89, 19, 'rating', '1'),
(90, 19, 'akismet_history', 'a:4:{s:4:"time";d:1370607932.6080811023712158203125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(91, 20, 'akismet_error', '1370620222'),
(92, 20, 'akismet_history', 'a:4:{s:4:"time";d:1370620222.19242095947265625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(93, 20, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:53;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:122:"I love grey hoodies! This is perfect with my grey Ninja shirt, when I get cold I throw this on and I can still be a Ninja.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:61:"http://demo2.woothemes.com/woocommerce/product/happy-ninja-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:61:"http://demo2.woothemes.com/woocommerce/product/happy-ninja-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:123:"I love grey hoodies! This is perfect with my grey Ninja shirt, when I get cold I throw this on and I can still be a Ninja. ";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:35:"/woocommerce/product/happy-ninja-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"53";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"7c862b3966";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"350";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:61:"http://demo2.woothemes.com/woocommerce/product/happy-ninja-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"24514";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620222";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:17:38";}'),
(94, 20, 'rating', '5'),
(95, 20, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.951541900634765625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(96, 21, 'akismet_error', '1370607293'),
(97, 21, 'akismet_history', 'a:4:{s:4:"time";d:1370607293.9348719120025634765625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:7:"student";}'),
(98, 21, 'akismet_as_submitted', 'a:65:{s:15:"comment_post_ID";i:56;s:14:"comment_author";s:7:"student";s:20:"comment_author_email";s:21:"student@woothemes.com";s:18:"comment_author_url";s:0:"";s:15:"comment_content";s:27:"Perfect Hoodie for a Ninja!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:600;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36";s:8:"referrer";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:9:"user_role";s:0:"";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:27:"Perfect Hoodie for a Ninja!";s:7:"POST__n";s:10:"b7bb36a5b7";s:21:"POST__wp_http_referer";s:40:"/woocommerce/product/ninja-silhouette-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"56";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"83a5efa213";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"216";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:4:"4903";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370607293";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:23";}'),
(99, 21, 'rating', '5'),
(100, 21, 'akismet_history', 'a:4:{s:4:"time";d:1370607950.2842080593109130859375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}') ;
INSERT INTO `mab_commentmeta` ( `meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(101, 22, 'akismet_error', '1370607656'),
(102, 22, 'akismet_history', 'a:4:{s:4:"time";d:1370607656.262073040008544921875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(103, 22, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:56;s:14:"comment_author";s:11:"Coen Jacobs";s:20:"comment_author_email";s:18:"coen@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:56:"I have lots of hoodies, but none is as cool as this one!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:12:"84.39.28.254";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:11:"Coen Jacobs";s:10:"POST_email";s:18:"coen@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:56:"I have lots of hoodies, but none is as cool as this one!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:40:"/woocommerce/product/ninja-silhouette-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"56";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"96525c59f8";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"293";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:23:"en-US,en;q=0.8,nl;q=0.6";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:12:"84.39.28.254";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:4:"9614";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370607656";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:23";}'),
(104, 22, 'rating', '5'),
(105, 22, 'akismet_history', 'a:4:{s:4:"time";d:1370607953.4172599315643310546875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(106, 23, 'akismet_error', '1370608902'),
(107, 23, 'akismet_history', 'a:4:{s:4:"time";d:1370608902.768413066864013671875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(108, 23, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:56;s:14:"comment_author";s:3:"Dan";s:20:"comment_author_email";s:17:"dan@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:97:"I love hoodies, and ninjas, so what could be better than a ninja hoodie? Not much, if you ask me!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"188.221.1.167";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:3:"Dan";s:10:"POST_email";s:17:"dan@woothemes.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:97:"I love hoodies, and ninjas, so what could be better than a ninja hoodie? Not much, if you ask me!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:40:"/woocommerce/product/ninja-silhouette-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"56";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"96525c59f8";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"331";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"188.221.1.167";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"24701";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370608902";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:23";}'),
(109, 23, 'rating', '4'),
(110, 23, 'akismet_history', 'a:4:{s:4:"time";d:1370609037.499927043914794921875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(111, 24, 'akismet_error', '1370611600'),
(112, 24, 'akismet_history', 'a:4:{s:4:"time";d:1370611600.5786969661712646484375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(113, 24, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:56;s:14:"comment_author";s:4:"Ryan";s:20:"comment_author_email";s:18:"ryan@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:123:"This is the most bombastic hoodie in this shop, it\'s soft and has the sly WooThemes ninja on it. Why wouldn\'t you buy this?";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:14:"99.153.225.252";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:4:"Ryan";s:10:"POST_email";s:18:"ryan@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:123:"This is the most bombastic hoodie in this shop, it\'s soft and has the sly WooThemes ninja on it. Why wouldn\'t you buy this?";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:40:"/woocommerce/product/ninja-silhouette-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"56";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"96525c59f8";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"357";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:14:"99.153.225.252";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"56439";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370611600";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:23";}'),
(114, 24, 'rating', '5'),
(115, 24, 'akismet_history', 'a:4:{s:4:"time";d:1370612306.3991410732269287109375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(116, 25, 'akismet_error', '1370620436'),
(117, 25, 'akismet_history', 'a:4:{s:4:"time";d:1370620436.97305393218994140625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(118, 25, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:56;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:67:"This only gets 1 star because I don\'t have this yet. I want it now!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"1";s:12:"POST_comment";s:68:"This only gets 1 star because I don\'t have this yet. I want it now! ";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:40:"/woocommerce/product/ninja-silhouette-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"56";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"96525c59f8";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"300";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"27338";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620436";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:23";}'),
(119, 25, 'rating', '1'),
(120, 25, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.932437896728515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(121, 26, 'akismet_error', '1370684262'),
(122, 26, 'akismet_history', 'a:4:{s:4:"time";d:1370684262.2404038906097412109375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(123, 26, 'akismet_as_submitted', 'a:68:{s:15:"comment_post_ID";i:56;s:14:"comment_author";s:7:"Gerhard";s:20:"comment_author_email";s:21:"gerhard@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:21:"The best hoodie ever!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:12:"72.251.244.9";s:10:"user_agent";s:135:"Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25";s:8:"referrer";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:7:"Gerhard";s:10:"POST_email";s:21:"gerhard@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:21:"The best hoodie ever!";s:7:"POST__n";s:10:"56eef4b919";s:21:"POST__wp_http_referer";s:40:"/woocommerce/product/ninja-silhouette-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"56";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"98e3d67d36";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:135:"Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25";s:15:"HTTP_CONNECTION";s:5:"close";s:20:"HTTP_ACCEPT_LANGUAGE";s:5:"en-us";s:11:"HTTP_PRAGMA";s:8:"no-cache";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:12:"HTTP_REFERER";s:66:"http://demo2.woothemes.com/woocommerce/product/ninja-silhouette-2/";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:11:"HTTP_COOKIE";s:0:"";s:14:"CONTENT_LENGTH";s:3:"255";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:8:"HTTP_VIA";s:5:"Onavo";s:18:"HTTP_CACHE_CONTROL";s:14:"max-age=259200";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:12:"72.251.244.9";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"14967";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370684262";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:23";}'),
(124, 26, 'rating', '5'),
(125, 27, 'akismet_error', '1370606673'),
(126, 27, 'akismet_history', 'a:4:{s:4:"time";d:1370606673.5934140682220458984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(127, 27, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:60;s:14:"comment_author";s:6:"Magnus";s:20:"comment_author_email";s:20:"magnus@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:34:"I like the logo but not the color.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"79.161.106.35";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36";s:8:"referrer";s:58:"http://demo2.woothemes.com/woocommerce/product/woo-logo-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:58:"http://demo2.woothemes.com/woocommerce/product/woo-logo-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:6:"Magnus";s:10:"POST_email";s:20:"magnus@woothemes.com";s:11:"POST_rating";s:1:"3";s:12:"POST_comment";s:35:"I like the logo but not the color. ";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:32:"/woocommerce/product/woo-logo-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"60";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"71dc771f00";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"257";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:58:"http://demo2.woothemes.com/woocommerce/product/woo-logo-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"79.161.106.35";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"62521";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606673";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:08";}'),
(128, 27, 'rating', '3'),
(129, 27, 'akismet_history', 'a:4:{s:4:"time";d:1370607949.19136905670166015625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(130, 28, 'akismet_error', '1370620465'),
(131, 28, 'akismet_history', 'a:4:{s:4:"time";d:1370620465.89346790313720703125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(132, 28, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:60;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:29:"Three letters, one word: WOO!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:58:"http://demo2.woothemes.com/woocommerce/product/woo-logo-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:58:"http://demo2.woothemes.com/woocommerce/product/woo-logo-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:29:"Three letters, one word: WOO!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:32:"/woocommerce/product/woo-logo-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"60";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"71dc771f00";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"255";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:58:"http://demo2.woothemes.com/woocommerce/product/woo-logo-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"27597";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620465";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:18:08";}'),
(133, 28, 'rating', '5'),
(134, 28, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.92792606353759765625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(135, 29, 'akismet_error', '1370605945'),
(136, 29, 'akismet_history', 'a:4:{s:4:"time";d:1370605945.8927509784698486328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(137, 29, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:70;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:86:"Really happy with this print. The colors are great, and the paper quality is good too.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:86:"Really happy with this print. The colors are great, and the paper quality is good too.";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:34:"/woocommerce/product/flying-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"70";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"09a0ca91cf";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"316";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"53744";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370605945";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:25:12";}'),
(138, 29, 'rating', '4'),
(139, 29, 'akismet_history', 'a:4:{s:4:"time";d:1370607928.4240779876708984375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(140, 30, 'akismet_error', '1370606196'),
(141, 30, 'akismet_history', 'a:4:{s:4:"time";d:1370606196.096724987030029296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(142, 30, 'akismet_as_submitted', 'a:64:{s:15:"comment_post_ID";i:70;s:14:"comment_author";s:6:"Andrew";s:20:"comment_author_email";s:25:"andrew@chromeorange.co.uk";s:18:"comment_author_url";N;s:15:"comment_content";s:136:"You only get the picture, not the person holding it, something they don\'t mention in the description, now I\'ve got to find my own person";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"86.19.152.140";s:10:"user_agent";s:81:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0";s:8:"referrer";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:6:"Andrew";s:10:"POST_email";s:25:"andrew@chromeorange.co.uk";s:11:"POST_rating";s:1:"3";s:12:"POST_comment";s:136:"You only get the picture, not the person holding it, something they don\'t mention in the description, now I\'ve got to find my own person";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:34:"/woocommerce/product/flying-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"70";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"09a0ca91cf";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:81:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0";s:15:"HTTP_CONNECTION";s:5:"close";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.5";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:12:"HTTP_REFERER";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:11:"HTTP_COOKIE";s:0:"";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:14:"CONTENT_LENGTH";s:3:"375";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"86.19.152.140";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"56980";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606196";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:25:12";}'),
(143, 30, 'rating', '3'),
(144, 30, 'akismet_history', 'a:4:{s:4:"time";d:1370607938.78227710723876953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(145, 31, 'akismet_error', '1370607565'),
(146, 31, 'akismet_history', 'a:4:{s:4:"time";d:1370607565.8578360080718994140625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(147, 31, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:70;s:14:"comment_author";s:11:"Coen Jacobs";s:20:"comment_author_email";s:18:"coen@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:60:"This is my favorite poster. In fact, I\'ve ordered 5 of them!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:12:"84.39.28.254";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:11:"Coen Jacobs";s:10:"POST_email";s:18:"coen@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:60:"This is my favorite poster. In fact, I\'ve ordered 5 of them!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:34:"/woocommerce/product/flying-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"70";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"a0ccbdfa0d";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"293";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:23:"en-US,en;q=0.8,nl;q=0.6";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:12:"84.39.28.254";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:4:"8391";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370607565";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:25:12";}'),
(148, 31, 'rating', '5'),
(149, 31, 'akismet_history', 'a:4:{s:4:"time";d:1370607952.2542870044708251953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(150, 32, 'akismet_error', '1370609989'),
(151, 32, 'akismet_history', 'a:4:{s:4:"time";d:1370609989.9351150989532470703125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(152, 32, 'akismet_as_submitted', 'a:64:{s:15:"comment_post_ID";i:70;s:14:"comment_author";s:6:"Stuart";s:20:"comment_author_email";s:20:"stuart@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:79:"This is a fantastic quality print and is happily hanging framed on my wall now.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"82.32.109.140";s:10:"user_agent";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:8:"referrer";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:6:"Stuart";s:10:"POST_email";s:20:"stuart@woothemes.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:79:"This is a fantastic quality print and is happily hanging framed on my wall now.";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:34:"/woocommerce/product/flying-ninja/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"70";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"a0ccbdfa0d";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";s:15:"HTTP_CONNECTION";s:5:"close";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.5";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:12:"HTTP_REFERER";s:60:"http://demo2.woothemes.com/woocommerce/product/flying-ninja/";s:11:"HTTP_COOKIE";s:0:"";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:14:"CONTENT_LENGTH";s:3:"303";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"82.32.109.140";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"39257";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370609989";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:25:12";}'),
(153, 32, 'rating', '4'),
(154, 32, 'akismet_history', 'a:4:{s:4:"time";d:1370611523.6167409420013427734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(155, 33, 'akismet_error', '1370608744'),
(156, 33, 'akismet_history', 'a:4:{s:4:"time";d:1370608744.324286937713623046875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(157, 33, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:73;s:14:"comment_author";s:3:"Dan";s:20:"comment_author_email";s:17:"dan@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:135:"I thought I was buying a man holding a poster, but when it arrived it was just the poster. Cool poster though, so I\'ll give it 3 stars!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"188.221.1.167";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:65:"http://demo2.woothemes.com/woocommerce/product/premium-quality-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:65:"http://demo2.woothemes.com/woocommerce/product/premium-quality-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:3:"Dan";s:10:"POST_email";s:17:"dan@woothemes.com";s:11:"POST_rating";s:1:"3";s:12:"POST_comment";s:135:"I thought I was buying a man holding a poster, but when it arrived it was just the poster. Cool poster though, so I\'ll give it 3 stars!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:39:"/woocommerce/product/premium-quality-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"73";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"441b7bcdc8";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"366";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:65:"http://demo2.woothemes.com/woocommerce/product/premium-quality-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"188.221.1.167";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"22513";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370608744";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:27:38";}'),
(158, 33, 'rating', '3'),
(159, 33, 'akismet_history', 'a:4:{s:4:"time";d:1370609036.19725894927978515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(160, 34, 'akismet_error', '1370620529'),
(161, 34, 'akismet_history', 'a:4:{s:4:"time";d:1370620529.737782001495361328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(162, 34, 'akismet_as_submitted', ''),
(163, 34, 'rating', '1'),
(164, 34, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.7349870204925537109375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(165, 35, 'akismet_error', '1370620584'),
(166, 35, 'akismet_history', 'a:4:{s:4:"time";d:1370620584.252111911773681640625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(167, 35, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:76;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:44:"He really is the cutest little man. Swoooon!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-3/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-3/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:45:"He really is the cutest little man. Swoooon! ";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/woo-ninja-3/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"76";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"29cab5ecf2";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"268";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-ninja-3/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"28885";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620584";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:28:45";}'),
(168, 35, 'rating', '4'),
(169, 35, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.352140903472900390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(170, 36, 'akismet_error', '1370606192'),
(171, 36, 'akismet_history', 'a:4:{s:4:"time";d:1370606192.68978595733642578125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}') ;
INSERT INTO `mab_commentmeta` ( `meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(172, 36, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:87;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:72:"Wonderful collection of WooThemes classics! A must buy for all Woo fans.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:72:"Wonderful collection of WooThemes classics! A must buy for all Woo fans.";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/woo-album-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"87";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"0f8261c8a1";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"301";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"56904";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606192";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:39:39";}'),
(173, 36, 'rating', '4'),
(174, 36, 'akismet_history', 'a:4:{s:4:"time";d:1370607936.7026889324188232421875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(175, 37, 'akismet_error', '1370607727'),
(176, 37, 'akismet_history', 'a:4:{s:4:"time";d:1370607727.7151229381561279296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(177, 37, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:90;s:14:"comment_author";s:11:"Coen Jacobs";s:20:"comment_author_email";s:18:"coen@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:104:"This album gets a bit boring after you\'ve listened to it more than once. Worth that first listen though.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:12:"84.39.28.254";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-3/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-3/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:11:"Coen Jacobs";s:10:"POST_email";s:18:"coen@woothemes.com";s:11:"POST_rating";s:1:"3";s:12:"POST_comment";s:104:"This album gets a bit boring after you\'ve listened to it more than once. Worth that first listen though.";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/woo-album-3/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"90";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"80cf1a3ac9";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"332";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-3/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:23:"en-US,en;q=0.8,nl;q=0.6";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:12:"84.39.28.254";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"10605";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370607727";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:39:44";}'),
(178, 37, 'rating', '3'),
(179, 37, 'akismet_history', 'a:4:{s:4:"time";d:1370607956.6225149631500244140625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(180, 38, 'akismet_error', '1370605490'),
(181, 38, 'akismet_history', 'a:4:{s:4:"time";d:1370605490.617733001708984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(182, 38, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:96;s:14:"comment_author";s:12:"James Koster";s:20:"comment_author_email";s:23:"james@jameskoster.co.uk";s:18:"comment_author_url";N;s:15:"comment_content";s:71:"The most influential album of the last 25 years? This just might be it.";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"86.146.141.82";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-4/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-4/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"James Koster";s:10:"POST_email";s:23:"james@jameskoster.co.uk";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:71:"The most influential album of the last 25 years? This just might be it.";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/woo-album-4/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"96";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"ed891d3d81";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"305";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-4/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"86.146.141.82";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"48176";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370605490";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:39:52";}'),
(183, 38, 'rating', '5'),
(184, 38, 'akismet_history', 'a:4:{s:4:"time";d:1370605642.8089940547943115234375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(185, 39, 'akismet_error', '1370607690'),
(186, 39, 'akismet_history', 'a:4:{s:4:"time";d:1370607690.593863964080810546875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(187, 39, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:96;s:14:"comment_author";s:11:"Coen Jacobs";s:20:"comment_author_email";s:18:"coen@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:29:"Some rad tunes on this album!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:12:"84.39.28.254";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-4/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-4/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:11:"Coen Jacobs";s:10:"POST_email";s:18:"coen@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:29:"Some rad tunes on this album!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:33:"/woocommerce/product/woo-album-4/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"96";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"a6305fd045";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"257";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:59:"http://demo2.woothemes.com/woocommerce/product/woo-album-4/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:23:"en-US,en;q=0.8,nl;q=0.6";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:12:"84.39.28.254";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"10047";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370607690";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:39:52";}'),
(188, 39, 'rating', '5'),
(189, 39, 'akismet_history', 'a:4:{s:4:"time";d:1370607954.72317409515380859375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(190, 40, 'akismet_error', '1370606323'),
(191, 40, 'akismet_history', 'a:4:{s:4:"time";d:1370606323.7919909954071044921875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(192, 40, 'akismet_as_submitted', 'a:67:{s:15:"comment_post_ID";i:99;s:14:"comment_author";s:12:"Cobus Bester";s:20:"comment_author_email";s:18:"bester.c@gmail.com";s:18:"comment_author_url";N;s:15:"comment_content";s:70:"This album proves why The Woo are the best band ever. Best music ever!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"196.215.9.147";s:10:"user_agent";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:8:"referrer";s:60:"http://demo2.woothemes.com/woocommerce/product/woo-single-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:60:"http://demo2.woothemes.com/woocommerce/product/woo-single-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:12:"Cobus Bester";s:10:"POST_email";s:18:"bester.c@gmail.com";s:11:"POST_rating";s:1:"4";s:12:"POST_comment";s:70:"This album proves why The Woo are the best band ever. Best music ever!";s:7:"POST__n";s:10:"a80bd2f042";s:21:"POST__wp_http_referer";s:34:"/woocommerce/product/woo-single-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"99";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"059233ad6f";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"300";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:60:"http://demo2.woothemes.com/woocommerce/product/woo-single-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:19:"HTTP_ACCEPT_CHARSET";s:30:"ISO-8859-1,utf-8;q=0.7,*;q=0.3";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"196.215.9.147";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"58583";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370606323";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:39:32";}'),
(193, 40, 'rating', '4'),
(194, 40, 'akismet_history', 'a:4:{s:4:"time";d:1370607945.93982601165771484375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(195, 41, 'akismet_error', '1370620368'),
(196, 41, 'akismet_history', 'a:4:{s:4:"time";d:1370620368.7943160533905029296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(197, 41, 'akismet_as_submitted', 'a:66:{s:15:"comment_post_ID";i:99;s:14:"comment_author";s:5:"Maria";s:20:"comment_author_email";s:19:"maria@woothemes.com";s:18:"comment_author_url";N;s:15:"comment_content";s:83:"Can’t wait to start mixin’ with this one! Irba-irr-Up-up-up-up-date your theme!";s:12:"comment_type";s:0:"";s:14:"comment_parent";i:0;s:7:"user_ID";i:0;s:7:"user_ip";s:13:"24.225.103.32";s:10:"user_agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:8:"referrer";s:60:"http://demo2.woothemes.com/woocommerce/product/woo-single-2/";s:4:"blog";s:38:"http://demo2.woothemes.com/woocommerce";s:9:"blog_lang";s:5:"en_US";s:12:"blog_charset";s:5:"UTF-8";s:9:"permalink";s:60:"http://demo2.woothemes.com/woocommerce/product/woo-single-2/";s:21:"akismet_comment_nonce";s:6:"passed";s:11:"POST_author";s:5:"Maria";s:10:"POST_email";s:19:"maria@woothemes.com";s:11:"POST_rating";s:1:"5";s:12:"POST_comment";s:83:"Can’t wait to start mixin’ with this one! Irba-irr-Up-up-up-up-date your theme!";s:7:"POST__n";s:10:"2145d644a3";s:21:"POST__wp_http_referer";s:34:"/woocommerce/product/woo-single-2/";s:11:"POST_submit";s:13:"Submit Review";s:20:"POST_comment_post_ID";s:2:"99";s:19:"POST_comment_parent";s:1:"0";s:26:"POST_akismet_comment_nonce";s:10:"55e6a1c67c";s:15:"SERVER_SOFTWARE";s:6:"Apache";s:11:"REQUEST_URI";s:33:"/woocommerce/wp-comments-post.php";s:15:"REDIRECT_IS_WPE";s:1:"1";s:27:"REDIRECT_WPE_CAN_WRITE_DISK";s:1:"0";s:15:"REDIRECT_STATUS";s:3:"200";s:6:"IS_WPE";s:1:"1";s:18:"WPE_CAN_WRITE_DISK";s:1:"0";s:9:"HTTP_HOST";s:19:"demo2.woothemes.com";s:13:"HTTP_X_LB_KEY";s:8:"woodemo2";s:13:"HTTP_X_IS_BOT";s:1:"0";s:15:"HTTP_USER_AGENT";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36";s:15:"HTTP_CONNECTION";s:5:"close";s:14:"CONTENT_LENGTH";s:3:"321";s:18:"HTTP_CACHE_CONTROL";s:9:"max-age=0";s:11:"HTTP_ACCEPT";s:63:"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";s:11:"HTTP_ORIGIN";s:26:"http://demo2.woothemes.com";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:12:"HTTP_REFERER";s:60:"http://demo2.woothemes.com/woocommerce/product/woo-single-2/";s:20:"HTTP_ACCEPT_ENCODING";s:17:"gzip,deflate,sdch";s:20:"HTTP_ACCEPT_LANGUAGE";s:14:"en-US,en;q=0.8";s:11:"HTTP_COOKIE";s:0:"";s:4:"PATH";s:28:"/usr/local/bin:/usr/bin:/bin";s:16:"SERVER_SIGNATURE";s:0:"";s:11:"SERVER_NAME";s:19:"demo2.woothemes.com";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:13:"24.225.103.32";s:13:"DOCUMENT_ROOT";s:26:"/nas/wp/www/sites/woodemo2";s:12:"SERVER_ADMIN";s:18:"[no address given]";s:15:"SCRIPT_FILENAME";s:47:"/nas/wp/www/sites/woodemo2/wp-comments-post.php";s:11:"REMOTE_PORT";s:5:"26649";s:12:"REDIRECT_URL";s:33:"/woocommerce/wp-comments-post.php";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.0";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"SCRIPT_NAME";s:21:"/wp-comments-post.php";s:8:"PHP_SELF";s:21:"/wp-comments-post.php";s:12:"REQUEST_TIME";s:10:"1370620368";s:25:"comment_post_modified_gmt";s:19:"2013-06-07 11:39:32";}'),
(198, 41, 'rating', '5'),
(199, 41, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9469869136810302734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}') ;

#
# End of data contents of table `mab_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `mab_comments`
#

DROP TABLE IF EXISTS `mab_comments`;


#
# Table structure of table `mab_comments`
#

CREATE TABLE `mab_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_comments`
#
INSERT INTO `mab_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-03-19 00:39:57', '2014-03-19 00:39:57', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 15, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:57:05', '2013-06-07 11:57:05', 'Simple and effective design. One of my favorites.', 0, '1', '', '', 0, 0),
(3, 19, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:53:49', '2013-06-07 11:53:49', 'Wonderful quality, and an awesome design. WooThemes ftw!', 0, '1', '', '', 0, 0),
(4, 19, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:57:45', '2013-06-07 11:57:45', 'This t-shirt is awesome! Would recommend to everyone!\n\nI\'m ordering mine next week', 0, '1', '', '', 0, 0),
(5, 22, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:43:13', '2013-06-07 11:43:13', 'Nice T-shirt, I got one in black. Goes with anything!', 0, '1', '', '', 0, 0),
(6, 22, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:55:15', '2013-06-07 11:55:15', 'Very comfortable shirt, and I love the graphic!', 0, '1', '', '', 0, 0),
(7, 22, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 13:02:14', '2013-06-07 13:02:14', 'Great T-shirt quality, Great Design and Great Service.', 0, '1', '', '', 0, 0),
(8, 31, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:54:32', '2013-06-07 11:54:32', 'The ninja silhouette is one of my favorite designs. This is a great product.', 0, '1', '', '', 0, 0),
(9, 37, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 13:01:25', '2013-06-07 13:01:25', 'This will go great with my Hoodie that I ordered a few weeks ago.', 0, '1', '', '', 0, 0),
(10, 37, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:49:53', '2013-06-07 15:49:53', 'Love this shirt! The ninja near and dear to my heart. &lt;3', 0, '1', '', '', 0, 0),
(11, 40, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 13:03:29', '2013-06-07 13:03:29', 'Another great quality product that anyone who see\'s me wearing has asked where to purchase one of their own.', 0, '1', '', '', 0, 0),
(12, 40, 'Ryan', 'ryan@woothemes.com', '', '99.153.225.252', '2013-06-07 13:24:52', '2013-06-07 13:24:52', 'This hoodie gets me lots of looks while out in public, I got the blue one and it\'s awesome. Not sure if people are looking at my hoodie only, or also at my rocking bod.', 0, '1', '', '', 0, 0),
(13, 40, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:31', '2013-06-07 15:53:31', 'Ship it!', 0, '1', '', '', 0, 0),
(14, 47, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:57:59', '2013-06-07 11:57:59', 'This hoodie is great for those chilly winter days. I love the WooNinja!', 0, '1', '', '', 0, 0),
(15, 47, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:13', '2013-06-07 15:53:13', 'Perfect for the lady Ninja in your life!', 0, '1', '', '', 0, 0),
(16, 50, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:46:52', '2013-06-07 11:46:52', 'Perfect when you\'re sat at your computer, waiting for the next batch of Woo Goodies to be released. The Patient Ninja is Patient.', 0, '1', '', '', 0, 0),
(17, 50, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:53:13', '2013-06-07 11:53:13', 'The most comfortable hoodie I have ever owned!', 0, '1', '', '', 0, 0),
(18, 50, 'Magnus', 'magnus@woothemes.com', '', '79.161.106.35', '2013-06-07 12:04:03', '2013-06-07 12:04:03', 'This is my favorite hoodie!\n\nIf only it came in red as well!', 0, '1', '', '', 0, 0),
(19, 53, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:54:51', '2013-06-07 11:54:51', 'I bought this thinking it was a nice green colour, apparently it GREY! I\'m colour blind so I don\'t care but my girlfriend says grey makes me look fat', 0, '1', '', '', 0, 0),
(20, 53, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:50:22', '2013-06-07 15:50:22', 'I love grey hoodies! This is perfect with my grey Ninja shirt, when I get cold I throw this on and I can still be a Ninja.', 0, '1', '', '', 0, 0),
(21, 56, 'student', 'student@woothemes.com', '', '196.215.9.147', '2013-06-07 12:14:53', '2013-06-07 12:14:53', 'Perfect Hoodie for a Ninja!', 0, '1', '', '', 0, 0),
(22, 56, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:20:56', '2013-06-07 12:20:56', 'I have lots of hoodies, but none is as cool as this one!', 0, '1', '', '', 0, 0),
(23, 56, 'Dan', 'dan@woothemes.com', '', '188.221.1.167', '2013-06-07 12:41:42', '2013-06-07 12:41:42', 'I love hoodies, and ninjas, so what could be better than a ninja hoodie? Not much, if you ask me!', 0, '1', '', '', 0, 0),
(24, 56, 'Ryan', 'ryan@woothemes.com', '', '99.153.225.252', '2013-06-07 13:26:40', '2013-06-07 13:26:40', 'This is the most bombastic hoodie in this shop, it\'s soft and has the sly WooThemes ninja on it. Why wouldn\'t you buy this?', 0, '1', '', '', 0, 0),
(25, 56, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:56', '2013-06-07 15:53:56', 'This only gets 1 star because I don\'t have this yet. I want it now!', 0, '1', '', '', 0, 0),
(26, 56, 'Gerhard', 'gerhard@woothemes.com', '', '72.251.244.9', '2013-06-08 09:37:42', '2013-06-08 09:37:42', 'The best hoodie ever!', 0, '0', '', '', 0, 0),
(27, 60, 'Magnus', 'magnus@woothemes.com', '', '79.161.106.35', '2013-06-07 12:04:33', '2013-06-07 12:04:33', 'I like the logo but not the color.', 0, '1', '', '', 0, 0),
(28, 60, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:54:25', '2013-06-07 15:54:25', 'Three letters, one word: WOO!', 0, '1', '', '', 0, 0),
(29, 70, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:52:25', '2013-06-07 11:52:25', 'Really happy with this print. The colors are great, and the paper quality is good too.', 0, '1', '', '', 0, 0),
(30, 70, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:56:36', '2013-06-07 11:56:36', 'You only get the picture, not the person holding it, something they don\'t mention in the description, now I\'ve got to find my own person', 0, '1', '', '', 0, 0),
(31, 70, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:19:25', '2013-06-07 12:19:25', 'This is my favorite poster. In fact, I\'ve ordered 5 of them!', 0, '1', '', '', 0, 0),
(32, 70, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 12:59:49', '2013-06-07 12:59:49', 'This is a fantastic quality print and is happily hanging framed on my wall now.', 0, '1', '', '', 0, 0),
(33, 73, 'Dan', 'dan@woothemes.com', '', '188.221.1.167', '2013-06-07 12:39:04', '2013-06-07 12:39:04', 'I thought I was buying a man holding a poster, but when it arrived it was just the poster. Cool poster though, so I\'ll give it 3 stars!', 0, '1', '', '', 0, 0),
(34, 73, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:55:29', '2013-06-07 15:55:29', 'I didn\'t expect this poster to arrive folded. Now there are lines on the poster and one sad Ninja.', 0, '1', '', '', 0, 0),
(35, 76, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:56:24', '2013-06-07 15:56:24', 'He really is the cutest little man. Swoooon!', 0, '1', '', '', 0, 0),
(36, 87, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:56:32', '2013-06-07 11:56:32', 'Wonderful collection of WooThemes classics! A must buy for all Woo fans.', 0, '1', '', '', 0, 0),
(37, 90, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:22:07', '2013-06-07 12:22:07', 'This album gets a bit boring after you\'ve listened to it more than once. Worth that first listen though.', 0, '1', '', '', 0, 0),
(38, 96, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:44:50', '2013-06-07 11:44:50', 'The most influential album of the last 25 years? This just might be it.', 0, '1', '', '', 0, 0),
(39, 96, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:21:30', '2013-06-07 12:21:30', 'Some rad tunes on this album!', 0, '1', '', '', 0, 0),
(40, 99, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:58:43', '2013-06-07 11:58:43', 'This album proves why The Woo are the best band ever. Best music ever!', 0, '1', '', '', 0, 0),
(41, 99, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:52:48', '2013-06-07 15:52:48', 'Can’t wait to start mixin’ with this one! Irba-irr-Up-up-up-up-date your theme!', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `mab_comments`
# --------------------------------------------------------



#
# Delete any existing table `mab_links`
#

DROP TABLE IF EXISTS `mab_links`;


#
# Table structure of table `mab_links`
#

CREATE TABLE `mab_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_links`
#

#
# End of data contents of table `mab_links`
# --------------------------------------------------------



#
# Delete any existing table `mab_new_royalsliders`
#

DROP TABLE IF EXISTS `mab_new_royalsliders`;


#
# Table structure of table `mab_new_royalsliders`
#

CREATE TABLE `mab_new_royalsliders` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `skin` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL,
  `slides` longtext NOT NULL,
  `options` mediumtext NOT NULL,
  `template_html` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_new_royalsliders`
#
INSERT INTO `mab_new_royalsliders` ( `id`, `active`, `type`, `name`, `skin`, `template`, `slides`, `options`, `template_html`) VALUES
(1, 1, 'custom', 'Home Slider', 'rsUni', 'default', '[{"title":"slider-v1-1","image":{"attachment_id":"106"}}]', '{"template":"default","sopts":{"width":"100%","height":"500px","autoScaleSlider":"true","autoScaleSliderWidth":"1220","autoScaleSliderHeight":"500","imageScaleMode":"fill","imageScalePadding":"0","controlNavigation":"none"},"image_generation":{"lazyLoading":"true","imageWidth":"","imageHeight":"","thumbImageWidth":"","thumbImageHeight":""},"thumbs":{"thumbWidth":"96","thumbHeight":"72"},"autoPlay":{"enabled":"true"},"block":{"moveOffset":"20","speed":"400","delay":"200"}}', '<div class="rsContent">\n  {{image_tag}}\n  {{thumbnail}}\n  {{html}}\n  {{animated_blocks}}\n  {{#link_url}}\n  <a class="rsLink" href="{{link_url}}">{{title}}</a>\n  {{/link_url}}\n</div>') ;

#
# End of data contents of table `mab_new_royalsliders`
# --------------------------------------------------------



#
# Delete any existing table `mab_options`
#

DROP TABLE IF EXISTS `mab_options`;


#
# Table structure of table `mab_options`
#

CREATE TABLE `mab_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1489 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_options`
#
INSERT INTO `mab_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://mab.studio-culture.net', 'yes'),
(2, 'blogname', 'Meat At Billy&#039;s', 'yes'),
(3, 'blogdescription', 'Tradition Butcher Brisbane', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'fil@studio-culture.com.au', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '1', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '12', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:15:{i:0;s:29:"acf-repeater/acf-repeater.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:27:"backupbuddy/backupbuddy.php";i:3;s:29:"gravityforms/gravityforms.php";i:4;s:34:"new-royalslider/newroyalslider.php";i:5;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:6;s:35:"responsive-menu/responsive-menu.php";i:7;s:33:"rich-text-tags/rich-text-tags.php";i:8;s:51:"thumbnail-crop-position/thumbnail-crop-position.php";i:9;s:33:"widget-context/widget-context.php";i:10;s:65:"woocommerce-category-accordion/woocommerce-category-accordion.php";i:11;s:27:"woocommerce/woocommerce.php";i:12;s:41:"wordpress-importer/wordpress-importer.php";i:13;s:37:"wp-editor-widget/wp-editor-widget.php";i:14;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";}', 'yes'),
(36, 'home', 'http://mab.studio-culture.net', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'meatatbillys', 'yes'),
(45, 'stylesheet', 'meatatbillys', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '27916', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'none', 'yes'),
(71, 'image_default_size', 'large', 'yes'),
(72, 'image_default_align', 'left', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:3;a:4:{s:5:"title";s:8:"Articles";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:51:"thumbnail-crop-position/thumbnail-crop-position.php";s:13:"tcp_uninstall";}', 'no'),
(86, 'timezone_string', 'Australia/Brisbane', 'yes'),
(87, 'page_for_posts', '116', 'yes'),
(88, 'page_on_front', '2', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'mab_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:115:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:93:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:3:{i:0;s:12:"categories-3";i:1;s:23:"wc_category_accordion-2";i:2;s:32:"woocommerce_product_categories-2";}s:7:"footer1";a:1:{i:0;s:10:"nav_menu-3";}s:7:"footer2";a:1:{i:0;s:10:"nav_menu-2";}s:7:"footer3";a:1:{i:0;s:18:"wp_editor_widget-2";}s:7:"footer4";a:1:{i:0;s:18:"wp_editor_widget-3";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:8:{i:1403164320;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1403171155;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1403172000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1403181603;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1403224842;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1403232203;a:1:{s:27:"pb_backupbuddy_housekeeping";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1403235565;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(136, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1395189757;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(137, 'current_theme', 'Meat At Billys', 'yes'),
(138, 'theme_mods_eddiemachado-bones-7ed86d5', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1400910921;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(139, 'theme_switched', '', 'yes') ;
INSERT INTO `mab_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(144, 'pb_backupbuddy', 'a:65:{s:12:"data_version";s:1:"8";s:21:"importbuddy_pass_hash";s:32:"4292098efabc2511058fd4d31ac19937";s:23:"importbuddy_pass_length";i:13;s:13:"rollback_beta";i:0;s:16:"backup_reminders";i:1;s:16:"edits_since_last";i:0;s:17:"last_backup_start";i:1403162571;s:18:"last_backup_finish";i:1403162615;s:18:"last_backup_serial";s:10:"y2hr38qray";s:17:"last_backup_stats";a:10:{s:11:"archiveFile";s:69:"backup-mab_dev_10_0_1_2_xip_io-2014_06_19-05_22pm-full-y2hr38qray.zip";s:10:"archiveURL";s:138:"http://mab.studio-culture.net/wp-content/uploads/backupbuddy_backups/backup-mab_dev_10_0_1_2_xip_io-2014_06_19-05_22pm-full-y2hr38qray.zip";s:11:"archiveSize";i:109362742;s:5:"start";i:1403162571;s:6:"finish";i:1403162615;s:4:"type";s:4:"full";s:12:"profileTitle";s:15:"Complete Backup";s:13:"scheduleTitle";s:0:"";s:15:"integrityStatus";b:1;s:12:"destinations";a:0:{}}s:19:"force_compatibility";i:0;s:29:"force_mysqldump_compatibility";i:0;s:9:"schedules";a:0:{}s:9:"log_level";s:1:"1";s:13:"high_security";i:0;s:19:"next_schedule_index";i:100;s:13:"archive_limit";s:1:"1";s:18:"archive_limit_size";s:1:"0";s:17:"archive_limit_age";s:1:"0";s:26:"delete_archives_pre_backup";i:0;s:23:"lock_archives_directory";i:0;s:28:"email_notify_scheduled_start";s:0:"";s:36:"email_notify_scheduled_start_subject";s:49:"BackupBuddy Scheduled Backup Started - {site_url}";s:33:"email_notify_scheduled_start_body";s:142:"A scheduled backup has started with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {site_url}.\r\n\r\nDetails:\r\n\r\n{message}";s:31:"email_notify_scheduled_complete";s:0:"";s:39:"email_notify_scheduled_complete_subject";s:50:"BackupBuddy Scheduled Backup Complete - {site_url}";s:36:"email_notify_scheduled_complete_body";s:144:"A scheduled backup has completed with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {site_url}.\r\n\r\nDetails:\r\n\r\n{message}";s:18:"email_notify_error";s:25:"fil@studio-culture.com.au";s:26:"email_notify_error_subject";s:30:"BackupBuddy Error - {site_url}";s:23:"email_notify_error_body";s:132:"An error occurred with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {site_url}. Error details:\r\n\r\n{message}";s:12:"email_return";s:0:"";s:19:"remote_destinations";a:0:{}s:11:"role_access";s:13:"administrator";s:16:"dropboxtemptoken";s:0:"";s:11:"backup_mode";s:1:"2";s:16:"multisite_export";s:1:"0";s:16:"backup_directory";s:0:"";s:14:"temp_directory";s:0:"";s:13:"log_directory";s:0:"";s:10:"log_serial";s:15:"8wzi178j2sida59";s:13:"notifications";a:0:{}s:19:"zip_method_strategy";s:1:"1";s:17:"alternative_zip_2";s:1:"0";s:19:"ignore_zip_warnings";s:1:"0";s:19:"ignore_zip_symlinks";s:1:"1";s:25:"disable_zipmethod_caching";s:1:"0";s:19:"archive_name_format";s:8:"datetime";s:30:"disable_https_local_ssl_verify";s:1:"0";s:17:"save_comment_meta";s:1:"1";s:27:"ignore_command_length_check";s:1:"0";s:5:"stats";a:6:{s:9:"site_size";i:0;s:18:"site_size_excluded";i:0;s:17:"site_size_updated";i:0;s:7:"db_size";i:0;s:16:"db_size_excluded";i:0;s:15:"db_size_updated";i:0;}s:9:"disalerts";a:0:{}s:15:"breakout_tables";s:1:"0";s:19:"include_importbuddy";s:1:"1";s:17:"max_site_log_size";s:1:"5";s:11:"compression";s:1:"1";s:25:"no_new_backups_error_days";s:2:"45";s:15:"skip_quicksetup";s:1:"0";s:13:"prevent_flush";s:1:"0";s:17:"rollback_cleanups";a:0:{}s:8:"profiles";a:3:{i:0;a:11:{s:4:"type";s:8:"defaults";s:5:"title";s:15:"Global Defaults";s:18:"skip_database_dump";s:1:"0";s:29:"mysqldump_additional_includes";s:0:"";s:29:"mysqldump_additional_excludes";s:0:"";s:19:"backup_nonwp_tables";s:1:"1";s:8:"excludes";s:0:"";s:15:"integrity_check";s:1:"1";s:20:"profile_globaltables";s:1:"1";s:22:"profile_globalexcludes";s:1:"1";s:11:"backup_mode";s:2:"-1";}i:1;a:3:{s:4:"type";s:2:"db";s:5:"title";s:13:"Database Only";s:3:"tip";s:49:"Just your database. I like your minimalist style.";}i:2;a:2:{s:4:"type";s:4:"full";s:5:"title";s:15:"Complete Backup";}}s:20:"phpmysqldump_maxrows";s:0:"";s:20:"disable_localization";s:1:"0";i:0;b:0;s:29:"importbuddy_pass_hash_confirm";s:13:"studioculture";}', 'yes'),
(145, 'recently_activated', 'a:1:{s:35:"taxonomy-images/taxonomy-images.php";i:1402967669;}', 'yes'),
(146, 'ithemes-updater-cache', 'a:9:{s:12:"server-cache";i:30;s:10:"expiration";i:1403466722;s:9:"timestamp";i:1403423522;s:8:"packages";a:1:{i:0;s:11:"backupbuddy";}s:14:"update_plugins";a:0:{}s:13:"update_themes";a:0:{}s:12:"use_ca_patch";b:0;s:7:"use_ssl";b:1;s:14:"quick_releases";b:0;}', 'yes'),
(150, 'acf_version', '4.3.8', 'yes'),
(162, 'thumb_crop_position_option', 'a:1:{s:8:"position";i:4;}', 'yes'),
(170, 'woocommerce_default_country', 'AU:QLD', 'yes'),
(171, 'woocommerce_allowed_countries', 'all', 'yes'),
(172, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(173, 'woocommerce_demo_store', 'no', 'yes'),
(174, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes — no orders shall be fulfilled.', 'no'),
(175, 'woocommerce_api_enabled', 'yes', 'yes'),
(176, 'woocommerce_currency', 'AUD', 'yes'),
(177, 'woocommerce_currency_pos', 'left', 'yes'),
(178, 'woocommerce_price_thousand_sep', ',', 'yes'),
(179, 'woocommerce_price_decimal_sep', '.', 'yes'),
(180, 'woocommerce_price_num_decimals', '2', 'yes'),
(181, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(182, 'woocommerce_enable_chosen', 'yes', 'no'),
(183, 'woocommerce_shop_page_id', '6', 'yes'),
(184, 'woocommerce_shop_page_display', '', 'yes'),
(185, 'woocommerce_category_archive_display', '', 'yes'),
(186, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(187, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(188, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(189, 'woocommerce_weight_unit', 'kg', 'yes'),
(190, 'woocommerce_dimension_unit', 'cm', 'yes'),
(191, 'woocommerce_enable_review_rating', 'no', 'no'),
(192, 'woocommerce_review_rating_required', 'yes', 'no'),
(193, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(194, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(195, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";i:1;}', 'yes'),
(196, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(197, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"90";s:6:"height";s:2:"90";s:4:"crop";i:1;}', 'yes'),
(198, 'woocommerce_file_download_method', 'force', 'no'),
(199, 'woocommerce_downloads_require_login', 'no', 'no'),
(200, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(201, 'woocommerce_manage_stock', 'no', 'yes'),
(202, 'woocommerce_hold_stock_minutes', '60', 'no'),
(203, 'woocommerce_notify_low_stock', 'yes', 'no'),
(204, 'woocommerce_notify_no_stock', 'yes', 'no'),
(205, 'woocommerce_stock_email_recipient', 'fil@studio-culture.com.au', 'no'),
(206, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(207, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(208, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(209, 'woocommerce_stock_format', 'no_amount', 'yes'),
(210, 'woocommerce_calc_taxes', 'no', 'yes'),
(211, 'woocommerce_prices_include_tax', 'no', 'yes'),
(212, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(213, 'woocommerce_default_customer_address', 'base', 'yes'),
(214, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(215, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(216, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(217, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(218, 'woocommerce_price_display_suffix', '', 'yes'),
(219, 'woocommerce_tax_display_cart', 'excl', 'no'),
(220, 'woocommerce_tax_total_display', 'itemized', 'no'),
(221, 'woocommerce_enable_coupons', 'yes', 'no'),
(222, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(223, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(224, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(225, 'woocommerce_cart_page_id', '7', 'yes'),
(226, 'woocommerce_checkout_page_id', '8', 'yes'),
(227, 'woocommerce_terms_page_id', '', 'no'),
(228, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(229, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(230, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(231, 'woocommerce_calc_shipping', 'yes', 'yes'),
(232, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(233, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(234, 'woocommerce_shipping_method_format', '', 'no'),
(235, 'woocommerce_ship_to_billing', 'yes', 'no'),
(236, 'woocommerce_ship_to_billing_address_only', 'no', 'no'),
(237, 'woocommerce_ship_to_countries', '', 'yes'),
(238, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(239, 'woocommerce_myaccount_page_id', '9', 'yes'),
(240, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(241, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(242, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(243, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(244, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(245, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(246, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(247, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(248, 'woocommerce_registration_generate_username', 'yes', 'no'),
(249, 'woocommerce_registration_generate_password', 'no', 'no'),
(250, 'woocommerce_email_from_name', 'WooCommerce Template', 'no'),
(251, 'woocommerce_email_from_address', 'fil@studio-culture.com.au', 'no'),
(252, 'woocommerce_email_header_image', '', 'no'),
(253, 'woocommerce_email_footer_text', 'WooCommerce Template - Powered by WooCommerce', 'no'),
(254, 'woocommerce_email_base_color', '#557da1', 'no'),
(255, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(256, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(257, 'woocommerce_email_text_color', '#505050', 'no'),
(260, 'woocommerce_db_version', '2.1.10', 'yes'),
(261, 'woocommerce_version', '2.1.10', 'yes'),
(267, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(271, 'slurp_page_installed', '1', 'yes'),
(272, 'woocommerce_frontend_css_colors', 'a:5:{s:7:"primary";s:7:"#ad74a2";s:9:"secondary";s:7:"#f7f6f7";s:9:"highlight";s:7:"#85ad74";s:10:"content_bg";s:7:"#ffffff";s:7:"subtext";s:7:"#777777";}', 'yes'),
(286, 'category_children', 'a:0:{}', 'yes'),
(287, 'custom_cat_children', 'a:0:{}', 'yes') ;
INSERT INTO `mab_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(289, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(290, 'pa_color_children', 'a:0:{}', 'yes'),
(350, 'db_upgraded', '', 'yes'),
(353, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"fil@studio-culture.com.au";s:7:"version";s:5:"3.8.3";s:9:"timestamp";i:1398150275;}', 'yes'),
(440, 'woocommerce_admin_notices', 'a:1:{i:0;s:14:"template_files";}', 'yes'),
(445, 'theme_mods_meatatbillys', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"main-nav";i:23;s:13:"top-sub-links";i:24;}}', 'yes'),
(502, 'new_royalslider_config', 'a:7:{s:5:"embed";a:1:{s:9:"home_page";s:9:"home_page";}s:17:"allow_authors_cap";s:3:"yes";s:18:"cache_refresh_time";s:2:"24";s:30:"override_all_default_galleries";s:0:"";s:13:"purchase_code";s:0:"";s:19:"instagram_client_id";s:0:"";s:23:"instagram_client_secret";s:0:"";}', 'yes'),
(503, 'new_royalslider_version', '3.2.2', 'yes'),
(513, 'RMVer', '1.9', 'yes'),
(514, 'RMOptions', 'a:45:{s:2:"RM";s:15:"main-navigation";s:7:"RMBreak";i:767;s:7:"RMDepth";i:2;s:5:"RMTop";i:365;s:7:"RMRight";i:5;s:5:"RMCss";s:9:"#main-nav";s:7:"RMTitle";s:10:"Navigation";s:9:"RMLineCol";s:7:"#0a0a0a";s:10:"RMClickBkg";s:7:"#000000";s:12:"RMClickTitle";s:0:"";s:9:"RMBkgTran";s:7:"checked";s:6:"RMFont";s:0:"";s:5:"RMPos";s:0:"";s:7:"RMImage";s:0:"";s:7:"RMWidth";i:75;s:5:"RMBkg";s:7:"#0a0909";s:8:"RMBkgHov";s:7:"#3C3C3C";s:10:"RMTitleCol";s:7:"#FFFFFF";s:9:"RMTextCol";s:7:"#FFFFFF";s:8:"RMBorCol";s:7:"#3C3C3C";s:12:"RMTextColHov";s:7:"#FFFFFF";s:13:"RMTitleColHov";s:7:"#FFFFFF";s:6:"RMAnim";s:7:"overlay";s:9:"RMPushCSS";s:0:"";s:10:"RMTitleBkg";s:7:"#050404";s:10:"RMFontSize";i:13;s:11:"RMTitleSize";i:14;s:9:"RMBtnSize";i:13;s:8:"RMCurBkg";s:7:"#f4792b";s:8:"RMCurCol";s:7:"#FFFFFF";s:9:"RMAnimSpd";d:0.200000000000000011102230246251565404236316680908203125;s:9:"RMTranSpd";d:0.200000000000000011102230246251565404236316680908203125;s:10:"RMTxtAlign";s:4:"left";s:8:"RMSearch";s:6:"search";s:8:"RMExpand";s:0:"";s:12:"RMLinkHeight";i:20;s:10:"RMExternal";s:0:"";s:6:"RMSide";s:4:"left";s:8:"RMFooter";s:0:"";s:10:"RMClickImg";s:0:"";s:8:"RMMinify";s:0:"";s:12:"RMClickClose";s:0:"";s:8:"RMRemImp";s:0:"";s:3:"RMX";s:0:"";s:10:"RMMinWidth";i:0;}', 'yes'),
(515, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(594, 'widget_logic_options', 'a:22:{s:6:"text-1";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:10:"nav_menu-1";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:6:"text-3";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:18:"wp_editor_widget-1";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:18:"wp_editor_widget-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:6:"text-4";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:32:"woocommerce_product_categories-1";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:6:"meta-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:12:"categories-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:10:"archives-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:17:"recent-comments-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:14:"recent-posts-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:8:"search-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:25:"woocommerce_layered_nav-1";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:23:"wc_category_accordion-1";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:23:"wc_category_accordion-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:12:"categories-1";a:4:{s:6:"incexc";s:8:"selected";s:8:"location";a:4:{s:7:"is_home";s:1:"1";s:9:"is_single";s:1:"1";s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:12:"categories-3";a:4:{s:6:"incexc";s:8:"selected";s:8:"location";a:4:{s:7:"is_home";s:1:"1";s:9:"is_single";s:1:"1";s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:10:"nav_menu-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:6:"text-2";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:18:"wp_editor_widget-3";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}s:6:"text-5";a:4:{s:6:"incexc";s:4:"show";s:8:"location";a:2:{s:20:"check_wordcount_type";s:4:"less";s:10:"word_count";s:0:"";}s:3:"url";a:1:{s:4:"urls";s:0:"";}s:7:"general";a:1:{s:5:"notes";s:0:"";}}}', 'yes'),
(597, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:"title";s:12:"Helpful Info";s:8:"nav_menu";i:25;}i:3;a:2:{s:5:"title";s:7:"Produce";s:8:"nav_menu";i:35;}s:12:"_multiwidget";i:1;}', 'yes'),
(714, 'can_compress_scripts', '1', 'yes'),
(725, 'widget_wp_editor_widget', 'a:3:{i:2;a:3:{s:5:"title";s:13:"Trading Hours";s:7:"content";s:109:"<p style="text-align: center;">Mon - Fri: 6am to 6:30pm<br />Saturday: 6am to 5pm<br />Sunday: 6am to 4pm</p>";s:12:"output_title";i:1;}i:3;a:3:{s:5:"title";s:8:"Location";s:7:"content";s:318:"<p style="text-align: center;"><img src="http://mab.studio-culture.net/wp-content/uploads/2014/06/footer-logo.png" alt="" /></p><p style="text-align: center;"><span id="footer-address">241 Waterworks Road,<br /> Ashgrove, QLD, 4060</span></p><p style="text-align: center;"><a id="footer-map" href="#">View Map</a></p>";s:12:"output_title";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(816, 'ithemes-updater-keys', 'a:1:{s:11:"backupbuddy";s:16:"6gp712sl17kr45u2";}', 'yes'),
(917, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:6:{s:5:"title";s:18:"Product Categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";s:1:"1";s:18:"show_children_only";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(1087, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1099, 'widget_wc_category_accordion', 'a:2:{i:2;a:6:{s:17:"title,trwca_count";s:0:"";s:12:"exclude_tree";s:0:"";s:10:"hide_empty";i:0;s:5:"title";s:10:"Categories";s:11:"trwca_count";i:0;s:8:"ac_speed";s:3:"300";}s:12:"_multiwidget";i:1;}', 'yes'),
(1295, 'taxonomy_image_plugin', 'a:1:{i:27;i:147;}', 'yes'),
(1296, 'taxonomy_image_plugin_settings', 'a:1:{s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:11:"product_cat";}}', 'yes'),
(1321, 'product_cat_children', 'a:2:{i:16;a:2:{i:0;i:17;i:1;i:21;}i:18;a:2:{i:0;i:20;i:1;i:22;}}', 'yes'),
(1343, '_wc_session_e1f1619d7928ac896b2f36d114f9751e', 'a:20:{s:4:"cart";s:1923:"a:8:{s:32:"7cbbc409ec990f19c78c75bd1e06f215";a:8:{s:10:"product_id";i:70;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:3;s:10:"line_total";d:36;s:8:"line_tax";i:0;s:13:"line_subtotal";i:36;s:17:"line_subtotal_tax";i:0;}s:32:"a5bfc9e07964f8dddeb95fc584cd965d";a:8:{s:10:"product_id";i:37;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:2;s:10:"line_total";d:36;s:8:"line_tax";i:0;s:13:"line_subtotal";i:36;s:17:"line_subtotal_tax";i:0;}s:32:"7fc6801f20c8745be6e1329f4a3b40be";a:8:{s:10:"product_id";i:22;s:12:"variation_id";i:23;s:9:"variation";a:1:{s:18:"attribute_pa_color";s:5:"black";}s:8:"quantity";i:1;s:10:"line_total";d:20;s:8:"line_tax";i:0;s:13:"line_subtotal";i:20;s:17:"line_subtotal_tax";i:0;}s:32:"b6d767d2f8ed5d21a44b0e5886680cb9";a:8:{s:10:"product_id";i:22;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:2;s:10:"line_total";d:40;s:8:"line_tax";i:0;s:13:"line_subtotal";i:40;s:17:"line_subtotal_tax";i:0;}s:32:"d645920e395fedad7bbbed0eca3fe2e0";a:8:{s:10:"product_id";i:40;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:4;s:10:"line_total";d:120;s:8:"line_tax";i:0;s:13:"line_subtotal";i:120;s:17:"line_subtotal_tax";i:0;}s:32:"735b90b4568125ed6c3f678819b6e058";a:8:{s:10:"product_id";i:67;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:3;s:10:"line_total";d:45;s:8:"line_tax";i:0;s:13:"line_subtotal";i:45;s:17:"line_subtotal_tax";i:0;}s:32:"d1fe173d08e959397adf34b1d77e88d7";a:8:{s:10:"product_id";i:79;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:2;s:10:"line_total";d:30;s:8:"line_tax";i:0;s:13:"line_subtotal";i:30;s:17:"line_subtotal_tax";i:0;}s:32:"67c6a1e7ce56d3d6fa748ab6d9af3fd7";a:8:{s:10:"product_id";i:47;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:1;s:10:"line_total";d:35;s:8:"line_tax";i:0;s:13:"line_subtotal";i:35;s:17:"line_subtotal_tax";i:0;}}";s:15:"applied_coupons";s:6:"a:0:{}";s:10:"wc_notices";N;s:23:"chosen_shipping_methods";s:31:"a:1:{i:0;s:13:"free_shipping";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:19:"cart_contents_total";d:362;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:18;s:17:"cart_contents_tax";i:0;s:5:"total";i:0;s:8:"subtotal";i:362;s:15:"subtotal_ex_tax";i:362;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:14:"discount_total";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;}', 'no'),
(1344, '_wc_session_expires_e1f1619d7928ac896b2f36d114f9751e', '1403329417', 'no'),
(1437, '_wc_session_1', 'a:1:{s:4:"cart";s:6:"a:0:{}";}', 'no'),
(1438, '_wc_session_expires_1', '1403309563', 'no'),
(1446, 'rg_form_version', '1.8.8', 'yes'),
(1449, 'rg_gforms_key', '98727298ad19e654844773827619abe5', 'yes'),
(1450, 'rg_gforms_disable_css', '0', 'yes'),
(1451, 'rg_gforms_enable_html5', '0', 'yes'),
(1452, 'gform_enable_noconflict', '0', 'yes'),
(1453, 'rg_gforms_enable_akismet', '', 'yes'),
(1454, 'rg_gforms_captcha_public_key', '', 'yes'),
(1455, 'rg_gforms_captcha_private_key', '', 'yes'),
(1456, 'rg_gforms_currency', 'AUD', 'yes'),
(1457, 'rg_gforms_message', '<!--GFM-->', 'yes'),
(1461, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(1476, 'wpmdb_error_log', '********************************************\n******  Log date: 2014/06/06 02:54:27 ******\n********************************************\n\nWPMDB Error: WP_Error Object\n(\n    [errors] => Array\n        (\n            [http_request_failed] => Array\n                (\n                    [0] => Couldn\'t resolve host \'deliciousbrains.com\'\n                )\n\n        )\n\n    [error_data] => Array\n        (\n        )\n\n)\n\n\n********************************************\n******  Log date: 2014/06/06 02:54:27 ******\n********************************************\n\nWPMDB Error: Error trying to get upgrade data.\n\nArray\n(\n    [connection_failed] => <div class="updated warning inline-message"><strong>Could not connect to deliciousbrains.com</strong> &mdash; You will not receive update notifications or be able to activate your license until this is fixed. This issue is often caused by an improperly configured SSL server (https). We recommend <a href="https://deliciousbrains.com/wp-migrate-db-pro/documentation/#could-no-connect" target="_blank">fixing the SSL configuration on your server</a>, but if you need a quick fix you can:<p><a href="http://mab.studio-culture.net/wp-admin/tools.php?page=wp-migrate-db-pro&nonce=78c2a06d26&wpmdb-disable-ssl=1" class="temporarily-disable-ssl button">Temporarily disable SSL for connections to deliciousbrains.com</a></p></div>\n)\n\n\n', 'yes'),
(1477, 'wpmdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"aiDqOHtx3lTReydupo28lrjxu4pnG4cH";s:10:"allow_pull";b:1;s:10:"allow_push";b:1;s:8:"profiles";a:0:{}s:7:"licence";s:36:"4a0ccfbe-ddfb-44f5-8261-50c6562130c4";s:10:"verify_ssl";b:0;}', 'yes'),
(1478, 'rewrite_rules', 'a:146:{s:14:"^wc-api\\/v1/?$";s:24:"index.php?wc-api-route=/";s:16:"^wc-api\\/v1(.*)?";s:34:"index.php?wc-api-route=$matches[1]";s:14:"shop-online/?$";s:27:"index.php?post_type=product";s:44:"shop-online/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:39:"shop-online/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:31:"shop-online/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:44:"color/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pa_color=$matches[1]&feed=$matches[2]";s:39:"color/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pa_color=$matches[1]&feed=$matches[2]";s:32:"color/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pa_color=$matches[1]&paged=$matches[2]";s:14:"color/(.+?)/?$";s:30:"index.php?pa_color=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(1479, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=7";i:1;s:3:"p=8";i:2;s:3:"p=9";i:3;s:5:"/cart";i:4;s:9:"/checkout";i:5;s:11:"/my-account";}', 'yes'),
(1480, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:"stdClass":5:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";N;s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";}}', 'yes'),
(1481, '_transient_timeout_woocommerce_processing_order_count', '1434959522', 'no'),
(1482, '_transient_woocommerce_processing_order_count', '0', 'no'),
(1483, '_transient_doing_cron', '1403423522.2157220840454101562500', 'yes'),
(1484, '_site_transient_timeout_theme_roots', '1403425322', 'yes'),
(1485, '_site_transient_theme_roots', 'a:5:{s:26:"eddiemachado-bones-7ed86d5";s:7:"/themes";s:12:"meatatbillys";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(1486, '_site_transient_timeout_ithemes-updater-get_package_details', '1403423552', 'yes'),
(1487, '_site_transient_ithemes-updater-get_package_details', 'a:3:{s:4:"time";i:1403423522;s:3:"md5";s:5:"4ae46";s:3:"res";a:3:{s:8:"packages";a:1:{s:11:"backupbuddy";a:1:{s:5:"error";a:3:{s:4:"code";i:7001;s:4:"type";s:26:"ITXAPI_License_Key_Unknown";s:7:"message";s:45:"The requested license key could not be found.";}}}s:9:"time_skew";i:0;s:13:"min_poll_time";i:30;}}', 'yes'),
(1488, '_transient_random_seed', 'ef81e8a0d72d8dd104d9c0a1fc5b9f2d', 'yes') ;

#
# End of data contents of table `mab_options`
# --------------------------------------------------------



#
# Delete any existing table `mab_postmeta`
#

DROP TABLE IF EXISTS `mab_postmeta`;


#
# Table structure of table `mab_postmeta`
#

CREATE TABLE `mab_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1367 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_postmeta`
#
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-home.php'),
(8, 16, '_wp_attached_file', '2013/06/T_1_front.jpg'),
(9, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_1_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"T_1_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"T_1_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"T_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"T_1_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"T_1_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"T_1_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(10, 17, '_wp_attached_file', '2013/06/T_1_back.jpg'),
(11, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_1_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:20:"T_1_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:20:"T_1_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:20:"T_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:20:"T_1_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"T_1_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"T_1_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(12, 20, '_wp_attached_file', '2013/06/T_2_front.jpg'),
(13, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_2_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"T_2_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"T_2_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"T_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"T_2_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"T_2_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"T_2_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(14, 21, '_wp_attached_file', '2013/06/T_2_back.jpg'),
(15, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_2_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:20:"T_2_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:20:"T_2_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:20:"T_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:20:"T_2_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"T_2_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"T_2_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(16, 25, '_wp_attached_file', '2013/06/T_4_front.jpg'),
(17, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_4_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"T_4_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"T_4_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"T_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"T_4_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"T_4_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"T_4_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(18, 26, '_wp_attached_file', '2013/06/T_3_back.jpg'),
(19, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_3_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:20:"T_3_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:20:"T_3_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:20:"T_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:20:"T_3_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"T_3_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"T_3_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(20, 27, '_wp_attached_file', '2013/06/T_3_front.jpg'),
(21, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_3_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"T_3_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"T_3_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"T_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"T_3_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"T_3_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"T_3_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(22, 28, '_wp_attached_file', '2013/06/T_4_back.jpg'),
(23, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_4_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:20:"T_4_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:20:"T_4_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:20:"T_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:20:"T_4_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"T_4_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"T_4_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(24, 29, '_wp_attached_file', '2013/06/T_4_front1.jpg'),
(25, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/T_4_front1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"T_4_front1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"T_4_front1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:22:"T_4_front1-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:22:"T_4_front1-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:22:"T_4_front1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:22:"T_4_front1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_4_front1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"T_4_front1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"T_4_front1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"T_4_front1-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(26, 32, '_wp_attached_file', '2013/06/T_5_front.jpg'),
(27, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_5_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"T_5_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"T_5_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"T_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"T_5_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"T_5_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"T_5_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(28, 33, '_wp_attached_file', '2013/06/T_5_back.jpg'),
(29, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_5_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:20:"T_5_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:20:"T_5_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:20:"T_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:20:"T_5_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"T_5_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"T_5_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(30, 35, '_wp_attached_file', '2013/06/T_6_front.jpg'),
(31, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_6_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"T_6_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"T_6_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"T_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"T_6_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"T_6_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"T_6_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(32, 36, '_wp_attached_file', '2013/06/T_6_back.jpg'),
(33, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_6_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:20:"T_6_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:20:"T_6_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:20:"T_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:20:"T_6_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"T_6_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"T_6_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(34, 38, '_wp_attached_file', '2013/06/T_7_front.jpg'),
(35, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_7_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"T_7_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"T_7_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"T_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"T_7_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"T_7_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"T_7_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(36, 39, '_wp_attached_file', '2013/06/T_7_back.jpg'),
(37, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_7_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:20:"T_7_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:20:"T_7_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:20:"T_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:20:"T_7_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"T_7_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"T_7_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(38, 43, '_wp_attached_file', '2013/06/hoodie_7_front.jpg'),
(39, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_7_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:26:"hoodie_7_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:26:"hoodie_7_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:26:"hoodie_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:26:"hoodie_7_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hoodie_7_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"hoodie_7_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(40, 44, '_wp_attached_file', '2013/06/hoodie_7_back.jpg'),
(41, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_7_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"hoodie_7_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"hoodie_7_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"hoodie_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"hoodie_7_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hoodie_7_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"hoodie_7_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(42, 45, '_wp_attached_file', '2013/06/hoodie_1_back.jpg'),
(43, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_1_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"hoodie_1_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"hoodie_1_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"hoodie_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"hoodie_1_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hoodie_1_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"hoodie_1_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(44, 46, '_wp_attached_file', '2013/06/hoodie_1_front.jpg'),
(45, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_1_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:26:"hoodie_1_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:26:"hoodie_1_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:26:"hoodie_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:26:"hoodie_1_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hoodie_1_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"hoodie_1_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(46, 48, '_wp_attached_file', '2013/06/hoodie_2_front.jpg'),
(47, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_2_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:26:"hoodie_2_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:26:"hoodie_2_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:26:"hoodie_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:26:"hoodie_2_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hoodie_2_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"hoodie_2_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(48, 49, '_wp_attached_file', '2013/06/hoodie_2_back.jpg'),
(49, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_2_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"hoodie_2_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"hoodie_2_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"hoodie_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"hoodie_2_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hoodie_2_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"hoodie_2_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(50, 51, '_wp_attached_file', '2013/06/hoodie_3_front.jpg'),
(51, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_3_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:26:"hoodie_3_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:26:"hoodie_3_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:26:"hoodie_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:26:"hoodie_3_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hoodie_3_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"hoodie_3_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(52, 52, '_wp_attached_file', '2013/06/hoodie_3_back.jpg'),
(53, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_3_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"hoodie_3_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"hoodie_3_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"hoodie_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"hoodie_3_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hoodie_3_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"hoodie_3_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(54, 54, '_wp_attached_file', '2013/06/hoodie_4_front.jpg'),
(55, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_4_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:26:"hoodie_4_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:26:"hoodie_4_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:26:"hoodie_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:26:"hoodie_4_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hoodie_4_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"hoodie_4_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(56, 55, '_wp_attached_file', '2013/06/hoodie_4_back.jpg'),
(57, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_4_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"hoodie_4_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"hoodie_4_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"hoodie_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"hoodie_4_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hoodie_4_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"hoodie_4_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(58, 57, '_wp_attached_file', '2013/06/hoodie_5_front.jpg'),
(59, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_5_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:26:"hoodie_5_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:26:"hoodie_5_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:26:"hoodie_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:26:"hoodie_5_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hoodie_5_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"hoodie_5_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(60, 58, '_wp_attached_file', '2013/06/hoodie_5_back.jpg') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(61, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_5_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"hoodie_5_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"hoodie_5_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"hoodie_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"hoodie_5_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hoodie_5_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"hoodie_5_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(62, 61, '_wp_attached_file', '2013/06/hoodie_6_front.jpg'),
(63, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_6_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:26:"hoodie_6_front-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:26:"hoodie_6_front-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:26:"hoodie_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:26:"hoodie_6_front-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hoodie_6_front-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"hoodie_6_front-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(64, 62, '_wp_attached_file', '2013/06/hoodie_6_back.jpg'),
(65, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_6_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"hoodie_6_back-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"hoodie_6_back-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"hoodie_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"hoodie_6_back-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hoodie_6_back-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"hoodie_6_back-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(66, 68, '_wp_attached_file', '2013/06/poster_1_up.jpg'),
(67, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_1_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_1_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_1_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:23:"poster_1_up-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:23:"poster_1_up-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:23:"poster_1_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:23:"poster_1_up-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"poster_1_up-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_1_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_1_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"poster_1_up-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(68, 69, '_wp_attached_file', '2013/06/Poster_1_flat.jpg'),
(69, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_1_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"Poster_1_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"Poster_1_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"Poster_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"Poster_1_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Poster_1_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Poster_1_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(70, 71, '_wp_attached_file', '2013/06/poster_2_up.jpg'),
(71, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_2_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_2_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_2_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:23:"poster_2_up-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:23:"poster_2_up-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:23:"poster_2_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:23:"poster_2_up-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"poster_2_up-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_2_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_2_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"poster_2_up-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(72, 72, '_wp_attached_file', '2013/06/Poster_2_flat.jpg'),
(73, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_2_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"Poster_2_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"Poster_2_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"Poster_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"Poster_2_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Poster_2_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Poster_2_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(74, 74, '_wp_attached_file', '2013/06/poster_3_up.jpg'),
(75, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_3_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_3_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_3_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:23:"poster_3_up-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:23:"poster_3_up-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:23:"poster_3_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:23:"poster_3_up-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"poster_3_up-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_3_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_3_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"poster_3_up-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(76, 75, '_wp_attached_file', '2013/06/Poster_3_flat.jpg'),
(77, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_3_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"Poster_3_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"Poster_3_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"Poster_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"Poster_3_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Poster_3_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Poster_3_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(78, 77, '_wp_attached_file', '2013/06/poster_4_up.jpg'),
(79, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_4_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_4_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_4_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:23:"poster_4_up-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:23:"poster_4_up-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:23:"poster_4_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:23:"poster_4_up-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"poster_4_up-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_4_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_4_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"poster_4_up-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(80, 78, '_wp_attached_file', '2013/06/Poster_4_flat.jpg'),
(81, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_4_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"Poster_4_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"Poster_4_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"Poster_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"Poster_4_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Poster_4_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Poster_4_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(82, 80, '_wp_attached_file', '2013/06/poster_5_up.jpg'),
(83, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_5_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_5_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_5_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:23:"poster_5_up-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:23:"poster_5_up-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:23:"poster_5_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:23:"poster_5_up-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"poster_5_up-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_5_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_5_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"poster_5_up-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(84, 81, '_wp_attached_file', '2013/06/Poster_5_flat.jpg'),
(85, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_5_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:25:"Poster_5_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:25:"Poster_5_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:25:"Poster_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:25:"Poster_5_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Poster_5_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Poster_5_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(86, 84, '_wp_attached_file', '2013/06/cd_1_angle.jpg'),
(87, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_1_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_1_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_1_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:22:"cd_1_angle-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:22:"cd_1_angle-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:22:"cd_1_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:22:"cd_1_angle-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"cd_1_angle-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_1_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_1_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"cd_1_angle-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(88, 85, '_wp_attached_file', '2013/06/cd_1_flat.jpg'),
(89, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_1_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"cd_1_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"cd_1_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"cd_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"cd_1_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"cd_1_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cd_1_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(90, 88, '_wp_attached_file', '2013/06/cd_2_angle.jpg'),
(91, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_2_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_2_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_2_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:22:"cd_2_angle-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:22:"cd_2_angle-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:22:"cd_2_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:22:"cd_2_angle-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"cd_2_angle-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_2_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_2_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"cd_2_angle-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(92, 89, '_wp_attached_file', '2013/06/cd_2_flat.jpg'),
(93, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_2_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"cd_2_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"cd_2_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"cd_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"cd_2_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"cd_2_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cd_2_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(94, 91, '_wp_attached_file', '2013/06/cd_3_angle.jpg'),
(95, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_3_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_3_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_3_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:22:"cd_3_angle-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:22:"cd_3_angle-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:22:"cd_3_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:22:"cd_3_angle-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"cd_3_angle-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_3_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_3_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"cd_3_angle-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(96, 92, '_wp_attached_file', '2013/06/cd_3_flat.jpg'),
(97, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_3_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"cd_3_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"cd_3_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"cd_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"cd_3_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"cd_3_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cd_3_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(98, 94, '_wp_attached_file', '2013/06/cd_4_flat.jpg'),
(99, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_4_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"cd_4_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"cd_4_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"cd_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"cd_4_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"cd_4_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cd_4_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(100, 95, '_wp_attached_file', '2013/06/cd_4_angle.jpg'),
(101, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_4_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_4_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_4_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:22:"cd_4_angle-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:22:"cd_4_angle-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:22:"cd_4_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:22:"cd_4_angle-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"cd_4_angle-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_4_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_4_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"cd_4_angle-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(102, 97, '_wp_attached_file', '2013/06/cd_5_angle.jpg'),
(103, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_5_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_5_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_5_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:22:"cd_5_angle-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:22:"cd_5_angle-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:22:"cd_5_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:22:"cd_5_angle-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"cd_5_angle-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_5_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_5_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"cd_5_angle-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(104, 98, '_wp_attached_file', '2013/06/cd_5_flat.jpg'),
(105, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_5_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"cd_5_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"cd_5_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"cd_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"cd_5_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"cd_5_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cd_5_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(106, 100, '_wp_attached_file', '2013/06/cd_6_angle.jpg') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(107, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_6_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_6_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_6_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:22:"cd_6_angle-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:22:"cd_6_angle-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:22:"cd_6_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:22:"cd_6_angle-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"cd_6_angle-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_6_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_6_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"cd_6_angle-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(108, 101, '_wp_attached_file', '2013/06/cd_6_flat.jpg'),
(109, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_6_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_6_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_6_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:21:"cd_6_flat-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:21:"cd_6_flat-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:21:"cd_6_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:21:"cd_6_flat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"cd_6_flat-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_6_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_6_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cd_6_flat-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(110, 15, '_thumbnail_id', '16'),
(111, 15, '_visibility', 'visible'),
(112, 15, '_stock_status', 'instock'),
(113, 15, 'total_sales', '0'),
(114, 15, '_downloadable', 'no'),
(115, 15, '_virtual', 'no'),
(116, 15, '_product_image_gallery', '17'),
(117, 15, '_regular_price', '20'),
(118, 15, '_sale_price', '18'),
(119, 15, '_tax_status', ''),
(120, 15, '_tax_class', ''),
(121, 15, '_purchase_note', ''),
(122, 15, '_featured', 'no'),
(123, 15, '_weight', ''),
(124, 15, '_length', ''),
(125, 15, '_width', ''),
(126, 15, '_height', ''),
(127, 15, '_sku', ''),
(128, 15, '_product_attributes', 'a:0:{}'),
(129, 15, '_sale_price_dates_from', ''),
(130, 15, '_sale_price_dates_to', ''),
(131, 15, '_price', '18'),
(132, 15, '_sold_individually', ''),
(133, 15, '_stock', '5'),
(134, 15, '_backorders', 'no'),
(135, 15, '_manage_stock', 'yes'),
(136, 15, '_upsell_ids', 'a:1:{i:0;s:2:"60";}'),
(137, 19, '_thumbnail_id', '20'),
(138, 19, '_visibility', 'visible'),
(139, 19, '_stock_status', 'instock'),
(140, 19, 'total_sales', '0'),
(141, 19, '_downloadable', 'no'),
(142, 19, '_virtual', 'no'),
(143, 19, '_product_image_gallery', '21'),
(144, 19, '_regular_price', '20'),
(145, 19, '_sale_price', ''),
(146, 19, '_tax_status', ''),
(147, 19, '_tax_class', ''),
(148, 19, '_purchase_note', ''),
(149, 19, '_featured', 'no'),
(150, 19, '_weight', ''),
(151, 19, '_length', ''),
(152, 19, '_width', ''),
(153, 19, '_height', ''),
(154, 19, '_sku', ''),
(155, 19, '_product_attributes', 'a:0:{}'),
(156, 19, '_sale_price_dates_from', ''),
(157, 19, '_sale_price_dates_to', ''),
(158, 19, '_price', '20'),
(159, 19, '_sold_individually', ''),
(160, 19, '_stock', ''),
(161, 19, '_backorders', 'no'),
(162, 19, '_manage_stock', 'no'),
(163, 22, '_visibility', 'visible'),
(164, 22, '_stock_status', 'instock'),
(165, 22, 'total_sales', '0'),
(166, 22, '_downloadable', 'no'),
(167, 22, '_virtual', 'no'),
(168, 22, '_product_image_gallery', '26,27,28,29'),
(169, 22, '_regular_price', ''),
(170, 22, '_sale_price', ''),
(171, 22, '_tax_status', ''),
(172, 22, '_tax_class', ''),
(173, 22, '_purchase_note', ''),
(174, 22, '_featured', 'no'),
(175, 22, '_weight', ''),
(176, 22, '_length', ''),
(177, 22, '_width', ''),
(178, 22, '_height', ''),
(179, 22, '_sku', ''),
(180, 22, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(181, 22, '_sale_price_dates_from', ''),
(182, 22, '_sale_price_dates_to', ''),
(183, 22, '_price', '20'),
(184, 22, '_sold_individually', ''),
(185, 22, '_stock', ''),
(186, 22, '_backorders', 'no'),
(187, 22, '_manage_stock', 'no'),
(188, 22, '_thumbnail_id', '25'),
(189, 22, '_min_variation_price', '20'),
(190, 22, '_max_variation_price', '20'),
(191, 22, '_min_variation_regular_price', '20'),
(192, 22, '_max_variation_regular_price', '20'),
(193, 22, '_min_variation_sale_price', ''),
(194, 22, '_max_variation_sale_price', ''),
(195, 22, '_default_attributes', 'a:0:{}'),
(196, 22, '_wp_old_slug', 'share-your-idea'),
(197, 22, '_upsell_ids', 'a:1:{i:0;s:2:"40";}'),
(198, 31, '_thumbnail_id', '32'),
(199, 31, '_visibility', 'visible'),
(200, 31, '_stock_status', 'instock'),
(201, 31, 'total_sales', '0'),
(202, 31, '_downloadable', 'no'),
(203, 31, '_virtual', 'no'),
(204, 31, '_product_image_gallery', '33'),
(205, 31, '_regular_price', '20'),
(206, 31, '_sale_price', '') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(207, 31, '_tax_status', ''),
(208, 31, '_tax_class', ''),
(209, 31, '_purchase_note', ''),
(210, 31, '_featured', 'no'),
(211, 31, '_weight', ''),
(212, 31, '_length', ''),
(213, 31, '_width', ''),
(214, 31, '_height', ''),
(215, 31, '_sku', ''),
(216, 31, '_product_attributes', 'a:0:{}'),
(217, 31, '_sale_price_dates_from', ''),
(218, 31, '_sale_price_dates_to', ''),
(219, 31, '_price', '20'),
(220, 31, '_sold_individually', ''),
(221, 31, '_stock', ''),
(222, 31, '_backorders', 'no'),
(223, 31, '_manage_stock', 'no'),
(224, 31, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"37";}'),
(225, 31, '_upsell_ids', 'a:1:{i:0;s:2:"56";}'),
(226, 34, '_thumbnail_id', '35'),
(227, 34, '_visibility', 'visible'),
(228, 34, '_stock_status', 'instock'),
(229, 34, 'total_sales', '0'),
(230, 34, '_downloadable', 'no'),
(231, 34, '_virtual', 'no'),
(232, 34, '_product_image_gallery', '36'),
(233, 34, '_regular_price', '20'),
(234, 34, '_sale_price', ''),
(235, 34, '_tax_status', ''),
(236, 34, '_tax_class', ''),
(237, 34, '_purchase_note', ''),
(238, 34, '_featured', 'yes'),
(239, 34, '_weight', ''),
(240, 34, '_length', ''),
(241, 34, '_width', ''),
(242, 34, '_height', ''),
(243, 34, '_sku', ''),
(244, 34, '_product_attributes', 'a:0:{}'),
(245, 34, '_sale_price_dates_from', ''),
(246, 34, '_sale_price_dates_to', ''),
(247, 34, '_price', '20'),
(248, 34, '_sold_individually', ''),
(249, 34, '_stock', ''),
(250, 34, '_backorders', 'no'),
(251, 34, '_manage_stock', 'no'),
(252, 34, '_crosssell_ids', 'a:2:{i:0;s:2:"37";i:1;s:2:"31";}'),
(253, 34, '_upsell_ids', 'a:1:{i:0;s:2:"47";}'),
(254, 37, '_visibility', 'visible'),
(255, 37, '_stock_status', 'instock'),
(256, 37, 'total_sales', '0'),
(257, 37, '_downloadable', 'no'),
(258, 37, '_virtual', 'no'),
(259, 37, '_product_image_gallery', '39'),
(260, 37, '_regular_price', '18'),
(261, 37, '_sale_price', ''),
(262, 37, '_tax_status', ''),
(263, 37, '_tax_class', ''),
(264, 37, '_purchase_note', ''),
(265, 37, '_featured', 'no'),
(266, 37, '_weight', ''),
(267, 37, '_length', ''),
(268, 37, '_width', ''),
(269, 37, '_height', ''),
(270, 37, '_sku', ''),
(271, 37, '_product_attributes', 'a:0:{}'),
(272, 37, '_sale_price_dates_from', ''),
(273, 37, '_sale_price_dates_to', ''),
(274, 37, '_price', '18'),
(275, 37, '_sold_individually', ''),
(276, 37, '_stock', ''),
(277, 37, '_backorders', 'no'),
(278, 37, '_manage_stock', 'no'),
(279, 37, '_thumbnail_id', '38'),
(280, 37, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"31";}'),
(281, 37, '_upsell_ids', 'a:1:{i:0;s:2:"53";}'),
(282, 40, '_visibility', 'visible'),
(283, 40, '_stock_status', 'instock'),
(284, 40, 'total_sales', '0'),
(285, 40, '_downloadable', 'no'),
(286, 40, '_virtual', 'no'),
(287, 40, '_product_image_gallery', '44,45,46'),
(288, 40, '_regular_price', ''),
(289, 40, '_sale_price', ''),
(290, 40, '_tax_status', ''),
(291, 40, '_tax_class', ''),
(292, 40, '_purchase_note', ''),
(293, 40, '_featured', 'yes'),
(294, 40, '_weight', ''),
(295, 40, '_length', ''),
(296, 40, '_width', ''),
(297, 40, '_height', ''),
(298, 40, '_sku', ''),
(299, 40, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(300, 40, '_sale_price_dates_from', ''),
(301, 40, '_sale_price_dates_to', ''),
(302, 40, '_price', '30'),
(303, 40, '_sold_individually', ''),
(304, 40, '_stock', ''),
(305, 40, '_backorders', 'no'),
(306, 40, '_manage_stock', 'no') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(307, 40, '_min_variation_price', '30'),
(308, 40, '_max_variation_price', '35'),
(309, 40, '_min_variation_regular_price', '35'),
(310, 40, '_max_variation_regular_price', '35'),
(311, 40, '_min_variation_sale_price', '30'),
(312, 40, '_max_variation_sale_price', '30'),
(313, 40, '_default_attributes', 'a:1:{s:8:"pa_color";s:5:"black";}'),
(314, 40, '_thumbnail_id', '43'),
(315, 40, '_crosssell_ids', 'a:1:{i:0;s:2:"22";}'),
(316, 47, '_visibility', 'visible'),
(317, 47, '_stock_status', 'instock'),
(318, 47, 'total_sales', '0'),
(319, 47, '_downloadable', 'no'),
(320, 47, '_virtual', 'no'),
(321, 47, '_product_image_gallery', '49'),
(322, 47, '_regular_price', '35'),
(323, 47, '_sale_price', ''),
(324, 47, '_tax_status', ''),
(325, 47, '_tax_class', ''),
(326, 47, '_purchase_note', ''),
(327, 47, '_featured', 'yes'),
(328, 47, '_weight', ''),
(329, 47, '_length', ''),
(330, 47, '_width', ''),
(331, 47, '_height', ''),
(332, 47, '_sku', ''),
(333, 47, '_product_attributes', 'a:0:{}'),
(334, 47, '_sale_price_dates_from', ''),
(335, 47, '_sale_price_dates_to', ''),
(336, 47, '_price', '35'),
(337, 47, '_sold_individually', ''),
(338, 47, '_stock', ''),
(339, 47, '_backorders', 'no'),
(340, 47, '_manage_stock', 'no'),
(341, 47, '_thumbnail_id', '48'),
(342, 47, '_crosssell_ids', 'a:1:{i:0;s:2:"34";}'),
(343, 50, '_visibility', 'visible'),
(344, 50, '_stock_status', 'instock'),
(345, 50, 'total_sales', '0'),
(346, 50, '_downloadable', 'no'),
(347, 50, '_virtual', 'no'),
(348, 50, '_product_image_gallery', '52'),
(349, 50, '_regular_price', '35'),
(350, 50, '_sale_price', ''),
(351, 50, '_tax_status', ''),
(352, 50, '_tax_class', ''),
(353, 50, '_purchase_note', ''),
(354, 50, '_featured', 'no'),
(355, 50, '_weight', ''),
(356, 50, '_length', ''),
(357, 50, '_width', ''),
(358, 50, '_height', ''),
(359, 50, '_sku', ''),
(360, 50, '_product_attributes', 'a:0:{}'),
(361, 50, '_sale_price_dates_from', ''),
(362, 50, '_sale_price_dates_to', ''),
(363, 50, '_price', '35'),
(364, 50, '_sold_individually', ''),
(365, 50, '_stock', ''),
(366, 50, '_backorders', 'no'),
(367, 50, '_manage_stock', 'no'),
(368, 50, '_thumbnail_id', '51'),
(369, 50, '_crosssell_ids', 'a:1:{i:0;s:2:"53";}'),
(370, 53, '_thumbnail_id', '54'),
(371, 53, '_visibility', 'visible'),
(372, 53, '_stock_status', 'instock'),
(373, 53, 'total_sales', '0'),
(374, 53, '_downloadable', 'no'),
(375, 53, '_virtual', 'no'),
(376, 53, '_product_image_gallery', '55'),
(377, 53, '_regular_price', '35'),
(378, 53, '_sale_price', ''),
(379, 53, '_tax_status', ''),
(380, 53, '_tax_class', ''),
(381, 53, '_purchase_note', ''),
(382, 53, '_featured', 'yes'),
(383, 53, '_weight', ''),
(384, 53, '_length', ''),
(385, 53, '_width', ''),
(386, 53, '_height', ''),
(387, 53, '_sku', ''),
(388, 53, '_product_attributes', 'a:0:{}'),
(389, 53, '_sale_price_dates_from', ''),
(390, 53, '_sale_price_dates_to', ''),
(391, 53, '_price', '35'),
(392, 53, '_sold_individually', ''),
(393, 53, '_stock', ''),
(394, 53, '_backorders', 'no'),
(395, 53, '_manage_stock', 'no'),
(396, 53, '_crosssell_ids', 'a:1:{i:0;s:2:"37";}'),
(397, 56, '_visibility', 'visible'),
(398, 56, '_stock_status', 'instock'),
(399, 56, 'total_sales', '0'),
(400, 56, '_downloadable', 'no'),
(401, 56, '_virtual', 'no'),
(402, 56, '_product_image_gallery', '58'),
(403, 56, '_regular_price', '35'),
(404, 56, '_sale_price', ''),
(405, 56, '_tax_status', ''),
(406, 56, '_tax_class', '') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(407, 56, '_purchase_note', ''),
(408, 56, '_featured', 'no'),
(409, 56, '_weight', ''),
(410, 56, '_length', ''),
(411, 56, '_width', ''),
(412, 56, '_height', ''),
(413, 56, '_sku', ''),
(414, 56, '_product_attributes', 'a:0:{}'),
(415, 56, '_sale_price_dates_from', ''),
(416, 56, '_sale_price_dates_to', ''),
(417, 56, '_price', '35'),
(418, 56, '_sold_individually', ''),
(419, 56, '_stock', ''),
(420, 56, '_backorders', 'no'),
(421, 56, '_manage_stock', 'no'),
(422, 56, '_thumbnail_id', '57'),
(423, 56, '_crosssell_ids', 'a:1:{i:0;s:2:"31";}'),
(424, 60, '_thumbnail_id', '61'),
(425, 60, '_visibility', 'visible'),
(426, 60, '_stock_status', 'instock'),
(427, 60, 'total_sales', '0'),
(428, 60, '_downloadable', 'no'),
(429, 60, '_virtual', 'no'),
(430, 60, '_product_image_gallery', '62'),
(431, 60, '_regular_price', '35'),
(432, 60, '_sale_price', ''),
(433, 60, '_tax_status', ''),
(434, 60, '_tax_class', ''),
(435, 60, '_purchase_note', ''),
(436, 60, '_featured', 'yes'),
(437, 60, '_weight', ''),
(438, 60, '_length', ''),
(439, 60, '_width', ''),
(440, 60, '_height', ''),
(441, 60, '_sku', ''),
(442, 60, '_product_attributes', 'a:0:{}'),
(443, 60, '_sale_price_dates_from', ''),
(444, 60, '_sale_price_dates_to', ''),
(445, 60, '_price', '35'),
(446, 60, '_sold_individually', ''),
(447, 60, '_stock', ''),
(448, 60, '_backorders', 'no'),
(449, 60, '_manage_stock', 'no'),
(450, 60, '_crosssell_ids', 'a:1:{i:0;s:2:"15";}'),
(451, 67, '_visibility', 'visible'),
(452, 67, '_stock_status', 'instock'),
(453, 67, 'total_sales', '0'),
(454, 67, '_downloadable', 'no'),
(455, 67, '_virtual', 'no'),
(456, 67, '_product_image_gallery', '69'),
(457, 67, '_regular_price', '15'),
(458, 67, '_sale_price', ''),
(459, 67, '_tax_status', ''),
(460, 67, '_tax_class', ''),
(461, 67, '_purchase_note', ''),
(462, 67, '_featured', 'yes'),
(463, 67, '_weight', ''),
(464, 67, '_length', ''),
(465, 67, '_width', ''),
(466, 67, '_height', ''),
(467, 67, '_sku', ''),
(468, 67, '_product_attributes', 'a:0:{}'),
(469, 67, '_sale_price_dates_from', ''),
(470, 67, '_sale_price_dates_to', ''),
(471, 67, '_price', '15'),
(472, 67, '_sold_individually', ''),
(473, 67, '_stock', ''),
(474, 67, '_backorders', 'no'),
(475, 67, '_manage_stock', 'no'),
(476, 67, '_thumbnail_id', '68'),
(477, 67, '_upsell_ids', 'a:2:{i:0;s:2:"22";i:1;s:2:"40";}'),
(478, 67, '_crosssell_ids', 'a:2:{i:0;s:2:"22";i:1;s:2:"40";}'),
(479, 70, '_visibility', 'visible'),
(480, 70, '_stock_status', 'instock'),
(481, 70, 'total_sales', '0'),
(482, 70, '_downloadable', 'no'),
(483, 70, '_virtual', 'no'),
(484, 70, '_product_image_gallery', '72'),
(485, 70, '_regular_price', '15'),
(486, 70, '_sale_price', '12'),
(487, 70, '_tax_status', ''),
(488, 70, '_tax_class', ''),
(489, 70, '_purchase_note', ''),
(490, 70, '_featured', 'no'),
(491, 70, '_weight', ''),
(492, 70, '_length', ''),
(493, 70, '_width', ''),
(494, 70, '_height', ''),
(495, 70, '_sku', ''),
(496, 70, '_product_attributes', 'a:0:{}'),
(497, 70, '_sale_price_dates_from', ''),
(498, 70, '_sale_price_dates_to', ''),
(499, 70, '_price', '12'),
(500, 70, '_sold_individually', ''),
(501, 70, '_stock', ''),
(502, 70, '_backorders', 'no'),
(503, 70, '_manage_stock', 'no'),
(504, 70, '_thumbnail_id', '71'),
(505, 73, '_visibility', 'visible'),
(506, 73, '_stock_status', 'instock') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(507, 73, 'total_sales', '0'),
(508, 73, '_downloadable', 'no'),
(509, 73, '_virtual', 'no'),
(510, 73, '_product_image_gallery', '75'),
(511, 73, '_regular_price', '15'),
(512, 73, '_sale_price', '12'),
(513, 73, '_tax_status', ''),
(514, 73, '_tax_class', ''),
(515, 73, '_purchase_note', ''),
(516, 73, '_featured', 'no'),
(517, 73, '_weight', ''),
(518, 73, '_length', ''),
(519, 73, '_width', ''),
(520, 73, '_height', ''),
(521, 73, '_sku', ''),
(522, 73, '_product_attributes', 'a:0:{}'),
(523, 73, '_sale_price_dates_from', ''),
(524, 73, '_sale_price_dates_to', ''),
(525, 73, '_price', '12'),
(526, 73, '_sold_individually', ''),
(527, 73, '_stock', ''),
(528, 73, '_backorders', 'no'),
(529, 73, '_manage_stock', 'no'),
(530, 73, '_upsell_ids', 'a:1:{i:0;s:2:"19";}'),
(531, 73, '_thumbnail_id', '74'),
(532, 76, '_thumbnail_id', '77'),
(533, 76, '_visibility', 'visible'),
(534, 76, '_stock_status', 'instock'),
(535, 76, 'total_sales', '0'),
(536, 76, '_downloadable', 'no'),
(537, 76, '_virtual', 'no'),
(538, 76, '_product_image_gallery', '78'),
(539, 76, '_regular_price', '15'),
(540, 76, '_sale_price', ''),
(541, 76, '_tax_status', ''),
(542, 76, '_tax_class', ''),
(543, 76, '_purchase_note', ''),
(544, 76, '_featured', 'no'),
(545, 76, '_weight', ''),
(546, 76, '_length', ''),
(547, 76, '_width', ''),
(548, 76, '_height', ''),
(549, 76, '_sku', ''),
(550, 76, '_product_attributes', 'a:0:{}'),
(551, 76, '_sale_price_dates_from', ''),
(552, 76, '_sale_price_dates_to', ''),
(553, 76, '_price', '15'),
(554, 76, '_sold_individually', ''),
(555, 76, '_stock', ''),
(556, 76, '_backorders', 'no'),
(557, 76, '_manage_stock', 'no'),
(558, 76, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"47";}'),
(559, 23, '_sku', ''),
(560, 23, '_weight', ''),
(561, 23, '_length', ''),
(562, 23, '_width', ''),
(563, 23, '_height', ''),
(564, 23, '_stock', ''),
(565, 23, '_thumbnail_id', '29'),
(566, 23, '_virtual', 'no'),
(567, 23, '_downloadable', 'no'),
(568, 23, '_regular_price', '20'),
(569, 23, '_sale_price', ''),
(570, 23, '_sale_price_dates_from', ''),
(571, 23, '_sale_price_dates_to', ''),
(572, 23, '_price', '20'),
(573, 23, '_tax_class', ''),
(574, 23, '_download_limit', ''),
(575, 23, '_download_expiry', ''),
(576, 23, '_file_paths', ''),
(577, 23, 'attribute_pa_color', 'black'),
(578, 24, '_sku', ''),
(579, 24, '_weight', ''),
(580, 24, '_length', ''),
(581, 24, '_width', ''),
(582, 24, '_height', ''),
(583, 24, '_stock', ''),
(584, 24, '_thumbnail_id', '27'),
(585, 24, '_virtual', 'no'),
(586, 24, '_downloadable', 'no'),
(587, 24, '_regular_price', '20'),
(588, 24, '_sale_price', ''),
(589, 24, '_sale_price_dates_from', ''),
(590, 24, '_sale_price_dates_to', ''),
(591, 24, '_price', '20'),
(592, 24, '_tax_class', ''),
(593, 24, '_download_limit', ''),
(594, 24, '_download_expiry', ''),
(595, 24, '_file_paths', ''),
(596, 24, 'attribute_pa_color', 'green'),
(597, 41, '_sku', ''),
(598, 41, '_weight', ''),
(599, 41, '_length', ''),
(600, 41, '_width', ''),
(601, 41, '_height', ''),
(602, 41, '_stock', ''),
(603, 41, '_thumbnail_id', '43'),
(604, 41, '_virtual', 'no'),
(605, 41, '_downloadable', 'no'),
(606, 41, '_regular_price', '35') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(607, 41, '_sale_price', ''),
(608, 41, '_sale_price_dates_from', ''),
(609, 41, '_sale_price_dates_to', ''),
(610, 41, '_price', '35'),
(611, 41, '_tax_class', ''),
(612, 41, '_download_limit', ''),
(613, 41, '_download_expiry', ''),
(614, 41, '_file_paths', ''),
(615, 41, 'attribute_pa_color', 'black'),
(616, 42, '_sku', ''),
(617, 42, '_weight', ''),
(618, 42, '_length', ''),
(619, 42, '_width', ''),
(620, 42, '_height', ''),
(621, 42, '_stock', ''),
(622, 42, '_thumbnail_id', '46'),
(623, 42, '_virtual', 'no'),
(624, 42, '_downloadable', 'no'),
(625, 42, '_regular_price', '35'),
(626, 42, '_sale_price', '30'),
(627, 42, '_sale_price_dates_from', ''),
(628, 42, '_sale_price_dates_to', ''),
(629, 42, '_price', '30'),
(630, 42, '_tax_class', ''),
(631, 42, '_download_limit', ''),
(632, 42, '_download_expiry', ''),
(633, 42, '_file_paths', ''),
(634, 42, 'attribute_pa_color', 'blue'),
(635, 79, '_thumbnail_id', '80'),
(636, 79, '_visibility', 'visible'),
(637, 79, '_stock_status', 'instock'),
(638, 79, 'total_sales', '0'),
(639, 79, '_downloadable', 'no'),
(640, 79, '_virtual', 'no'),
(641, 79, '_product_image_gallery', '81'),
(642, 79, '_regular_price', '15'),
(643, 79, '_sale_price', ''),
(644, 79, '_tax_status', ''),
(645, 79, '_tax_class', ''),
(646, 79, '_purchase_note', ''),
(647, 79, '_featured', 'yes'),
(648, 79, '_weight', ''),
(649, 79, '_length', ''),
(650, 79, '_width', ''),
(651, 79, '_height', ''),
(652, 79, '_sku', ''),
(653, 79, '_product_attributes', 'a:0:{}'),
(654, 79, '_sale_price_dates_from', ''),
(655, 79, '_sale_price_dates_to', ''),
(656, 79, '_price', '15'),
(657, 79, '_sold_individually', ''),
(658, 79, '_stock', ''),
(659, 79, '_backorders', 'no'),
(660, 79, '_manage_stock', 'no'),
(661, 79, '_crosssell_ids', 'a:2:{i:0;s:2:"15";i:1;s:2:"60";}'),
(662, 83, '_thumbnail_id', '84'),
(663, 83, '_visibility', 'visible'),
(664, 83, '_stock_status', 'instock'),
(665, 83, 'total_sales', '0'),
(666, 83, '_downloadable', 'yes'),
(667, 83, '_virtual', 'no'),
(668, 83, '_product_image_gallery', '85'),
(669, 83, '_regular_price', '9'),
(670, 83, '_sale_price', ''),
(671, 83, '_tax_status', ''),
(672, 83, '_tax_class', ''),
(673, 83, '_purchase_note', ''),
(674, 83, '_featured', 'no'),
(675, 83, '_weight', ''),
(676, 83, '_length', ''),
(677, 83, '_width', ''),
(678, 83, '_height', ''),
(679, 83, '_sku', ''),
(680, 83, '_product_attributes', 'a:0:{}'),
(681, 83, '_sale_price_dates_from', ''),
(682, 83, '_sale_price_dates_to', ''),
(683, 83, '_price', '9'),
(684, 83, '_sold_individually', ''),
(685, 83, '_stock', ''),
(686, 83, '_backorders', 'no'),
(687, 83, '_manage_stock', 'no'),
(688, 83, '_file_paths', 'a:0:{}'),
(689, 83, '_download_limit', ''),
(690, 83, '_download_expiry', ''),
(691, 87, '_thumbnail_id', '88'),
(692, 87, '_visibility', 'visible'),
(693, 87, '_stock_status', 'instock'),
(694, 87, 'total_sales', '0'),
(695, 87, '_downloadable', 'yes'),
(696, 87, '_virtual', 'no'),
(697, 87, '_product_image_gallery', '89'),
(698, 87, '_regular_price', '9'),
(699, 87, '_sale_price', ''),
(700, 87, '_tax_status', ''),
(701, 87, '_tax_class', ''),
(702, 87, '_purchase_note', ''),
(703, 87, '_featured', 'yes'),
(704, 87, '_weight', ''),
(705, 87, '_length', ''),
(706, 87, '_width', '') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(707, 87, '_height', ''),
(708, 87, '_sku', ''),
(709, 87, '_product_attributes', 'a:0:{}'),
(710, 87, '_sale_price_dates_from', ''),
(711, 87, '_sale_price_dates_to', ''),
(712, 87, '_price', '9'),
(713, 87, '_sold_individually', ''),
(714, 87, '_stock', ''),
(715, 87, '_backorders', 'no'),
(716, 87, '_manage_stock', 'no'),
(717, 87, '_file_paths', 'a:0:{}'),
(718, 87, '_download_limit', ''),
(719, 87, '_download_expiry', ''),
(720, 90, '_thumbnail_id', '91'),
(721, 90, '_visibility', 'visible'),
(722, 90, '_stock_status', 'instock'),
(723, 90, 'total_sales', '0'),
(724, 90, '_downloadable', 'yes'),
(725, 90, '_virtual', 'no'),
(726, 90, '_product_image_gallery', '92'),
(727, 90, '_regular_price', '9'),
(728, 90, '_sale_price', ''),
(729, 90, '_tax_status', ''),
(730, 90, '_tax_class', ''),
(731, 90, '_purchase_note', ''),
(732, 90, '_featured', 'no'),
(733, 90, '_weight', ''),
(734, 90, '_length', ''),
(735, 90, '_width', ''),
(736, 90, '_height', ''),
(737, 90, '_sku', ''),
(738, 90, '_product_attributes', 'a:0:{}'),
(739, 90, '_sale_price_dates_from', ''),
(740, 90, '_sale_price_dates_to', ''),
(741, 90, '_price', '9'),
(742, 90, '_sold_individually', ''),
(743, 90, '_stock', ''),
(744, 90, '_backorders', 'no'),
(745, 90, '_manage_stock', 'no'),
(746, 90, '_file_paths', 'a:0:{}'),
(747, 90, '_download_limit', ''),
(748, 90, '_download_expiry', ''),
(749, 93, '_thumbnail_id', '95'),
(750, 93, '_visibility', 'visible'),
(751, 93, '_stock_status', 'instock'),
(752, 93, 'total_sales', '0'),
(753, 93, '_downloadable', 'yes'),
(754, 93, '_virtual', 'no'),
(755, 93, '_product_image_gallery', '94'),
(756, 93, '_regular_price', '3'),
(757, 93, '_sale_price', ''),
(758, 93, '_tax_status', ''),
(759, 93, '_tax_class', ''),
(760, 93, '_purchase_note', ''),
(761, 93, '_featured', 'no'),
(762, 93, '_weight', ''),
(763, 93, '_length', ''),
(764, 93, '_width', ''),
(765, 93, '_height', ''),
(766, 93, '_sku', ''),
(767, 93, '_product_attributes', 'a:0:{}'),
(768, 93, '_sale_price_dates_from', ''),
(769, 93, '_sale_price_dates_to', ''),
(770, 93, '_price', '3'),
(771, 93, '_sold_individually', ''),
(772, 93, '_stock', ''),
(773, 93, '_backorders', 'no'),
(774, 93, '_manage_stock', 'no'),
(775, 93, '_file_paths', 'a:0:{}'),
(776, 93, '_download_limit', ''),
(777, 93, '_download_expiry', ''),
(778, 96, '_thumbnail_id', '97'),
(779, 96, '_visibility', 'visible'),
(780, 96, '_stock_status', 'instock'),
(781, 96, 'total_sales', '0'),
(782, 96, '_downloadable', 'yes'),
(783, 96, '_virtual', 'no'),
(784, 96, '_product_image_gallery', '98'),
(785, 96, '_regular_price', '9'),
(786, 96, '_sale_price', ''),
(787, 96, '_tax_status', ''),
(788, 96, '_tax_class', ''),
(789, 96, '_purchase_note', ''),
(790, 96, '_featured', 'no'),
(791, 96, '_weight', ''),
(792, 96, '_length', ''),
(793, 96, '_width', ''),
(794, 96, '_height', ''),
(795, 96, '_sku', ''),
(796, 96, '_product_attributes', 'a:0:{}'),
(797, 96, '_sale_price_dates_from', ''),
(798, 96, '_sale_price_dates_to', ''),
(799, 96, '_price', '9'),
(800, 96, '_sold_individually', ''),
(801, 96, '_stock', ''),
(802, 96, '_backorders', 'no'),
(803, 96, '_manage_stock', 'no'),
(804, 96, '_file_paths', 'a:0:{}'),
(805, 96, '_download_limit', ''),
(806, 96, '_download_expiry', '') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(807, 99, '_thumbnail_id', '100'),
(808, 99, '_visibility', 'visible'),
(809, 99, '_stock_status', 'instock'),
(810, 99, 'total_sales', '0'),
(811, 99, '_downloadable', 'no'),
(812, 99, '_virtual', 'no'),
(813, 99, '_product_image_gallery', '101'),
(814, 99, '_regular_price', '3'),
(815, 99, '_sale_price', '2'),
(816, 99, '_tax_status', ''),
(817, 99, '_tax_class', ''),
(818, 99, '_purchase_note', ''),
(819, 99, '_featured', 'yes'),
(820, 99, '_weight', ''),
(821, 99, '_length', ''),
(822, 99, '_width', ''),
(823, 99, '_height', ''),
(824, 99, '_sku', ''),
(825, 99, '_product_attributes', 'a:0:{}'),
(826, 99, '_sale_price_dates_from', ''),
(827, 99, '_sale_price_dates_to', ''),
(828, 99, '_price', '2'),
(829, 99, '_sold_individually', ''),
(830, 99, '_stock', ''),
(831, 99, '_backorders', 'no'),
(832, 99, '_manage_stock', 'no'),
(833, 22, '_min_price_variation_id', '24'),
(834, 22, '_max_price_variation_id', '24'),
(835, 40, '_min_price_variation_id', '42'),
(836, 40, '_max_price_variation_id', '41'),
(837, 2, '_edit_last', '1'),
(838, 2, '_edit_lock', '1402056489:1'),
(841, 105, '_wp_attached_file', '2014/06/slider-v1-1.jpg'),
(842, 106, '_wp_attached_file', '2014/06/slider-v1-11.jpg'),
(843, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1220;s:6:"height";i:500;s:4:"file";s:24:"2014/06/slider-v1-11.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"slider-v1-11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"slider-v1-11-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"slider-v1-11-1024x419.jpg";s:5:"width";i:1024;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:24:"slider-v1-11-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:24:"slider-v1-11-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:24:"slider-v1-11-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:24:"slider-v1-11-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"slider-v1-11-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"slider-v1-11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"slider-v1-11-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"slider-v1-11-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(844, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1220;s:6:"height";i:500;s:4:"file";s:23:"2014/06/slider-v1-1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"slider-v1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"slider-v1-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"slider-v1-1-1024x419.jpg";s:5:"width";i:1024;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-600";a:4:{s:4:"file";s:23:"slider-v1-1-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"meatatbillys-thumb-300";a:4:{s:4:"file";s:23:"slider-v1-1-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:24:"meatatbillys-feature-img";a:4:{s:4:"file";s:23:"slider-v1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"meatatbillys-supplier";a:4:{s:4:"file";s:23:"slider-v1-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"slider-v1-1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"slider-v1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"slider-v1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"slider-v1-1-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(845, 107, '_menu_item_type', 'post_type'),
(846, 107, '_menu_item_menu_item_parent', '0'),
(847, 107, '_menu_item_object_id', '2'),
(848, 107, '_menu_item_object', 'page'),
(849, 107, '_menu_item_target', ''),
(850, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(851, 107, '_menu_item_xfn', ''),
(852, 107, '_menu_item_url', ''),
(872, 110, '_menu_item_type', 'post_type'),
(873, 110, '_menu_item_menu_item_parent', '0'),
(874, 110, '_menu_item_object_id', '2'),
(875, 110, '_menu_item_object', 'page'),
(876, 110, '_menu_item_target', ''),
(877, 110, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(878, 110, '_menu_item_xfn', ''),
(879, 110, '_menu_item_url', ''),
(880, 110, '_menu_item_orphaned', '1402025916'),
(890, 112, '_menu_item_type', 'post_type'),
(891, 112, '_menu_item_menu_item_parent', '0'),
(892, 112, '_menu_item_object_id', '6'),
(893, 112, '_menu_item_object', 'page'),
(894, 112, '_menu_item_target', ''),
(895, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(896, 112, '_menu_item_xfn', ''),
(897, 112, '_menu_item_url', ''),
(899, 6, '_edit_lock', '1402025819:1'),
(900, 6, '_edit_last', '1'),
(901, 6, '_wp_page_template', 'default'),
(902, 114, '_edit_last', '1'),
(903, 114, '_wp_page_template', 'page-products.php'),
(904, 114, '_edit_lock', '1402646924:1'),
(905, 116, '_edit_last', '1'),
(906, 116, '_wp_page_template', 'default'),
(907, 116, '_edit_lock', '1402025852:1'),
(908, 118, '_edit_last', '1'),
(909, 118, '_wp_page_template', 'default'),
(910, 118, '_edit_lock', '1402025861:1'),
(911, 120, '_edit_last', '1'),
(912, 120, '_wp_page_template', 'default'),
(913, 120, '_edit_lock', '1402025875:1'),
(914, 122, '_edit_last', '1'),
(915, 122, '_wp_page_template', 'default'),
(916, 122, '_edit_lock', '1403137282:1'),
(917, 124, '_edit_last', '1'),
(918, 124, '_wp_page_template', 'default'),
(919, 124, '_edit_lock', '1402025899:1'),
(920, 126, '_menu_item_type', 'post_type'),
(921, 126, '_menu_item_menu_item_parent', '0'),
(922, 126, '_menu_item_object_id', '118'),
(923, 126, '_menu_item_object', 'page'),
(924, 126, '_menu_item_target', ''),
(925, 126, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(926, 126, '_menu_item_xfn', ''),
(927, 126, '_menu_item_url', ''),
(929, 127, '_menu_item_type', 'post_type'),
(930, 127, '_menu_item_menu_item_parent', '0'),
(931, 127, '_menu_item_object_id', '116'),
(932, 127, '_menu_item_object', 'page'),
(933, 127, '_menu_item_target', ''),
(934, 127, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(935, 127, '_menu_item_xfn', ''),
(936, 127, '_menu_item_url', ''),
(938, 128, '_menu_item_type', 'post_type'),
(939, 128, '_menu_item_menu_item_parent', '0') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(940, 128, '_menu_item_object_id', '114'),
(941, 128, '_menu_item_object', 'page'),
(942, 128, '_menu_item_target', ''),
(943, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(944, 128, '_menu_item_xfn', ''),
(945, 128, '_menu_item_url', ''),
(947, 40, '_min_regular_price_variation_id', '42'),
(948, 40, '_max_regular_price_variation_id', '42'),
(949, 40, '_min_sale_price_variation_id', '42'),
(950, 40, '_max_sale_price_variation_id', '42'),
(951, 130, '_menu_item_type', 'post_type'),
(952, 130, '_menu_item_menu_item_parent', '0'),
(953, 130, '_menu_item_object_id', '120'),
(954, 130, '_menu_item_object', 'page'),
(955, 130, '_menu_item_target', ''),
(956, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(957, 130, '_menu_item_xfn', ''),
(958, 130, '_menu_item_url', ''),
(960, 131, '_menu_item_type', 'post_type'),
(961, 131, '_menu_item_menu_item_parent', '0'),
(962, 131, '_menu_item_object_id', '124'),
(963, 131, '_menu_item_object', 'page'),
(964, 131, '_menu_item_target', ''),
(965, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(966, 131, '_menu_item_xfn', ''),
(967, 131, '_menu_item_url', ''),
(969, 132, '_menu_item_type', 'post_type'),
(970, 132, '_menu_item_menu_item_parent', '0'),
(971, 132, '_menu_item_object_id', '122'),
(972, 132, '_menu_item_object', 'page'),
(973, 132, '_menu_item_target', ''),
(974, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(975, 132, '_menu_item_xfn', ''),
(976, 132, '_menu_item_url', ''),
(978, 133, '_menu_item_type', 'post_type'),
(979, 133, '_menu_item_menu_item_parent', '0'),
(980, 133, '_menu_item_object_id', '122'),
(981, 133, '_menu_item_object', 'page'),
(982, 133, '_menu_item_target', ''),
(983, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(984, 133, '_menu_item_xfn', ''),
(985, 133, '_menu_item_url', ''),
(987, 134, '_edit_last', '1'),
(988, 134, '_wp_page_template', 'default'),
(989, 134, '_edit_lock', '1402040497:1'),
(990, 136, '_edit_last', '1'),
(991, 136, '_wp_page_template', 'default'),
(992, 136, '_edit_lock', '1402040506:1'),
(993, 138, '_edit_last', '1'),
(994, 138, '_wp_page_template', 'default'),
(995, 138, '_edit_lock', '1402040533:1'),
(996, 140, '_menu_item_type', 'post_type'),
(997, 140, '_menu_item_menu_item_parent', '0'),
(998, 140, '_menu_item_object_id', '138'),
(999, 140, '_menu_item_object', 'page'),
(1000, 140, '_menu_item_target', ''),
(1001, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1002, 140, '_menu_item_xfn', ''),
(1003, 140, '_menu_item_url', ''),
(1005, 141, '_menu_item_type', 'post_type'),
(1006, 141, '_menu_item_menu_item_parent', '0'),
(1007, 141, '_menu_item_object_id', '136'),
(1008, 141, '_menu_item_object', 'page'),
(1009, 141, '_menu_item_target', ''),
(1010, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1011, 141, '_menu_item_xfn', ''),
(1012, 141, '_menu_item_url', ''),
(1014, 142, '_menu_item_type', 'post_type'),
(1015, 142, '_menu_item_menu_item_parent', '0'),
(1016, 142, '_menu_item_object_id', '134'),
(1017, 142, '_menu_item_object', 'page'),
(1018, 142, '_menu_item_target', ''),
(1019, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1020, 142, '_menu_item_xfn', ''),
(1021, 142, '_menu_item_url', ''),
(1023, 143, '_menu_item_type', 'post_type'),
(1024, 143, '_menu_item_menu_item_parent', '0'),
(1025, 143, '_menu_item_object_id', '122'),
(1026, 143, '_menu_item_object', 'page'),
(1027, 143, '_menu_item_target', ''),
(1028, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1029, 143, '_menu_item_xfn', ''),
(1030, 143, '_menu_item_url', ''),
(1031, 22, '_min_regular_price_variation_id', '24'),
(1032, 22, '_max_regular_price_variation_id', '24'),
(1033, 22, '_min_sale_price_variation_id', ''),
(1034, 22, '_max_sale_price_variation_id', ''),
(1035, 147, '_wp_attached_file', '2014/06/categories-beef.png'),
(1036, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:27:"2014/06/categories-beef.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1037, 147, '_edit_lock', '1402310297:1'),
(1038, 1, '_edit_lock', '1402639754:1'),
(1039, 1, '_edit_last', '1'),
(1042, 150, '_edit_last', '1'),
(1043, 150, '_edit_lock', '1402641135:1'),
(1045, 150, '_thumbnail_id', '16'),
(1051, 156, '_edit_last', '1'),
(1052, 156, 'field_539aa6dd7601e', 'a:13:{s:3:"key";s:19:"field_539aa6dd7601e";s:5:"label";s:14:"Three Col Grid";s:4:"name";s:14:"three_col_grid";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:3:{i:0;a:10:{s:3:"key";s:19:"field_539aa6e67601f";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:12:"column_width";s:0:"";s:11:"save_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:8:"order_no";i:0;}i:1;a:13:{s:3:"key";s:19:"field_539aa73076020";s:5:"label";s:7:"Heading";s:4:"name";s:7:"heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"order_no";i:1;}i:2;a:10:{s:3:"key";s:19:"field_539aa74076021";s:5:"label";s:9:"Page Link";s:4:"name";s:9:"page_link";s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:12:"column_width";s:0:"";s:9:"post_type";a:1:{i:0;s:3:"all";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:8:"order_no";i:2;}}s:7:"row_min";s:1:"0";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:8:"Add Item";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1053, 156, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"114";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1054, 156, 'position', 'normal'),
(1055, 156, 'layout', 'default') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1056, 156, 'hide_on_screen', ''),
(1057, 156, '_edit_lock', '1402645660:1'),
(1058, 157, 'three_col_grid_0_image', '100'),
(1059, 157, '_three_col_grid_0_image', 'field_539aa6e67601f'),
(1060, 157, 'three_col_grid_0_heading', 'Beef'),
(1061, 157, '_three_col_grid_0_heading', 'field_539aa73076020'),
(1062, 157, 'three_col_grid_0_page_link', '114'),
(1063, 157, '_three_col_grid_0_page_link', 'field_539aa74076021'),
(1064, 157, 'three_col_grid', '1'),
(1065, 157, '_three_col_grid', 'field_539aa6dd7601e'),
(1066, 114, 'three_col_grid_0_image', '100'),
(1067, 114, '_three_col_grid_0_image', 'field_539aa6e67601f'),
(1068, 114, 'three_col_grid_0_heading', 'Beef'),
(1069, 114, '_three_col_grid_0_heading', 'field_539aa73076020'),
(1070, 114, 'three_col_grid_0_page_link', '159'),
(1071, 114, '_three_col_grid_0_page_link', 'field_539aa74076021'),
(1072, 114, 'three_col_grid', '7'),
(1073, 114, '_three_col_grid', 'field_539aa6dd7601e'),
(1074, 158, 'three_col_grid_0_image', '100'),
(1075, 158, '_three_col_grid_0_image', 'field_539aa6e67601f'),
(1076, 158, 'three_col_grid_0_heading', 'Beef'),
(1077, 158, '_three_col_grid_0_heading', 'field_539aa73076020'),
(1078, 158, 'three_col_grid_0_page_link', '114'),
(1079, 158, '_three_col_grid_0_page_link', 'field_539aa74076021'),
(1080, 158, 'three_col_grid_1_image', '78'),
(1081, 158, '_three_col_grid_1_image', 'field_539aa6e67601f'),
(1082, 158, 'three_col_grid_1_heading', 'Chicken'),
(1083, 158, '_three_col_grid_1_heading', 'field_539aa73076020'),
(1084, 158, 'three_col_grid_1_page_link', '1'),
(1085, 158, '_three_col_grid_1_page_link', 'field_539aa74076021'),
(1086, 158, 'three_col_grid_2_image', '57'),
(1087, 158, '_three_col_grid_2_image', 'field_539aa6e67601f'),
(1088, 158, 'three_col_grid_2_heading', 'sdfsdfsdf'),
(1089, 158, '_three_col_grid_2_heading', 'field_539aa73076020'),
(1090, 158, 'three_col_grid_2_page_link', '1'),
(1091, 158, '_three_col_grid_2_page_link', 'field_539aa74076021'),
(1092, 158, 'three_col_grid_3_image', '46'),
(1093, 158, '_three_col_grid_3_image', 'field_539aa6e67601f'),
(1094, 158, 'three_col_grid_3_heading', 'sdfsdfsdf'),
(1095, 158, '_three_col_grid_3_heading', 'field_539aa73076020'),
(1096, 158, 'three_col_grid_3_page_link', '1'),
(1097, 158, '_three_col_grid_3_page_link', 'field_539aa74076021'),
(1098, 158, 'three_col_grid', '4'),
(1099, 158, '_three_col_grid', 'field_539aa6dd7601e'),
(1100, 114, 'three_col_grid_1_image', '78'),
(1101, 114, '_three_col_grid_1_image', 'field_539aa6e67601f'),
(1102, 114, 'three_col_grid_1_heading', 'Pork'),
(1103, 114, '_three_col_grid_1_heading', 'field_539aa73076020'),
(1104, 114, 'three_col_grid_1_page_link', '165'),
(1105, 114, '_three_col_grid_1_page_link', 'field_539aa74076021'),
(1106, 114, 'three_col_grid_2_image', '57'),
(1107, 114, '_three_col_grid_2_image', 'field_539aa6e67601f'),
(1108, 114, 'three_col_grid_2_heading', 'Poultry'),
(1109, 114, '_three_col_grid_2_heading', 'field_539aa73076020'),
(1110, 114, 'three_col_grid_2_page_link', '167'),
(1111, 114, '_three_col_grid_2_page_link', 'field_539aa74076021'),
(1112, 114, 'three_col_grid_3_image', '46'),
(1113, 114, '_three_col_grid_3_image', 'field_539aa6e67601f'),
(1114, 114, 'three_col_grid_3_heading', 'Lamb'),
(1115, 114, '_three_col_grid_3_heading', 'field_539aa73076020'),
(1116, 114, 'three_col_grid_3_page_link', '169'),
(1117, 114, '_three_col_grid_3_page_link', 'field_539aa74076021'),
(1118, 159, '_edit_last', '1'),
(1119, 159, '_edit_lock', '1402646478:1'),
(1120, 159, '_wp_page_template', 'page-productscat.php'),
(1121, 161, 'three_col_grid_0_image', '100'),
(1122, 161, '_three_col_grid_0_image', 'field_539aa6e67601f'),
(1123, 161, 'three_col_grid_0_heading', 'Beef'),
(1124, 161, '_three_col_grid_0_heading', 'field_539aa73076020'),
(1125, 161, 'three_col_grid_0_page_link', '159'),
(1126, 161, '_three_col_grid_0_page_link', 'field_539aa74076021'),
(1127, 161, 'three_col_grid_1_image', '78'),
(1128, 161, '_three_col_grid_1_image', 'field_539aa6e67601f'),
(1129, 161, 'three_col_grid_1_heading', 'Chicken'),
(1130, 161, '_three_col_grid_1_heading', 'field_539aa73076020'),
(1131, 161, 'three_col_grid_1_page_link', '1'),
(1132, 161, '_three_col_grid_1_page_link', 'field_539aa74076021'),
(1133, 161, 'three_col_grid_2_image', '57'),
(1134, 161, '_three_col_grid_2_image', 'field_539aa6e67601f'),
(1135, 161, 'three_col_grid_2_heading', 'sdfsdfsdf'),
(1136, 161, '_three_col_grid_2_heading', 'field_539aa73076020'),
(1137, 161, 'three_col_grid_2_page_link', '1'),
(1138, 161, '_three_col_grid_2_page_link', 'field_539aa74076021'),
(1139, 161, 'three_col_grid_3_image', '46'),
(1140, 161, '_three_col_grid_3_image', 'field_539aa6e67601f'),
(1141, 161, 'three_col_grid_3_heading', 'sdfsdfsdf'),
(1142, 161, '_three_col_grid_3_heading', 'field_539aa73076020'),
(1143, 161, 'three_col_grid_3_page_link', '1'),
(1144, 161, '_three_col_grid_3_page_link', 'field_539aa74076021'),
(1145, 161, 'three_col_grid', '4'),
(1146, 161, '_three_col_grid', 'field_539aa6dd7601e'),
(1147, 162, '_edit_last', '1'),
(1148, 162, 'field_539aad358dd7c', 'a:13:{s:3:"key";s:19:"field_539aad358dd7c";s:5:"label";s:8:"Row Grid";s:4:"name";s:8:"row_grid";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:3:{i:0;a:13:{s:3:"key";s:19:"field_539aad3c8dd7d";s:5:"label";s:7:"Heading";s:4:"name";s:7:"heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:12:"column_width";s:2:"20";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"order_no";i:0;}i:1;a:10:{s:3:"key";s:19:"field_539aad478dd7e";s:5:"label";s:4:"Text";s:4:"name";s:4:"text";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:12:"column_width";s:2:"60";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:8:"order_no";i:1;}i:2;a:10:{s:3:"key";s:19:"field_539aad598dd7f";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:12:"column_width";s:2:"20";s:11:"save_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:8:"order_no";i:2;}}s:7:"row_min";s:1:"0";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:14:"Add a Supplier";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1150, 162, 'position', 'normal'),
(1151, 162, 'layout', 'default'),
(1152, 162, 'hide_on_screen', ''),
(1153, 162, '_edit_lock', '1402646920:1'),
(1154, 163, 'row_grid_0_heading', 'Certified Black Angus'),
(1155, 163, '_row_grid_0_heading', 'field_539aad3c8dd7d'),
(1156, 163, 'row_grid_0_text', 'Our Black Angus Eye &amp; Rib Fillet is our biggest seller and with good reason. Our customers come back time and time again because they know they’re getting the best. We offer both grain-finish and pure grass fed options.') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1157, 163, '_row_grid_0_text', 'field_539aad478dd7e'),
(1158, 163, 'row_grid_0_image', '55'),
(1159, 163, '_row_grid_0_image', 'field_539aad598dd7f'),
(1160, 163, 'row_grid', '1'),
(1161, 163, '_row_grid', 'field_539aad358dd7c'),
(1162, 159, 'row_grid_0_heading', 'Certified Black Angus'),
(1163, 159, '_row_grid_0_heading', 'field_539aad3c8dd7d'),
(1164, 159, 'row_grid_0_text', 'Our Black Angus Eye &amp; Rib Fillet is our biggest seller and with good reason. Our customers come back time and time again because they know they’re getting the best. We offer both grain-finish and pure grass fed options.'),
(1165, 159, '_row_grid_0_text', 'field_539aad478dd7e'),
(1166, 159, 'row_grid_0_image', '55'),
(1167, 159, '_row_grid_0_image', 'field_539aad598dd7f'),
(1168, 159, 'row_grid', '2'),
(1169, 159, '_row_grid', 'field_539aad358dd7c'),
(1170, 164, 'row_grid_0_heading', 'Certified Black Angus'),
(1171, 164, '_row_grid_0_heading', 'field_539aad3c8dd7d'),
(1172, 164, 'row_grid_0_text', 'Our Black Angus Eye &amp; Rib Fillet is our biggest seller and with good reason. Our customers come back time and time again because they know they’re getting the best. We offer both grain-finish and pure grass fed options.'),
(1173, 164, '_row_grid_0_text', 'field_539aad478dd7e'),
(1174, 164, 'row_grid_0_image', '55'),
(1175, 164, '_row_grid_0_image', 'field_539aad598dd7f'),
(1176, 164, 'row_grid_1_heading', 'Blicks River Beef'),
(1177, 164, '_row_grid_1_heading', 'field_539aad3c8dd7d'),
(1178, 164, 'row_grid_1_text', 'Tender grass-fed beef raised in a unique natural environment, high up on the New England Tablelands. This cool climate area includes some of the most spectacular, rugged and remote wilderness in Australia and is ideal grazing country for young cattle.\r\nwww.blicksriverbeef.com.au'),
(1179, 164, '_row_grid_1_text', 'field_539aad478dd7e'),
(1180, 164, 'row_grid_1_image', '81'),
(1181, 164, '_row_grid_1_image', 'field_539aad598dd7f'),
(1182, 164, 'row_grid', '2'),
(1183, 164, '_row_grid', 'field_539aad358dd7c'),
(1184, 159, 'row_grid_1_heading', 'Blicks River Beef'),
(1185, 159, '_row_grid_1_heading', 'field_539aad3c8dd7d'),
(1186, 159, 'row_grid_1_text', 'Tender grass-fed beef raised in a unique natural environment, high up on the New England Tablelands. This cool climate area includes some of the most spectacular, rugged and remote wilderness in Australia and is ideal grazing country for young cattle.\r\nwww.blicksriverbeef.com.au'),
(1187, 159, '_row_grid_1_text', 'field_539aad478dd7e'),
(1188, 159, 'row_grid_1_image', '81'),
(1189, 159, '_row_grid_1_image', 'field_539aad598dd7f'),
(1190, 162, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:20:"page-productscat.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1191, 165, '_edit_last', '1'),
(1192, 165, '_edit_lock', '1402646515:1'),
(1193, 165, '_wp_page_template', 'page-productscat.php'),
(1194, 167, '_edit_last', '1'),
(1195, 167, '_edit_lock', '1402646528:1'),
(1196, 167, '_wp_page_template', 'page-productscat.php'),
(1197, 168, 'row_grid', '0'),
(1198, 168, '_row_grid', 'field_539aad358dd7c'),
(1199, 167, 'row_grid', '0'),
(1200, 167, '_row_grid', 'field_539aad358dd7c'),
(1201, 169, '_edit_last', '1'),
(1202, 169, '_edit_lock', '1402646541:1'),
(1203, 169, '_wp_page_template', 'page-productscat.php'),
(1204, 171, '_edit_last', '1'),
(1205, 171, '_edit_lock', '1402646568:1'),
(1206, 171, '_wp_page_template', 'page-productscat.php'),
(1207, 172, 'row_grid', '0'),
(1208, 172, '_row_grid', 'field_539aad358dd7c'),
(1209, 171, 'row_grid', '0'),
(1210, 171, '_row_grid', 'field_539aad358dd7c'),
(1211, 173, '_edit_last', '1'),
(1212, 173, '_edit_lock', '1402646583:1'),
(1213, 173, '_wp_page_template', 'page-productscat.php'),
(1214, 175, '_edit_last', '1'),
(1215, 175, '_edit_lock', '1402646599:1'),
(1216, 175, '_wp_page_template', 'page-productscat.php'),
(1217, 176, 'row_grid', '0'),
(1218, 176, '_row_grid', 'field_539aad358dd7c'),
(1219, 175, 'row_grid', '0'),
(1220, 175, '_row_grid', 'field_539aad358dd7c'),
(1221, 177, 'three_col_grid_0_image', '100'),
(1222, 177, '_three_col_grid_0_image', 'field_539aa6e67601f'),
(1223, 177, 'three_col_grid_0_heading', 'Beef'),
(1224, 177, '_three_col_grid_0_heading', 'field_539aa73076020'),
(1225, 177, 'three_col_grid_0_page_link', '159'),
(1226, 177, '_three_col_grid_0_page_link', 'field_539aa74076021'),
(1227, 177, 'three_col_grid_1_image', '78'),
(1228, 177, '_three_col_grid_1_image', 'field_539aa6e67601f'),
(1229, 177, 'three_col_grid_1_heading', 'Pork'),
(1230, 177, '_three_col_grid_1_heading', 'field_539aa73076020'),
(1231, 177, 'three_col_grid_1_page_link', '165'),
(1232, 177, '_three_col_grid_1_page_link', 'field_539aa74076021'),
(1233, 177, 'three_col_grid_2_image', '57'),
(1234, 177, '_three_col_grid_2_image', 'field_539aa6e67601f'),
(1235, 177, 'three_col_grid_2_heading', 'Poultry'),
(1236, 177, '_three_col_grid_2_heading', 'field_539aa73076020'),
(1237, 177, 'three_col_grid_2_page_link', '167'),
(1238, 177, '_three_col_grid_2_page_link', 'field_539aa74076021'),
(1239, 177, 'three_col_grid_3_image', '46'),
(1240, 177, '_three_col_grid_3_image', 'field_539aa6e67601f'),
(1241, 177, 'three_col_grid_3_heading', 'Lamb'),
(1242, 177, '_three_col_grid_3_heading', 'field_539aa73076020'),
(1243, 177, 'three_col_grid_3_page_link', '169'),
(1244, 177, '_three_col_grid_3_page_link', 'field_539aa74076021'),
(1245, 177, 'three_col_grid_4_image', '71'),
(1246, 177, '_three_col_grid_4_image', 'field_539aa6e67601f'),
(1247, 177, 'three_col_grid_4_heading', 'Delicatessen'),
(1248, 177, '_three_col_grid_4_heading', 'field_539aa73076020'),
(1249, 177, 'three_col_grid_4_page_link', '171'),
(1250, 177, '_three_col_grid_4_page_link', 'field_539aa74076021'),
(1251, 177, 'three_col_grid_5_image', '94'),
(1252, 177, '_three_col_grid_5_image', 'field_539aa6e67601f'),
(1253, 177, 'three_col_grid_5_heading', 'Sausages'),
(1254, 177, '_three_col_grid_5_heading', 'field_539aa73076020'),
(1255, 177, 'three_col_grid_5_page_link', '173'),
(1256, 177, '_three_col_grid_5_page_link', 'field_539aa74076021') ;
INSERT INTO `mab_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1257, 177, 'three_col_grid_6_image', '21'),
(1258, 177, '_three_col_grid_6_image', 'field_539aa6e67601f'),
(1259, 177, 'three_col_grid_6_heading', 'Ready To Cook'),
(1260, 177, '_three_col_grid_6_heading', 'field_539aa73076020'),
(1261, 177, 'three_col_grid_6_page_link', '175'),
(1262, 177, '_three_col_grid_6_page_link', 'field_539aa74076021'),
(1263, 177, 'three_col_grid', '7'),
(1264, 177, '_three_col_grid', 'field_539aa6dd7601e'),
(1265, 114, 'three_col_grid_4_image', '71'),
(1266, 114, '_three_col_grid_4_image', 'field_539aa6e67601f'),
(1267, 114, 'three_col_grid_4_heading', 'Delicatessen'),
(1268, 114, '_three_col_grid_4_heading', 'field_539aa73076020'),
(1269, 114, 'three_col_grid_4_page_link', '171'),
(1270, 114, '_three_col_grid_4_page_link', 'field_539aa74076021'),
(1271, 114, 'three_col_grid_5_image', '94'),
(1272, 114, '_three_col_grid_5_image', 'field_539aa6e67601f'),
(1273, 114, 'three_col_grid_5_heading', 'Sausages'),
(1274, 114, '_three_col_grid_5_heading', 'field_539aa73076020'),
(1275, 114, 'three_col_grid_5_page_link', '173'),
(1276, 114, '_three_col_grid_5_page_link', 'field_539aa74076021'),
(1277, 114, 'three_col_grid_6_image', '21'),
(1278, 114, '_three_col_grid_6_image', 'field_539aa6e67601f'),
(1279, 114, 'three_col_grid_6_heading', 'Ready To Cook'),
(1280, 114, '_three_col_grid_6_heading', 'field_539aa73076020'),
(1281, 114, 'three_col_grid_6_page_link', '175'),
(1282, 114, '_three_col_grid_6_page_link', 'field_539aa74076021'),
(1283, 178, '_menu_item_type', 'post_type'),
(1284, 178, '_menu_item_menu_item_parent', '0'),
(1285, 178, '_menu_item_object_id', '159'),
(1286, 178, '_menu_item_object', 'page'),
(1287, 178, '_menu_item_target', ''),
(1288, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1289, 178, '_menu_item_xfn', ''),
(1290, 178, '_menu_item_url', ''),
(1292, 179, '_menu_item_type', 'post_type'),
(1293, 179, '_menu_item_menu_item_parent', '0'),
(1294, 179, '_menu_item_object_id', '171'),
(1295, 179, '_menu_item_object', 'page'),
(1296, 179, '_menu_item_target', ''),
(1297, 179, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1298, 179, '_menu_item_xfn', ''),
(1299, 179, '_menu_item_url', ''),
(1301, 180, '_menu_item_type', 'post_type'),
(1302, 180, '_menu_item_menu_item_parent', '0'),
(1303, 180, '_menu_item_object_id', '169'),
(1304, 180, '_menu_item_object', 'page'),
(1305, 180, '_menu_item_target', ''),
(1306, 180, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1307, 180, '_menu_item_xfn', ''),
(1308, 180, '_menu_item_url', ''),
(1310, 181, '_menu_item_type', 'post_type'),
(1311, 181, '_menu_item_menu_item_parent', '0'),
(1312, 181, '_menu_item_object_id', '165'),
(1313, 181, '_menu_item_object', 'page'),
(1314, 181, '_menu_item_target', ''),
(1315, 181, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1316, 181, '_menu_item_xfn', ''),
(1317, 181, '_menu_item_url', ''),
(1319, 182, '_menu_item_type', 'post_type'),
(1320, 182, '_menu_item_menu_item_parent', '0'),
(1321, 182, '_menu_item_object_id', '167'),
(1322, 182, '_menu_item_object', 'page'),
(1323, 182, '_menu_item_target', ''),
(1324, 182, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1325, 182, '_menu_item_xfn', ''),
(1326, 182, '_menu_item_url', ''),
(1337, 184, '_menu_item_type', 'post_type'),
(1338, 184, '_menu_item_menu_item_parent', '0'),
(1339, 184, '_menu_item_object_id', '173'),
(1340, 184, '_menu_item_object', 'page'),
(1341, 184, '_menu_item_target', ''),
(1342, 184, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1343, 184, '_menu_item_xfn', ''),
(1344, 184, '_menu_item_url', ''),
(1348, 186, '_wp_attached_file', '2014/06/categories-pork.png'),
(1349, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:27:"2014/06/categories-pork.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1350, 187, '_wp_attached_file', '2014/06/categories-poultry.png'),
(1351, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:30:"2014/06/categories-poultry.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1352, 188, '_wp_attached_file', '2014/06/categories-lamb.png'),
(1353, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:27:"2014/06/categories-lamb.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1354, 189, '_wp_attached_file', '2014/06/categories-sausages.png'),
(1355, 189, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:31:"2014/06/categories-sausages.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1356, 190, '_wp_attached_file', '2014/06/categories-deli.png'),
(1357, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:27:"2014/06/categories-deli.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1358, 191, '_wp_attached_file', '2014/06/categories-new.png'),
(1359, 191, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:26:"2014/06/categories-new.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1360, 192, '_wp_attached_file', '2014/06/categories-readytocook.png'),
(1361, 192, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:34:"2014/06/categories-readytocook.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1362, 193, '_wp_attached_file', '2014/06/categories-pickoftheweek.png'),
(1363, 193, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:36:"2014/06/categories-pickoftheweek.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1364, 195, '_wp_attached_file', '2014/06/footer-logo.png'),
(1365, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:241;s:6:"height";i:32;s:4:"file";s:23:"2014/06/footer-logo.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"footer-logo-150x32.png";s:5:"width";i:150;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"footer-logo-90x32.png";s:5:"width";i:90;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"footer-logo-150x32.png";s:5:"width";i:150;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"footer-logo-125x32.png";s:5:"width";i:125;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1366, 195, '_edit_lock', '1403071367:1') ;

#
# End of data contents of table `mab_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `mab_posts`
#

DROP TABLE IF EXISTS `mab_posts`;


#
# Table structure of table `mab_posts`
#

CREATE TABLE `mab_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_posts`
#
INSERT INTO `mab_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-03-19 00:39:57', '2014-03-19 00:39:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-06-12 18:36:00', '2014-06-12 08:36:00', '', 0, 'http://template.dev/?p=1', 0, 'post', '', 1),
(2, 1, '2014-03-19 00:39:57', '2014-03-18 14:39:57', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Meat at Billy\'s', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2014-06-06 22:02:11', '2014-06-06 12:02:11', '', 0, 'http://template.dev/?page_id=2', 0, 'page', '', 0),
(6, 1, '2014-03-19 11:11:03', '2014-03-19 01:11:03', '', 'Shop Online', '', 'publish', 'closed', 'open', '', 'shop-online', '', '', '2014-06-06 13:39:20', '2014-06-06 03:39:20', '', 0, 'http://templatewc.dev/shop/', 0, 'page', '', 0),
(7, 1, '2014-03-19 11:11:03', '2014-03-19 01:11:03', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2014-03-19 11:11:03', '2014-03-19 01:11:03', '', 0, 'http://templatewc.dev/cart/', 0, 'page', '', 0),
(8, 1, '2014-03-19 11:11:03', '2014-03-19 01:11:03', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2014-03-19 11:11:03', '2014-03-19 01:11:03', '', 0, 'http://templatewc.dev/checkout/', 0, 'page', '', 0),
(9, 1, '2014-03-19 11:11:03', '2014-03-19 01:11:03', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2014-03-19 11:11:03', '2014-03-19 01:11:03', '', 0, 'http://templatewc.dev/my-account/', 0, 'page', '', 0),
(10, 1, '2014-03-19 11:11:41', '2014-03-19 01:11:41', '<h1>Checkout</h1>\n\n{{mj-checkout-form}}', 'Mijireh Secure Checkout', '', 'private', 'closed', 'closed', '', 'mijireh-secure-checkout', '', '', '2014-03-19 11:11:41', '2014-03-19 01:11:41', '', 0, 'http://templatewc.dev/mijireh-secure-checkout/', 0, 'page', '', 0),
(15, 1, '2013-06-07 10:35:51', '2013-06-07 10:35:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2013-06-07 10:35:51', '2013-06-07 10:35:51', '', 0, 'http://demo2.woothemes.com/dummydata/?post_type=product&amp;p=15', 0, 'product', '', 1),
(16, 1, '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 'T_1_front', '', 'inherit', 'open', 'open', '', 't_1_front', '', '', '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 15, 'http://templatewc.dev/wp-content/uploads/2013/06/T_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 'T_1_back', '', 'inherit', 'open', 'open', '', 't_1_back', '', '', '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 15, 'http://templatewc.dev/wp-content/uploads/2013/06/T_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2013-06-07 10:41:52', '2013-06-07 10:41:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2013-06-07 10:41:52', '2013-06-07 10:41:52', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&amp;p=19', 0, 'product', '', 2),
(20, 1, '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 'T_2_front', '', 'inherit', 'open', 'open', '', 't_2_front', '', '', '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 19, 'http://templatewc.dev/wp-content/uploads/2013/06/T_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 'T_2_back', '', 'inherit', 'open', 'open', '', 't_2_back', '', '', '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 19, 'http://templatewc.dev/wp-content/uploads/2013/06/T_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2013-06-07 10:46:01', '2013-06-07 10:46:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea', '', '', '2013-06-07 10:46:01', '2013-06-07 10:46:01', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&amp;p=22', 0, 'product', '', 3),
(23, 1, '2013-06-07 10:44:57', '2013-06-07 10:44:57', '', 'Variation #23 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-22-variation', '', '', '2013-06-07 10:44:57', '2013-06-07 10:44:57', '', 22, 'http://demo2.woothemes.com/woocommerce/?product_variation=product-22-variation', 0, 'product_variation', '', 0),
(24, 1, '2013-06-07 10:44:58', '2013-06-07 10:44:58', '', 'Variation #24 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-22-variation-2', '', '', '2013-06-07 10:44:58', '2013-06-07 10:44:58', '', 22, 'http://demo2.woothemes.com/woocommerce/?product_variation=product-22-variation-2', 1, 'product_variation', '', 0),
(25, 1, '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front', '', '', '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 22, 'http://templatewc.dev/wp-content/uploads/2013/06/T_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 'T_3_back', '', 'inherit', 'open', 'open', '', 't_3_back', '', '', '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 22, 'http://templatewc.dev/wp-content/uploads/2013/06/T_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 'T_3_front', '', 'inherit', 'open', 'open', '', 't_3_front', '', '', '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 22, 'http://templatewc.dev/wp-content/uploads/2013/06/T_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 'T_4_back', '', 'inherit', 'open', 'open', '', 't_4_back', '', '', '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 22, 'http://templatewc.dev/wp-content/uploads/2013/06/T_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front-2', '', '', '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 22, 'http://templatewc.dev/wp-content/uploads/2013/06/T_4_front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2013-06-07 10:49:51', '2013-06-07 10:49:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette', '', '', '2014-06-13 12:24:19', '2014-06-13 02:24:19', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=31', 0, 'product', '', 1),
(32, 1, '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 'T_5_front', '', 'inherit', 'open', 'open', '', 't_5_front', '', '', '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 31, 'http://templatewc.dev/wp-content/uploads/2013/06/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 'T_5_back', '', 'inherit', 'open', 'open', '', 't_5_back', '', '', '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 31, 'http://templatewc.dev/wp-content/uploads/2013/06/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2013-06-07 10:52:06', '2013-06-07 10:52:06', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2014-06-13 12:24:19', '2014-06-13 02:24:19', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=34', 0, 'product', '', 0),
(35, 1, '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 'T_6_front', '', 'inherit', 'open', 'open', '', 't_6_front', '', '', '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 34, 'http://templatewc.dev/wp-content/uploads/2013/06/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 'T_6_back', '', 'inherit', 'open', 'open', '', 't_6_back', '', '', '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 34, 'http://templatewc.dev/wp-content/uploads/2013/06/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2013-06-07 10:53:15', '2013-06-07 10:53:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2014-06-13 12:24:18', '2014-06-13 02:24:18', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=37', 0, 'product', '', 2),
(38, 1, '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 'T_7_front', '', 'inherit', 'open', 'open', '', 't_7_front', '', '', '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 37, 'http://templatewc.dev/wp-content/uploads/2013/06/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 'T_7_back', '', 'inherit', 'open', 'open', '', 't_7_back', '', '', '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 37, 'http://templatewc.dev/wp-content/uploads/2013/06/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2013-06-07 11:00:28', '2013-06-07 11:00:28', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-2', '', '', '2014-06-13 12:24:18', '2014-06-13 02:24:18', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=40', 0, 'product', '', 3),
(41, 1, '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 'Variation #41 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-40-variation', '', '', '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 40, 'http://demo2.woothemes.com/woocommerce/?product_variation=product-40-variation', 0, 'product_variation', '', 0),
(42, 1, '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 'Variation #42 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-40-variation-2', '', '', '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 40, 'http://demo2.woothemes.com/woocommerce/?product_variation=product-40-variation-2', 1, 'product_variation', '', 0),
(43, 1, '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 'hoodie_7_front', '', 'inherit', 'open', 'open', '', 'hoodie_7_front', '', '', '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 40, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 'hoodie_7_back', '', 'inherit', 'open', 'open', '', 'hoodie_7_back', '', '', '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 40, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 'hoodie_1_back', '', 'inherit', 'open', 'open', '', 'hoodie_1_back', '', '', '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 40, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 'hoodie_1_front', '', 'inherit', 'open', 'open', '', 'hoodie_1_front', '', '', '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 40, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2013-06-07 11:02:31', '2013-06-07 11:02:31', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2014-06-13 12:24:17', '2014-06-13 02:24:17', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=47', 0, 'product', '', 2),
(48, 1, '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 'hoodie_2_front', '', 'inherit', 'open', 'open', '', 'hoodie_2_front', '', '', '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 47, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 'hoodie_2_back', '', 'inherit', 'open', 'open', '', 'hoodie_2_back', '', '', '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 47, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2013-06-07 11:03:56', '2013-06-07 11:03:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2014-06-13 12:24:16', '2014-06-13 02:24:16', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=50', 0, 'product', '', 3),
(51, 1, '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 'hoodie_3_front', '', 'inherit', 'open', 'open', '', 'hoodie_3_front', '', '', '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 50, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 'hoodie_3_back', '', 'inherit', 'open', 'open', '', 'hoodie_3_back', '', '', '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 50, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2013-06-07 11:05:37', '2013-06-07 11:05:37', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2014-06-13 12:24:16', '2014-06-13 02:24:16', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=53', 0, 'product', '', 2),
(54, 1, '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 'hoodie_4_front', '', 'inherit', 'open', 'open', '', 'hoodie_4_front', '', '', '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 53, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 'hoodie_4_back', '', 'inherit', 'open', 'open', '', 'hoodie_4_back', '', '', '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 53, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2013-06-07 11:07:19', '2013-06-07 11:07:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2014-06-13 12:24:15', '2014-06-13 02:24:15', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=56', 0, 'product', '', 5),
(57, 1, '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 'hoodie_5_front', '', 'inherit', 'open', 'open', '', 'hoodie_5_front', '', '', '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 56, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 'hoodie_5_back', '', 'inherit', 'open', 'open', '', 'hoodie_5_back', '', '', '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 56, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2013-06-07 11:12:55', '2013-06-07 11:12:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2014-06-13 12:24:15', '2014-06-13 02:24:15', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=60', 0, 'product', '', 2),
(61, 1, '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 'hoodie_6_front', '', 'inherit', 'open', 'open', '', 'hoodie_6_front', '', '', '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 60, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 'hoodie_6_back', '', 'inherit', 'open', 'open', '', 'hoodie_6_back', '', '', '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 60, 'http://templatewc.dev/wp-content/uploads/2013/06/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2013-06-07 11:22:50', '2013-06-07 11:22:50', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2014-06-13 12:24:14', '2014-06-13 02:24:14', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 'poster_1_up', '', 'inherit', 'open', 'open', '', 'poster_1_up', '', '', '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 67, 'http://templatewc.dev/wp-content/uploads/2013/06/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 'Poster_1_flat', '', 'inherit', 'open', 'open', '', 'poster_1_flat', '', '', '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 67, 'http://templatewc.dev/wp-content/uploads/2013/06/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2013-06-07 11:25:01', '2013-06-07 11:25:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2014-06-13 12:24:14', '2014-06-13 02:24:14', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=70', 0, 'product', '', 4),
(71, 1, '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 'poster_2_up', '', 'inherit', 'open', 'open', '', 'poster_2_up', '', '', '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 70, 'http://templatewc.dev/wp-content/uploads/2013/06/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 'Poster_2_flat', '', 'inherit', 'open', 'open', '', 'poster_2_flat', '', '', '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 70, 'http://templatewc.dev/wp-content/uploads/2013/06/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2013-06-07 11:27:38', '2013-06-07 11:27:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2014-06-13 12:24:13', '2014-06-13 02:24:13', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=73', 0, 'product', '', 2),
(74, 1, '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 'poster_3_up', '', 'inherit', 'open', 'open', '', 'poster_3_up', '', '', '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 73, 'http://templatewc.dev/wp-content/uploads/2013/06/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 'Poster_3_flat', '', 'inherit', 'open', 'open', '', 'poster_3_flat', '', '', '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 73, 'http://templatewc.dev/wp-content/uploads/2013/06/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2013-06-07 11:28:45', '2013-06-07 11:28:45', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2014-06-13 12:24:12', '2014-06-13 02:24:12', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=76', 0, 'product', '', 1),
(77, 1, '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 'poster_4_up', '', 'inherit', 'open', 'open', '', 'poster_4_up', '', '', '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 76, 'http://templatewc.dev/wp-content/uploads/2013/06/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 'Poster_4_flat', '', 'inherit', 'open', 'open', '', 'poster_4_flat', '', '', '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 76, 'http://templatewc.dev/wp-content/uploads/2013/06/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2013-06-07 11:29:44', '2013-06-07 11:29:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2014-06-13 12:24:11', '2014-06-13 02:24:11', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 'poster_5_up', '', 'inherit', 'open', 'open', '', 'poster_5_up', '', '', '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 79, 'http://templatewc.dev/wp-content/uploads/2013/06/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 'Poster_5_flat', '', 'inherit', 'open', 'open', '', 'poster_5_flat', '', '', '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 79, 'http://templatewc.dev/wp-content/uploads/2013/06/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-06-07 11:33:05', '2013-06-07 11:33:05', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2014-06-13 12:24:10', '2014-06-13 02:24:10', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 'cd_1_angle', '', 'inherit', 'open', 'open', '', 'cd_1_angle', '', '', '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 83, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 'cd_1_flat', '', 'inherit', 'open', 'open', '', 'cd_1_flat', '', '', '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 83, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2013-06-07 11:34:14', '2013-06-07 11:34:14', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2014-06-13 12:24:09', '2014-06-13 02:24:09', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=87', 0, 'product', '', 1),
(88, 1, '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 'cd_2_angle', '', 'inherit', 'open', 'open', '', 'cd_2_angle', '', '', '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 87, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 'cd_2_flat', '', 'inherit', 'open', 'open', '', 'cd_2_flat', '', '', '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 87, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2013-06-07 11:35:18', '2013-06-07 11:35:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2014-06-13 12:24:08', '2014-06-13 02:24:08', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=90', 0, 'product', '', 1),
(91, 1, '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 'cd_3_angle', '', 'inherit', 'open', 'open', '', 'cd_3_angle', '', '', '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 90, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 'cd_3_flat', '', 'inherit', 'open', 'open', '', 'cd_3_flat', '', '', '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 90, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2013-06-07 11:36:34', '2013-06-07 11:36:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2014-06-13 12:24:07', '2014-06-13 02:24:07', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 1, '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 'cd_4_flat', '', 'inherit', 'open', 'open', '', 'cd_4_flat', '', '', '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 93, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 'cd_4_angle', '', 'inherit', 'open', 'open', '', 'cd_4_angle', '', '', '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 93, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2013-06-07 11:37:23', '2013-06-07 11:37:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2014-06-13 12:24:06', '2014-06-13 02:24:06', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=96', 0, 'product', '', 2),
(97, 1, '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 'cd_5_angle', '', 'inherit', 'open', 'open', '', 'cd_5_angle', '', '', '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 96, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 'cd_5_flat', '', 'inherit', 'open', 'open', '', 'cd_5_flat', '', '', '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 96, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2013-06-07 11:38:12', '2013-06-07 11:38:12', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2014-06-13 12:24:04', '2014-06-13 02:24:04', '', 0, 'http://demo2.woothemes.com/woocommerce/?post_type=product&#038;p=99', 0, 'product', '', 2),
(100, 1, '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 'cd_6_angle', '', 'inherit', 'open', 'open', '', 'cd_6_angle', '', '', '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 99, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 'cd_6_flat', '', 'inherit', 'open', 'open', '', 'cd_6_flat', '', '', '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 99, 'http://templatewc.dev/wp-content/uploads/2013/06/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2014-03-19 14:39:25', '2014-03-19 04:39:25', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://mab.studio-culture.net/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-03-19 14:39:25', '2014-03-19 04:39:25', '', 2, 'http://templatewc.dev/2-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2014-06-06 13:10:02', '2014-06-06 03:10:02', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://mab.studio-culture.net/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Meat at Billy\'s', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-06-06 13:10:02', '2014-06-06 03:10:02', '', 2, 'http://mab.studio-culture.net/2-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2014-06-06 13:33:28', '2014-06-06 03:33:28', '', 'slider-v1-1', '', 'inherit', 'closed', 'open', '', 'slider-v1-1', '', '', '2014-06-06 13:33:28', '2014-06-06 03:33:28', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/slider-v1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2014-06-06 13:34:28', '2014-06-06 03:34:28', '', 'slider-v1-1', '', 'inherit', 'closed', 'open', '', 'slider-v1-1-2', '', '', '2014-06-06 13:34:28', '2014-06-06 03:34:28', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/slider-v1-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2014-06-06 13:38:43', '2014-06-06 03:38:43', '', 'Home', '', 'publish', 'closed', 'open', '', 'meat-at-billys', '', '', '2014-06-06 15:40:28', '2014-06-06 05:40:28', '', 0, 'http://mab.studio-culture.net/?p=107', 1, 'nav_menu_item', '', 0),
(110, 1, '2014-06-06 13:38:36', '0000-00-00 00:00:00', '', 'Meat at Billy\'s', '', 'draft', 'closed', 'open', '', '', '', '', '2014-06-06 13:38:36', '0000-00-00 00:00:00', '', 0, 'http://mab.studio-culture.net/?p=110', 1, 'nav_menu_item', '', 0),
(112, 1, '2014-06-06 13:38:43', '2014-06-06 03:38:43', ' ', '', '', 'publish', 'closed', 'open', '', '112', '', '', '2014-06-06 15:40:29', '2014-06-06 05:40:29', '', 0, 'http://mab.studio-culture.net/?p=112', 2, 'nav_menu_item', '', 0),
(113, 1, '2014-06-06 13:39:20', '2014-06-06 03:39:20', '', 'Shop Online', '', 'inherit', 'closed', 'open', '', '6-revision-v1', '', '', '2014-06-06 13:39:20', '2014-06-06 03:39:20', '', 6, 'http://mab.studio-culture.net/6-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2014-06-06 13:39:33', '2014-06-06 03:39:33', '', 'Products', '', 'publish', 'closed', 'open', '', 'products', '', '', '2014-06-13 18:07:00', '2014-06-13 08:07:00', '', 0, 'http://mab.studio-culture.net/?page_id=114', 0, 'page', '', 0),
(115, 1, '2014-06-06 13:39:33', '2014-06-06 03:39:33', '', 'Products', '', 'inherit', 'closed', 'open', '', '114-revision-v1', '', '', '2014-06-06 13:39:33', '2014-06-06 03:39:33', '', 114, 'http://mab.studio-culture.net/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2014-06-06 13:39:49', '2014-06-06 03:39:49', '', 'Recipes/News', '', 'publish', 'closed', 'open', '', 'recipesnews', '', '', '2014-06-06 13:39:49', '2014-06-06 03:39:49', '', 0, 'http://mab.studio-culture.net/?page_id=116', 0, 'page', '', 0),
(117, 1, '2014-06-06 13:39:49', '2014-06-06 03:39:49', '', 'Recipes/News', '', 'inherit', 'closed', 'open', '', '116-revision-v1', '', '', '2014-06-06 13:39:49', '2014-06-06 03:39:49', '', 116, 'http://mab.studio-culture.net/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2014-06-06 13:40:01', '2014-06-06 03:40:01', '', 'FAQs', '', 'publish', 'closed', 'open', '', 'faqs', '', '', '2014-06-06 13:40:01', '2014-06-06 03:40:01', '', 0, 'http://mab.studio-culture.net/?page_id=118', 0, 'page', '', 0),
(119, 1, '2014-06-06 13:40:01', '2014-06-06 03:40:01', '', 'FAQs', '', 'inherit', 'closed', 'open', '', '118-revision-v1', '', '', '2014-06-06 13:40:01', '2014-06-06 03:40:01', '', 118, 'http://mab.studio-culture.net/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2014-06-06 13:40:11', '2014-06-06 03:40:11', '', 'About Us', '', 'publish', 'closed', 'open', '', 'about-us', '', '', '2014-06-06 13:40:11', '2014-06-06 03:40:11', '', 0, 'http://mab.studio-culture.net/?page_id=120', 0, 'page', '', 0) ;
INSERT INTO `mab_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 1, '2014-06-06 13:40:11', '2014-06-06 03:40:11', '', 'About Us', '', 'inherit', 'closed', 'open', '', '120-revision-v1', '', '', '2014-06-06 13:40:11', '2014-06-06 03:40:11', '', 120, 'http://mab.studio-culture.net/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2014-06-06 13:40:26', '2014-06-06 03:40:26', '[gravityform id="1" name="Contact Form" title="false" description="false" ajax="true"]', 'Contact', '', 'publish', 'closed', 'open', '', 'contact', '', '', '2014-06-19 10:23:16', '2014-06-19 00:23:16', '', 0, 'http://mab.studio-culture.net/?page_id=122', 0, 'page', '', 0),
(123, 1, '2014-06-06 13:40:26', '2014-06-06 03:40:26', '', 'Contact', '', 'inherit', 'closed', 'open', '', '122-revision-v1', '', '', '2014-06-06 13:40:26', '2014-06-06 03:40:26', '', 122, 'http://mab.studio-culture.net/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2014-06-06 13:40:37', '2014-06-06 03:40:37', '', 'Location', '', 'publish', 'closed', 'open', '', 'location', '', '', '2014-06-06 13:40:37', '2014-06-06 03:40:37', '', 0, 'http://mab.studio-culture.net/?page_id=124', 0, 'page', '', 0),
(125, 1, '2014-06-06 13:40:37', '2014-06-06 03:40:37', '', 'Location', '', 'inherit', 'closed', 'open', '', '124-revision-v1', '', '', '2014-06-06 13:40:37', '2014-06-06 03:40:37', '', 124, 'http://mab.studio-culture.net/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2014-06-06 13:41:12', '2014-06-06 03:41:12', ' ', '', '', 'publish', 'closed', 'open', '', '126', '', '', '2014-06-06 15:40:29', '2014-06-06 05:40:29', '', 0, 'http://mab.studio-culture.net/?p=126', 5, 'nav_menu_item', '', 0),
(127, 1, '2014-06-06 13:41:12', '2014-06-06 03:41:12', ' ', '', '', 'publish', 'closed', 'open', '', '127', '', '', '2014-06-06 15:40:29', '2014-06-06 05:40:29', '', 0, 'http://mab.studio-culture.net/?p=127', 4, 'nav_menu_item', '', 0),
(128, 1, '2014-06-06 13:41:12', '2014-06-06 03:41:12', ' ', '', '', 'publish', 'closed', 'open', '', '128', '', '', '2014-06-06 15:40:29', '2014-06-06 05:40:29', '', 0, 'http://mab.studio-culture.net/?p=128', 3, 'nav_menu_item', '', 0),
(129, 1, '2014-06-06 15:27:43', '2014-06-06 05:27:43', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://mab.studio-culture.net/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!\r\n\r\n[featured_products per_page="8" columns="4" orderby="date" order="desc"]', 'Meat at Billy\'s', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-06-06 15:27:43', '2014-06-06 05:27:43', '', 2, 'http://mab.studio-culture.net/2-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2014-06-06 16:25:36', '2014-06-06 06:25:36', ' ', '', '', 'publish', 'closed', 'open', '', '130', '', '', '2014-06-06 16:25:36', '2014-06-06 06:25:36', '', 0, 'http://mab.studio-culture.net/?p=130', 1, 'nav_menu_item', '', 0),
(131, 1, '2014-06-06 16:25:36', '2014-06-06 06:25:36', ' ', '', '', 'publish', 'closed', 'open', '', '131', '', '', '2014-06-06 16:25:36', '2014-06-06 06:25:36', '', 0, 'http://mab.studio-culture.net/?p=131', 3, 'nav_menu_item', '', 0),
(132, 1, '2014-06-06 16:25:36', '2014-06-06 06:25:36', ' ', '', '', 'publish', 'closed', 'open', '', '132', '', '', '2014-06-06 16:25:36', '2014-06-06 06:25:36', '', 0, 'http://mab.studio-culture.net/?p=132', 4, 'nav_menu_item', '', 0),
(133, 1, '2014-06-06 16:25:36', '2014-06-06 06:25:36', '', 'Trading Hours', '', 'publish', 'closed', 'open', '', 'trading-hours', '', '', '2014-06-06 16:25:36', '2014-06-06 06:25:36', '', 0, 'http://mab.studio-culture.net/?p=133', 2, 'nav_menu_item', '', 0),
(134, 1, '2014-06-06 17:43:58', '2014-06-06 07:43:58', '', 'Terms & Conditions', '', 'publish', 'closed', 'open', '', 'terms-conditions', '', '', '2014-06-06 17:43:58', '2014-06-06 07:43:58', '', 0, 'http://mab.studio-culture.net/?page_id=134', 0, 'page', '', 0),
(135, 1, '2014-06-06 17:43:58', '2014-06-06 07:43:58', '', 'Terms & Conditions', '', 'inherit', 'closed', 'open', '', '134-revision-v1', '', '', '2014-06-06 17:43:58', '2014-06-06 07:43:58', '', 134, 'http://mab.studio-culture.net/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2014-06-06 17:44:08', '2014-06-06 07:44:08', '', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2014-06-06 17:44:08', '2014-06-06 07:44:08', '', 0, 'http://mab.studio-culture.net/?page_id=136', 0, 'page', '', 0),
(137, 1, '2014-06-06 17:44:08', '2014-06-06 07:44:08', '', 'Privacy Policy', '', 'inherit', 'closed', 'open', '', '136-revision-v1', '', '', '2014-06-06 17:44:08', '2014-06-06 07:44:08', '', 136, 'http://mab.studio-culture.net/136-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2014-06-06 17:44:16', '2014-06-06 07:44:16', '', 'Delivery', '', 'publish', 'closed', 'open', '', 'delivery', '', '', '2014-06-06 17:44:16', '2014-06-06 07:44:16', '', 0, 'http://mab.studio-culture.net/?page_id=138', 0, 'page', '', 0),
(139, 1, '2014-06-06 17:44:16', '2014-06-06 07:44:16', '', 'Delivery', '', 'inherit', 'closed', 'open', '', '138-revision-v1', '', '', '2014-06-06 17:44:16', '2014-06-06 07:44:16', '', 138, 'http://mab.studio-culture.net/138-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2014-06-06 17:47:56', '2014-06-06 07:47:56', ' ', '', '', 'publish', 'closed', 'open', '', '140', '', '', '2014-06-06 17:47:56', '2014-06-06 07:47:56', '', 0, 'http://mab.studio-culture.net/?p=140', 3, 'nav_menu_item', '', 0),
(141, 1, '2014-06-06 17:47:56', '2014-06-06 07:47:56', ' ', '', '', 'publish', 'closed', 'open', '', '141', '', '', '2014-06-06 17:47:56', '2014-06-06 07:47:56', '', 0, 'http://mab.studio-culture.net/?p=141', 2, 'nav_menu_item', '', 0),
(142, 1, '2014-06-06 17:47:56', '2014-06-06 07:47:56', ' ', '', '', 'publish', 'closed', 'open', '', '142', '', '', '2014-06-06 17:47:56', '2014-06-06 07:47:56', '', 0, 'http://mab.studio-culture.net/?p=142', 1, 'nav_menu_item', '', 0),
(143, 1, '2014-06-06 17:47:56', '2014-06-06 07:47:56', ' ', '', '', 'publish', 'closed', 'open', '', '143', '', '', '2014-06-06 17:47:56', '2014-06-06 07:47:56', '', 0, 'http://mab.studio-culture.net/?p=143', 4, 'nav_menu_item', '', 0),
(144, 1, '2014-06-06 21:34:37', '2014-06-06 11:34:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://mab.studio-culture.net/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Meat at Billy\'s', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-06-06 21:34:37', '2014-06-06 11:34:37', '', 2, 'http://mab.studio-culture.net/2-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2014-06-06 22:02:11', '2014-06-06 12:02:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Meat at Billy\'s', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-06-06 22:02:11', '2014-06-06 12:02:11', '', 2, 'http://mab.studio-culture.net/2-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2014-06-09 17:58:17', '2014-06-09 07:58:17', '', 'Beef', '', 'inherit', 'closed', 'open', '', 'categories-beef', '', '', '2014-06-09 17:58:17', '2014-06-09 07:58:17', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-beef.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2014-06-12 18:36:00', '2014-06-12 08:36:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'closed', 'open', '', '1-revision-v1', '', '', '2014-06-12 18:36:00', '2014-06-12 08:36:00', '', 1, 'http://mab.studio-culture.net/1-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2014-06-13 16:12:03', '2014-06-13 06:12:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Second blog post that has a heading that might spread over two whole lines', '', 'publish', 'closed', 'open', '', 'second-blog-post-that-has-a-heading-that-might-spread-over-two-whole-lines', '', '', '2014-06-13 16:30:18', '2014-06-13 06:30:18', '', 0, 'http://mab.studio-culture.net/?p=150', 0, 'post', '', 0),
(151, 1, '2014-06-13 16:12:03', '2014-06-13 06:12:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Second blog post that has a heading that might spread over two whole lines', '', 'inherit', 'closed', 'open', '', '150-revision-v1', '', '', '2014-06-13 16:12:03', '2014-06-13 06:12:03', '', 150, 'http://mab.studio-culture.net/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2014-06-13 16:29:55', '2014-06-13 06:29:55', '<img class="alignright wp-image-16 size-full" src="http://mab.studio-culture.net/wp-content/uploads/2013/06/T_1_front.jpg" alt="T_1_front" width="1000" height="1000" />Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Second blog post that has a heading that might spread over two whole lines', '', 'inherit', 'closed', 'open', '', '150-revision-v1', '', '', '2014-06-13 16:29:55', '2014-06-13 06:29:55', '', 150, 'http://mab.studio-culture.net/150-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2014-06-13 16:30:18', '2014-06-13 06:30:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Second blog post that has a heading that might spread over two whole lines', '', 'inherit', 'closed', 'open', '', '150-revision-v1', '', '', '2014-06-13 16:30:18', '2014-06-13 06:30:18', '', 150, 'http://mab.studio-culture.net/150-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2014-06-13 17:22:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2014-06-13 17:22:12', '0000-00-00 00:00:00', '', 0, 'http://mab.studio-culture.net/?post_type=acf&p=154', 0, 'acf', '', 0),
(156, 1, '2014-06-13 17:25:47', '2014-06-13 07:25:47', '', 'Three Col Grid', '', 'publish', 'closed', 'closed', '', 'acf_three-col-grid', '', '', '2014-06-13 17:25:47', '2014-06-13 07:25:47', '', 0, 'http://mab.studio-culture.net/?post_type=acf&#038;p=156', 0, 'acf', '', 0),
(157, 1, '2014-06-13 17:26:27', '2014-06-13 07:26:27', '', 'Products', '', 'inherit', 'closed', 'open', '', '114-revision-v1', '', '', '2014-06-13 17:26:27', '2014-06-13 07:26:27', '', 114, 'http://mab.studio-culture.net/114-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2014-06-13 17:32:55', '2014-06-13 07:32:55', '', 'Products', '', 'inherit', 'closed', 'open', '', '114-revision-v1', '', '', '2014-06-13 17:32:55', '2014-06-13 07:32:55', '', 114, 'http://mab.studio-culture.net/114-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2014-06-13 17:35:57', '2014-06-13 07:35:57', 'ghfhgdfhdfhdfhdfh', 'Beef', '', 'publish', 'closed', 'open', '', 'beef', '', '', '2014-06-13 17:56:03', '2014-06-13 07:56:03', '', 114, 'http://mab.studio-culture.net/?page_id=159', 0, 'page', '', 0),
(160, 1, '2014-06-13 17:35:57', '2014-06-13 07:35:57', 'ghfhgdfhdfhdfhdfh', 'Beef', '', 'inherit', 'closed', 'open', '', '159-revision-v1', '', '', '2014-06-13 17:35:57', '2014-06-13 07:35:57', '', 159, 'http://mab.studio-culture.net/159-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2014-06-13 17:36:14', '2014-06-13 07:36:14', '', 'Products', '', 'inherit', 'closed', 'open', '', '114-revision-v1', '', '', '2014-06-13 17:36:14', '2014-06-13 07:36:14', '', 114, 'http://mab.studio-culture.net/114-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2014-06-13 17:51:48', '2014-06-13 07:51:48', '', 'Row Grid', '', 'publish', 'closed', 'closed', '', 'acf_row-grid', '', '', '2014-06-13 17:56:44', '2014-06-13 07:56:44', '', 0, 'http://mab.studio-culture.net/?post_type=acf&#038;p=162', 0, 'acf', '', 0),
(163, 1, '2014-06-13 17:52:16', '2014-06-13 07:52:16', 'ghfhgdfhdfhdfhdfh', 'Beef', '', 'inherit', 'closed', 'open', '', '159-revision-v1', '', '', '2014-06-13 17:52:16', '2014-06-13 07:52:16', '', 159, 'http://mab.studio-culture.net/159-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2014-06-13 17:56:03', '2014-06-13 07:56:03', 'ghfhgdfhdfhdfhdfh', 'Beef', '', 'inherit', 'closed', 'open', '', '159-revision-v1', '', '', '2014-06-13 17:56:03', '2014-06-13 07:56:03', '', 159, 'http://mab.studio-culture.net/159-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2014-06-13 18:04:16', '2014-06-13 08:04:16', '', 'Pork', '', 'publish', 'closed', 'open', '', 'pork', '', '', '2014-06-13 18:04:16', '2014-06-13 08:04:16', '', 114, 'http://mab.studio-culture.net/?page_id=165', 0, 'page', '', 0),
(166, 1, '2014-06-13 18:04:16', '2014-06-13 08:04:16', '', 'Pork', '', 'inherit', 'closed', 'open', '', '165-revision-v1', '', '', '2014-06-13 18:04:16', '2014-06-13 08:04:16', '', 165, 'http://mab.studio-culture.net/165-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2014-06-13 18:04:30', '2014-06-13 08:04:30', '', 'Poultry', '', 'publish', 'closed', 'open', '', 'poultry', '', '', '2014-06-13 18:04:30', '2014-06-13 08:04:30', '', 114, 'http://mab.studio-culture.net/?page_id=167', 0, 'page', '', 0),
(168, 1, '2014-06-13 18:04:30', '2014-06-13 08:04:30', '', 'Poultry', '', 'inherit', 'closed', 'open', '', '167-revision-v1', '', '', '2014-06-13 18:04:30', '2014-06-13 08:04:30', '', 167, 'http://mab.studio-culture.net/167-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2014-06-13 18:04:43', '2014-06-13 08:04:43', '', 'Lamb', '', 'publish', 'closed', 'open', '', 'lamb', '', '', '2014-06-13 18:04:43', '2014-06-13 08:04:43', '', 114, 'http://mab.studio-culture.net/?page_id=169', 0, 'page', '', 0),
(170, 1, '2014-06-13 18:04:43', '2014-06-13 08:04:43', '', 'Lamb', '', 'inherit', 'closed', 'open', '', '169-revision-v1', '', '', '2014-06-13 18:04:43', '2014-06-13 08:04:43', '', 169, 'http://mab.studio-culture.net/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2014-06-13 18:05:09', '2014-06-13 08:05:09', '', 'Delicatessen', '', 'publish', 'closed', 'open', '', 'delicatessen', '', '', '2014-06-13 18:05:09', '2014-06-13 08:05:09', '', 114, 'http://mab.studio-culture.net/?page_id=171', 0, 'page', '', 0),
(172, 1, '2014-06-13 18:05:09', '2014-06-13 08:05:09', '', 'Delicatessen', '', 'inherit', 'closed', 'open', '', '171-revision-v1', '', '', '2014-06-13 18:05:09', '2014-06-13 08:05:09', '', 171, 'http://mab.studio-culture.net/171-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2014-06-13 18:05:25', '2014-06-13 08:05:25', '', 'Sausages', '', 'publish', 'closed', 'open', '', 'sausages', '', '', '2014-06-13 18:05:25', '2014-06-13 08:05:25', '', 114, 'http://mab.studio-culture.net/?page_id=173', 0, 'page', '', 0),
(174, 1, '2014-06-13 18:05:25', '2014-06-13 08:05:25', '', 'Sausages', '', 'inherit', 'closed', 'open', '', '173-revision-v1', '', '', '2014-06-13 18:05:25', '2014-06-13 08:05:25', '', 173, 'http://mab.studio-culture.net/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2014-06-13 18:05:39', '2014-06-13 08:05:39', '', 'Ready To Cook', '', 'publish', 'closed', 'open', '', 'ready-to-cook', '', '', '2014-06-13 18:05:39', '2014-06-13 08:05:39', '', 114, 'http://mab.studio-culture.net/?page_id=175', 0, 'page', '', 0),
(176, 1, '2014-06-13 18:05:39', '2014-06-13 08:05:39', '', 'Ready To Cook', '', 'inherit', 'closed', 'open', '', '175-revision-v1', '', '', '2014-06-13 18:05:39', '2014-06-13 08:05:39', '', 175, 'http://mab.studio-culture.net/175-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2014-06-13 18:07:00', '2014-06-13 08:07:00', '', 'Products', '', 'inherit', 'closed', 'open', '', '114-revision-v1', '', '', '2014-06-13 18:07:00', '2014-06-13 08:07:00', '', 114, 'http://mab.studio-culture.net/114-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2014-06-16 19:51:52', '2014-06-16 09:51:52', ' ', '', '', 'publish', 'closed', 'open', '', '178', '', '', '2014-06-16 19:53:14', '2014-06-16 09:53:14', '', 114, 'http://mab.studio-culture.net/?p=178', 1, 'nav_menu_item', '', 0),
(179, 1, '2014-06-16 19:51:52', '2014-06-16 09:51:52', ' ', '', '', 'publish', 'closed', 'open', '', '179', '', '', '2014-06-16 19:53:14', '2014-06-16 09:53:14', '', 114, 'http://mab.studio-culture.net/?p=179', 2, 'nav_menu_item', '', 0),
(180, 1, '2014-06-16 19:51:52', '2014-06-16 09:51:52', ' ', '', '', 'publish', 'closed', 'open', '', '180', '', '', '2014-06-16 19:53:14', '2014-06-16 09:53:14', '', 114, 'http://mab.studio-culture.net/?p=180', 3, 'nav_menu_item', '', 0),
(181, 1, '2014-06-16 19:51:52', '2014-06-16 09:51:52', ' ', '', '', 'publish', 'closed', 'open', '', '181', '', '', '2014-06-16 19:53:14', '2014-06-16 09:53:14', '', 114, 'http://mab.studio-culture.net/?p=181', 4, 'nav_menu_item', '', 0),
(182, 1, '2014-06-16 19:51:52', '2014-06-16 09:51:52', ' ', '', '', 'publish', 'closed', 'open', '', '182', '', '', '2014-06-16 19:53:14', '2014-06-16 09:53:14', '', 114, 'http://mab.studio-culture.net/?p=182', 5, 'nav_menu_item', '', 0),
(184, 1, '2014-06-16 19:51:52', '2014-06-16 09:51:52', ' ', '', '', 'publish', 'closed', 'open', '', '184', '', '', '2014-06-16 19:53:14', '2014-06-16 09:53:14', '', 114, 'http://mab.studio-culture.net/?p=184', 6, 'nav_menu_item', '', 0),
(186, 1, '2014-06-17 11:40:01', '2014-06-17 01:40:01', '', 'categories-pork', '', 'inherit', 'closed', 'open', '', 'categories-pork', '', '', '2014-06-17 11:40:01', '2014-06-17 01:40:01', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-pork.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2014-06-17 11:40:14', '2014-06-17 01:40:14', '', 'categories-poultry', '', 'inherit', 'closed', 'open', '', 'categories-poultry', '', '', '2014-06-17 11:40:14', '2014-06-17 01:40:14', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-poultry.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2014-06-17 11:40:25', '2014-06-17 01:40:25', '', 'categories-lamb', '', 'inherit', 'closed', 'open', '', 'categories-lamb', '', '', '2014-06-17 11:40:25', '2014-06-17 01:40:25', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-lamb.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2014-06-17 11:40:41', '2014-06-17 01:40:41', '', 'categories-sausages', '', 'inherit', 'closed', 'open', '', 'categories-sausages', '', '', '2014-06-17 11:40:41', '2014-06-17 01:40:41', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-sausages.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2014-06-17 11:41:01', '2014-06-17 01:41:01', '', 'categories-deli', '', 'inherit', 'closed', 'open', '', 'categories-deli', '', '', '2014-06-17 11:41:01', '2014-06-17 01:41:01', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-deli.png', 0, 'attachment', 'image/png', 0),
(191, 1, '2014-06-17 11:42:41', '2014-06-17 01:42:41', '', 'categories-new', '', 'inherit', 'closed', 'open', '', 'categories-new', '', '', '2014-06-17 11:42:41', '2014-06-17 01:42:41', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-new.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2014-06-17 11:42:54', '2014-06-17 01:42:54', '', 'categories-readytocook', '', 'inherit', 'closed', 'open', '', 'categories-readytocook', '', '', '2014-06-17 11:42:54', '2014-06-17 01:42:54', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-readytocook.png', 0, 'attachment', 'image/png', 0),
(193, 1, '2014-06-17 11:43:11', '2014-06-17 01:43:11', '', 'categories-pickoftheweek', '', 'inherit', 'closed', 'open', '', 'categories-pickoftheweek', '', '', '2014-06-17 11:43:11', '2014-06-17 01:43:11', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/categories-pickoftheweek.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2014-06-17 15:07:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2014-06-17 15:07:07', '0000-00-00 00:00:00', '', 0, 'http://mab.studio-culture.net/?p=194', 0, 'post', '', 0),
(195, 1, '2014-06-18 15:24:22', '2014-06-18 05:24:22', '', 'footer-logo', '', 'inherit', 'closed', 'open', '', 'footer-logo', '', '', '2014-06-18 15:24:22', '2014-06-18 05:24:22', '', 0, 'http://mab.studio-culture.net/wp-content/uploads/2014/06/footer-logo.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2014-06-19 10:23:16', '2014-06-19 00:23:16', '[gravityform id="1" name="Contact Form" title="false" description="false" ajax="true"]', 'Contact', '', 'inherit', 'closed', 'open', '', '122-revision-v1', '', '', '2014-06-19 10:23:16', '2014-06-19 00:23:16', '', 122, 'http://mab.studio-culture.net/122-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `mab_posts`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_form`
#

DROP TABLE IF EXISTS `mab_rg_form`;


#
# Table structure of table `mab_rg_form`
#

CREATE TABLE `mab_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_form`
#
INSERT INTO `mab_rg_form` ( `id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Contact Form', '2014-06-19 00:16:18', 1, 0) ;

#
# End of data contents of table `mab_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_form_meta`
#

DROP TABLE IF EXISTS `mab_rg_form_meta`;


#
# Table structure of table `mab_rg_form_meta`
#

CREATE TABLE `mab_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_form_meta`
#
INSERT INTO `mab_rg_form_meta` ( `form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"id":1,"title":"Contact Form","description":"We would love to hear from you! Please fill out this form and we will get in touch with you shortly.","labelPlacement":"top_label","maxEntriesMessage":"","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":1,"inputName":"","isRequired":true,"label":"Name","noDuplicates":"","size":"medium","type":"name","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"simple","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","formId":1,"descriptionPlacement":"below","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":""},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":2,"inputName":"","isRequired":false,"label":"Phone","noDuplicates":"","size":"medium","type":"phone","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"international","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","formId":1,"descriptionPlacement":"below","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":""},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":3,"inputName":"","isRequired":true,"label":"Email","noDuplicates":"","size":"medium","type":"email","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","formId":1,"descriptionPlacement":"below","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":""},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":4,"inputName":"","isRequired":true,"label":"Message","noDuplicates":"","size":"medium","type":"textarea","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":1,"descriptionPlacement":"below","multipleFiles":false,"maxFiles":""}],"useCurrentUserAsAuthor":true,"descriptionPlacement":"below","cssClass":"","enableHoneypot":false,"enableAnimation":false,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"limitEntries":false,"limitEntriesCount":"","limitEntriesMessage":"","limitEntriesPeriod":"","requireLogin":false,"requireLoginMessage":"","scheduleForm":false,"scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","scheduleMessage":""}', NULL, '{"53a22cf38d80e":{"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":"","disableAutoformat":false,"id":"53a22cf38d80e","name":"Default Confirmation","isDefault":true}}', '{"53a22cf38db77":{"to":"{admin_email}","subject":"New submission from {form_title}","message":"{all_fields}","toType":"email","event":"form_submission","name":"Admin Notification","type":"admin","id":"53a22cf38db77"}}') ;

#
# End of data contents of table `mab_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_form_view`
#

DROP TABLE IF EXISTS `mab_rg_form_view`;


#
# Table structure of table `mab_rg_form_view`
#

CREATE TABLE `mab_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_form_view`
#
INSERT INTO `mab_rg_form_view` ( `id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2014-06-19 00:23:20', '10.0.1.2', 6) ;

#
# End of data contents of table `mab_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_lead`
#

DROP TABLE IF EXISTS `mab_rg_lead`;


#
# Table structure of table `mab_rg_lead`
#

CREATE TABLE `mab_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `payment_method` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_lead`
#

#
# End of data contents of table `mab_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_lead_detail`
#

DROP TABLE IF EXISTS `mab_rg_lead_detail`;


#
# Table structure of table `mab_rg_lead_detail`
#

CREATE TABLE `mab_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_lead_detail`
#

#
# End of data contents of table `mab_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `mab_rg_lead_detail_long`;


#
# Table structure of table `mab_rg_lead_detail_long`
#

CREATE TABLE `mab_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_lead_detail_long`
#

#
# End of data contents of table `mab_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_lead_meta`
#

DROP TABLE IF EXISTS `mab_rg_lead_meta`;


#
# Table structure of table `mab_rg_lead_meta`
#

CREATE TABLE `mab_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_lead_meta`
#

#
# End of data contents of table `mab_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `mab_rg_lead_notes`
#

DROP TABLE IF EXISTS `mab_rg_lead_notes`;


#
# Table structure of table `mab_rg_lead_notes`
#

CREATE TABLE `mab_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  `note_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_rg_lead_notes`
#

#
# End of data contents of table `mab_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `mab_term_relationships`
#

DROP TABLE IF EXISTS `mab_term_relationships`;


#
# Table structure of table `mab_term_relationships`
#

CREATE TABLE `mab_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_term_relationships`
#
INSERT INTO `mab_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(15, 16, 0),
(15, 21, 0),
(19, 2, 0),
(19, 16, 0),
(19, 21, 0),
(22, 4, 0),
(22, 13, 0),
(22, 15, 0),
(22, 16, 0),
(22, 21, 0),
(31, 2, 0),
(31, 16, 0),
(31, 17, 0),
(31, 21, 0),
(31, 26, 0),
(31, 27, 0),
(31, 28, 0),
(31, 29, 0),
(31, 30, 0),
(31, 31, 0),
(31, 32, 0),
(31, 33, 0),
(31, 34, 0),
(34, 2, 0),
(34, 16, 0),
(34, 17, 0),
(34, 21, 0),
(34, 26, 0),
(34, 27, 0),
(34, 28, 0),
(34, 29, 0),
(34, 30, 0),
(34, 31, 0),
(34, 32, 0),
(34, 33, 0),
(34, 34, 0),
(37, 2, 0),
(37, 16, 0),
(37, 17, 0),
(37, 21, 0),
(37, 26, 0),
(37, 27, 0),
(37, 28, 0),
(37, 29, 0),
(37, 30, 0),
(37, 31, 0),
(37, 32, 0),
(37, 33, 0),
(37, 34, 0),
(40, 4, 0),
(40, 13, 0),
(40, 14, 0),
(40, 16, 0),
(40, 17, 0),
(40, 21, 0),
(40, 26, 0),
(40, 27, 0),
(40, 28, 0),
(40, 29, 0),
(40, 30, 0),
(40, 31, 0),
(40, 32, 0),
(40, 33, 0),
(40, 34, 0),
(47, 2, 0),
(47, 16, 0),
(47, 17, 0),
(47, 21, 0),
(47, 26, 0),
(47, 27, 0),
(47, 28, 0),
(47, 29, 0),
(47, 30, 0),
(47, 31, 0),
(47, 32, 0),
(47, 33, 0),
(47, 34, 0),
(50, 2, 0),
(50, 16, 0),
(50, 17, 0),
(50, 21, 0),
(50, 26, 0),
(50, 27, 0),
(50, 28, 0),
(50, 29, 0),
(50, 30, 0),
(50, 31, 0),
(50, 32, 0),
(50, 33, 0),
(50, 34, 0),
(53, 2, 0),
(53, 16, 0),
(53, 17, 0),
(53, 21, 0),
(53, 26, 0),
(53, 27, 0),
(53, 28, 0),
(53, 29, 0) ;
INSERT INTO `mab_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(53, 30, 0),
(53, 31, 0),
(53, 32, 0),
(53, 33, 0),
(53, 34, 0),
(56, 2, 0),
(56, 16, 0),
(56, 17, 0),
(56, 21, 0),
(56, 26, 0),
(56, 27, 0),
(56, 28, 0),
(56, 29, 0),
(56, 30, 0),
(56, 31, 0),
(56, 32, 0),
(56, 33, 0),
(56, 34, 0),
(60, 2, 0),
(60, 16, 0),
(60, 17, 0),
(60, 21, 0),
(60, 26, 0),
(60, 27, 0),
(60, 28, 0),
(60, 29, 0),
(60, 30, 0),
(60, 31, 0),
(60, 32, 0),
(60, 33, 0),
(60, 34, 0),
(67, 2, 0),
(67, 16, 0),
(67, 17, 0),
(67, 19, 0),
(67, 21, 0),
(67, 26, 0),
(67, 27, 0),
(67, 28, 0),
(67, 29, 0),
(67, 30, 0),
(67, 31, 0),
(67, 32, 0),
(67, 33, 0),
(67, 34, 0),
(70, 2, 0),
(70, 16, 0),
(70, 17, 0),
(70, 19, 0),
(70, 21, 0),
(70, 26, 0),
(70, 27, 0),
(70, 28, 0),
(70, 29, 0),
(70, 30, 0),
(70, 31, 0),
(70, 32, 0),
(70, 33, 0),
(70, 34, 0),
(73, 2, 0),
(73, 16, 0),
(73, 17, 0),
(73, 19, 0),
(73, 21, 0),
(73, 26, 0),
(73, 27, 0),
(73, 28, 0),
(73, 29, 0),
(73, 30, 0),
(73, 31, 0),
(73, 32, 0),
(73, 33, 0),
(73, 34, 0),
(76, 2, 0),
(76, 16, 0),
(76, 17, 0),
(76, 19, 0),
(76, 21, 0),
(76, 26, 0),
(76, 27, 0),
(76, 28, 0),
(76, 29, 0),
(76, 30, 0),
(76, 31, 0),
(76, 32, 0),
(76, 33, 0),
(76, 34, 0),
(79, 2, 0),
(79, 16, 0),
(79, 17, 0),
(79, 19, 0),
(79, 21, 0),
(79, 26, 0),
(79, 27, 0),
(79, 28, 0),
(79, 29, 0),
(79, 30, 0),
(79, 31, 0),
(79, 32, 0),
(79, 33, 0) ;
INSERT INTO `mab_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(79, 34, 0),
(83, 2, 0),
(83, 16, 0),
(83, 17, 0),
(83, 18, 0),
(83, 21, 0),
(83, 22, 0),
(83, 26, 0),
(83, 27, 0),
(83, 28, 0),
(83, 29, 0),
(83, 30, 0),
(83, 31, 0),
(83, 32, 0),
(83, 33, 0),
(83, 34, 0),
(87, 2, 0),
(87, 16, 0),
(87, 17, 0),
(87, 18, 0),
(87, 21, 0),
(87, 22, 0),
(87, 26, 0),
(87, 27, 0),
(87, 28, 0),
(87, 29, 0),
(87, 30, 0),
(87, 31, 0),
(87, 32, 0),
(87, 33, 0),
(87, 34, 0),
(90, 2, 0),
(90, 16, 0),
(90, 17, 0),
(90, 18, 0),
(90, 21, 0),
(90, 22, 0),
(90, 26, 0),
(90, 27, 0),
(90, 28, 0),
(90, 29, 0),
(90, 30, 0),
(90, 31, 0),
(90, 32, 0),
(90, 33, 0),
(90, 34, 0),
(93, 2, 0),
(93, 16, 0),
(93, 17, 0),
(93, 18, 0),
(93, 20, 0),
(93, 21, 0),
(93, 26, 0),
(93, 27, 0),
(93, 28, 0),
(93, 29, 0),
(93, 30, 0),
(93, 31, 0),
(93, 32, 0),
(93, 33, 0),
(93, 34, 0),
(96, 2, 0),
(96, 16, 0),
(96, 17, 0),
(96, 18, 0),
(96, 21, 0),
(96, 22, 0),
(96, 26, 0),
(96, 27, 0),
(96, 28, 0),
(96, 29, 0),
(96, 30, 0),
(96, 31, 0),
(96, 32, 0),
(96, 33, 0),
(96, 34, 0),
(99, 2, 0),
(99, 16, 0),
(99, 17, 0),
(99, 18, 0),
(99, 20, 0),
(99, 21, 0),
(99, 26, 0),
(99, 27, 0),
(99, 28, 0),
(99, 29, 0),
(99, 30, 0),
(99, 31, 0),
(99, 32, 0),
(99, 33, 0),
(99, 34, 0),
(107, 23, 0),
(112, 23, 0),
(126, 23, 0),
(127, 23, 0),
(128, 23, 0),
(130, 24, 0),
(131, 24, 0),
(132, 24, 0),
(133, 24, 0) ;
INSERT INTO `mab_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(140, 25, 0),
(141, 25, 0),
(142, 25, 0),
(143, 25, 0),
(150, 1, 0),
(178, 35, 0),
(179, 35, 0),
(180, 35, 0),
(181, 35, 0),
(182, 35, 0),
(184, 35, 0) ;

#
# End of data contents of table `mab_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `mab_term_taxonomy`
#

DROP TABLE IF EXISTS `mab_term_taxonomy`;


#
# Table structure of table `mab_term_taxonomy`
#

CREATE TABLE `mab_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_term_taxonomy`
#
INSERT INTO `mab_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'product_type', '', 0, 21),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'shop_order_status', '', 0, 0),
(7, 7, 'shop_order_status', '', 0, 0),
(8, 8, 'shop_order_status', '', 0, 0),
(9, 9, 'shop_order_status', '', 0, 0),
(10, 10, 'shop_order_status', '', 0, 0),
(11, 11, 'shop_order_status', '', 0, 0),
(12, 12, 'shop_order_status', '', 0, 0),
(13, 13, 'pa_color', '', 0, 2),
(14, 14, 'pa_color', '', 0, 1),
(15, 15, 'pa_color', '', 0, 1),
(16, 16, 'product_cat', '', 0, 23),
(17, 17, 'product_cat', '', 16, 20),
(18, 18, 'product_cat', '', 0, 6),
(19, 19, 'product_cat', '', 0, 5),
(20, 20, 'product_cat', '', 18, 2),
(21, 21, 'product_cat', '', 16, 23),
(22, 22, 'product_cat', '', 18, 4),
(23, 23, 'nav_menu', '', 0, 5),
(24, 24, 'nav_menu', '', 0, 4),
(25, 25, 'nav_menu', '', 0, 4),
(26, 26, 'product_cat', '', 0, 20),
(27, 27, 'product_cat', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 0, 20),
(28, 28, 'product_cat', '', 0, 20),
(29, 29, 'product_cat', '', 0, 20),
(30, 30, 'product_cat', '', 0, 20),
(31, 31, 'product_cat', '', 0, 20),
(32, 32, 'product_cat', '', 0, 20),
(33, 33, 'product_cat', '', 0, 20),
(34, 34, 'product_cat', '', 0, 20),
(35, 35, 'nav_menu', '', 0, 6) ;

#
# End of data contents of table `mab_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `mab_terms`
#

DROP TABLE IF EXISTS `mab_terms`;


#
# Table structure of table `mab_terms`
#

CREATE TABLE `mab_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_terms`
#
INSERT INTO `mab_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'pending', 'pending', 0),
(7, 'failed', 'failed', 0),
(8, 'on-hold', 'on-hold', 0),
(9, 'processing', 'processing', 0),
(10, 'completed', 'completed', 0),
(11, 'refunded', 'refunded', 0),
(12, 'cancelled', 'cancelled', 0),
(13, 'Black', 'black', 0),
(14, 'Blue', 'blue', 0),
(15, 'Green', 'green', 0),
(16, 'Clothing', 'clothing', 0),
(17, 'Hoodies', 'hoodies', 0),
(18, 'Music', 'music', 0),
(19, 'Posters', 'posters', 0),
(20, 'Singles', 'singles', 0),
(21, 'T-shirts', 't-shirts', 0),
(22, 'Albums', 'albums', 0),
(23, 'Main Navigation', 'main-navigation', 0),
(24, 'Top Sub Nav', 'top-sub-nav', 0),
(25, 'Footer - Helpful info', 'footer-helpful-info', 0),
(26, 'New Products', 'new-products', 0),
(27, 'Beef', 'beef', 0),
(28, 'Pork', 'pork', 0),
(29, 'Poultry', 'poultry', 0),
(30, 'Lamb', 'lamb', 0),
(31, 'Sausages', 'sausages', 0),
(32, 'Deli', 'deli', 0),
(33, 'Ready To Cook', 'ready-to-cook', 0),
(34, 'Pick of the Week', 'pick-of-the-week', 0),
(35, 'Products', 'products', 0) ;

#
# End of data contents of table `mab_terms`
# --------------------------------------------------------



#
# Delete any existing table `mab_usermeta`
#

DROP TABLE IF EXISTS `mab_usermeta`;


#
# Table structure of table `mab_usermeta`
#

CREATE TABLE `mab_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_usermeta`
#
INSERT INTO `mab_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'Fil'),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'studio-culture'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'mab_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'mab_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'mab_dashboard_quick_press_last_post_id', '194'),
(15, 1, 'wporg_favorites', 'studioculture'),
(16, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}'),
(17, 1, 'billing_first_name', ''),
(18, 1, 'billing_last_name', ''),
(19, 1, 'billing_company', ''),
(20, 1, 'billing_address_1', ''),
(21, 1, 'billing_address_2', ''),
(22, 1, 'billing_city', ''),
(23, 1, 'billing_postcode', ''),
(24, 1, 'billing_state', ''),
(25, 1, 'billing_country', ''),
(26, 1, 'billing_phone', ''),
(27, 1, 'billing_email', ''),
(28, 1, 'shipping_first_name', ''),
(29, 1, 'shipping_last_name', ''),
(30, 1, 'shipping_company', ''),
(31, 1, 'shipping_address_1', ''),
(32, 1, 'shipping_address_2', ''),
(33, 1, 'shipping_city', ''),
(34, 1, 'shipping_postcode', ''),
(35, 1, 'shipping_state', ''),
(36, 1, 'shipping_country', ''),
(37, 1, 'mab_user-settings', 'ed_size=541&align=none&imgsize=full&libraryContent=browse&editor=tinymce&hidetb=0'),
(38, 1, 'mab_user-settings-time', '1403086645'),
(39, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(40, 1, 'metaboxhidden_nav-menus', 'a:9:{i:0;s:8:"add-post";i:1;s:11:"add-product";i:2;s:15:"add-custom_type";i:3;s:12:"add-post_tag";i:4;s:15:"add-post_format";i:5;s:14:"add-custom_cat";i:6;s:14:"add-custom_tag";i:7;s:15:"add-product_cat";i:8;s:15:"add-product_tag";}'),
(41, 1, 'nav_menu_recently_edited', '35') ;

#
# End of data contents of table `mab_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `mab_users`
#

DROP TABLE IF EXISTS `mab_users`;


#
# Table structure of table `mab_users`
#

CREATE TABLE `mab_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_users`
#
INSERT INTO `mab_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'studio-culture', '$P$B8rQa/JCE4iSNWC4.c9F5uA55VGP1P1', 'studio-culture', 'fil@studio-culture.com.au', '', '2014-03-19 00:39:57', '', 0, 'Fil') ;

#
# End of data contents of table `mab_users`
# --------------------------------------------------------



#
# Delete any existing table `mab_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `mab_woocommerce_attribute_taxonomies`;


#
# Table structure of table `mab_woocommerce_attribute_taxonomies`
#

CREATE TABLE `mab_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_woocommerce_attribute_taxonomies`
#
INSERT INTO `mab_woocommerce_attribute_taxonomies` ( `attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`) VALUES
(1, 'color', NULL, 'select', 'menu_order') ;

#
# End of data contents of table `mab_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `mab_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `mab_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `mab_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `mab_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`,`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `mab_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `mab_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `mab_woocommerce_order_itemmeta`;


#
# Table structure of table `mab_woocommerce_order_itemmeta`
#

CREATE TABLE `mab_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_woocommerce_order_itemmeta`
#

#
# End of data contents of table `mab_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `mab_woocommerce_order_items`
#

DROP TABLE IF EXISTS `mab_woocommerce_order_items`;


#
# Table structure of table `mab_woocommerce_order_items`
#

CREATE TABLE `mab_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_woocommerce_order_items`
#

#
# End of data contents of table `mab_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `mab_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `mab_woocommerce_tax_rate_locations`;


#
# Table structure of table `mab_woocommerce_tax_rate_locations`
#

CREATE TABLE `mab_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `mab_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `mab_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `mab_woocommerce_tax_rates`;


#
# Table structure of table `mab_woocommerce_tax_rates`
#

CREATE TABLE `mab_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`),
  KEY `tax_rate_class` (`tax_rate_class`),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_woocommerce_tax_rates`
#

#
# End of data contents of table `mab_woocommerce_tax_rates`
# --------------------------------------------------------



#
# Delete any existing table `mab_woocommerce_termmeta`
#

DROP TABLE IF EXISTS `mab_woocommerce_termmeta`;


#
# Table structure of table `mab_woocommerce_termmeta`
#

CREATE TABLE `mab_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;


#
# Data contents of table `mab_woocommerce_termmeta`
#
INSERT INTO `mab_woocommerce_termmeta` ( `meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '10'),
(2, 17, 'order', '11'),
(3, 18, 'order', '13'),
(4, 19, 'order', '16'),
(5, 20, 'order', '15'),
(6, 21, 'order', '12'),
(7, 22, 'order', '14'),
(8, 16, 'product_count_product_cat', '23'),
(9, 21, 'product_count_product_cat', '23'),
(10, 17, 'product_count_product_cat', '20'),
(11, 19, 'product_count_product_cat', '5'),
(12, 22, 'product_count_product_cat', '4'),
(13, 18, 'product_count_product_cat', '6'),
(14, 20, 'product_count_product_cat', '2'),
(15, 26, 'order', '1'),
(16, 26, 'display_type', ''),
(17, 26, 'thumbnail_id', '191'),
(18, 27, 'order', '2'),
(19, 27, 'display_type', ''),
(20, 27, 'thumbnail_id', '147'),
(21, 28, 'order', '3'),
(22, 28, 'display_type', ''),
(23, 28, 'thumbnail_id', '186'),
(24, 29, 'order', '4'),
(25, 29, 'display_type', ''),
(26, 29, 'thumbnail_id', '187'),
(27, 30, 'order', '5'),
(28, 30, 'display_type', ''),
(29, 30, 'thumbnail_id', '188'),
(30, 31, 'order', '6'),
(31, 31, 'display_type', ''),
(32, 31, 'thumbnail_id', '189'),
(33, 32, 'order', '7'),
(34, 32, 'display_type', ''),
(35, 32, 'thumbnail_id', '190'),
(36, 33, 'order', '8'),
(37, 33, 'display_type', ''),
(38, 33, 'thumbnail_id', '192'),
(39, 34, 'order', '9'),
(40, 34, 'display_type', ''),
(41, 34, 'thumbnail_id', '193'),
(42, 27, 'product_count_product_cat', '20'),
(43, 32, 'product_count_product_cat', '20'),
(44, 30, 'product_count_product_cat', '20'),
(45, 26, 'product_count_product_cat', '20'),
(46, 34, 'product_count_product_cat', '20'),
(47, 28, 'product_count_product_cat', '20'),
(48, 29, 'product_count_product_cat', '20'),
(49, 33, 'product_count_product_cat', '20'),
(50, 31, 'product_count_product_cat', '20') ;

#
# End of data contents of table `mab_woocommerce_termmeta`
# --------------------------------------------------------

#
# Add constraints back in
#

