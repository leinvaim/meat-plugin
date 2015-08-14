<?php

/**
 * SOD Plugin Notifier
 */
if(!class_exists('SOD_Plugin_Notifier')):
	class SOD_Plugin_Notifier {
		
		function __construct() {
			global $sod_plugins;
			define( 'SOD_PLUGIN_NOTIFIER_CACHE_INTERVAL', 1 ); 
			add_filter( 'pre_set_site_transient_update_plugins',  array($this,'display_transient_update_plugins') );  
			add_filter( 'plugins_api_result', array($this,'api_res'), 10, 3 );
		}
		function display_transient_update_plugins($transient){
			global $sod_plugins;
			if($sod_plugins):
				foreach($sod_plugins as $plugin_name=>$plugin_data):
					$plugin_path = $plugin_data['SOD_NOTIFIER_PLUGIN_FOLDER_NAME'];
		 			$response 	= $this->SOD_Get_Latest_Plugin_Version( SOD_PLUGIN_NOTIFIER_CACHE_INTERVAL, $plugin_data );
					$latest  	= (array) $response;
					$plugin  	= $plugin_data['SOD_NOTIFIER_PLUGIN_FOLDER_NAME'] . '/' . $plugin_data['SOD_NOTIFIER_PLUGIN_FILE_NAME'];
					if( version_compare( $latest['latest'], $transient->checked[$plugin], '>' ) ):
						$xml 				= (array)$this->SOD_Get_Latest_Plugin_Version(SOD_PLUGIN_NOTIFIER_CACHE_INTERVAL, $plugin_data); 
						$res 				= new stdClass();  
				    	$res->slug 			= $plugin_data['SOD_NOTIFIER_PLUGIN_FOLDER_NAME'];  
						$res->name 			= $plugin_data['SOD_NOTIFIER_PLUGIN_NAME'];
				    	$res->new_version 	= $xml['latest'];  
				    	$res->url 			= $xml['url'];  
				    	$res->package 		= '';
						$res->date 			= $xml['date']; 
						$res->author 		= $xml['author']; 
						$res->requires 		= $xml['requires'];
						$res->compatibility = $xml['tested']; 
						$res->homepage 		= $xml['homepage']; 
						$res->external 		= 'true'; // Unused
						$res->package 		= '';
						$res->file_name 	= '';
						
						$sections = array(
							'description',
			                'installation',
			                'screenshots',
			                'changelog',
			                'faq',
			                'other notes'
			               );
						$sections = apply_filters('sod_plugin_update_sections', $sections);
						foreach ($sections as $section) {
							if(isset($xml[$section]) && $xml[$section] !=''):
								$res->sections[$section] = $xml[$section];
							endif;					
						}
						
						 $transient->response[$plugin] = $res;
					endif;
			endforeach;
		endif;
		return $transient;
	}
	function api_res($res, $action, $args){
		global $sod_plugins;
		if($sod_plugins):
			foreach($sod_plugins as $plugin_name=>$plugin_data):
				if($args->slug == $plugin_data['SOD_NOTIFIER_PLUGIN_FOLDER_NAME']):
					$xml 				= (array)$this->SOD_Get_Latest_Plugin_Version(SOD_PLUGIN_NOTIFIER_CACHE_INTERVAL, $plugin_data); 
					$res 				= new stdClass();  
			    	$res->slug 			= $plugin_data['SOD_NOTIFIER_PLUGIN_FOLDER_NAME'];  
					$res->name 			= $plugin_data['SOD_NOTIFIER_PLUGIN_NAME'];
			    	$res->new_version 	= $xml['latest'];  
			    	$res->url 			= $xml['url'];  
			    	$res->package 		= '';
					$res->date 			= $xml['date']; 
					$res->author 		= $xml['author']; 
					$res->requires 		= $xml['requires'];
					$res->compatibility = $xml['tested']; 
					$res->homepage 		= $xml['homepage']; 
					$res->external 		= 'true'; // Unused
					$res->package 		= '';
					$res->file_name 	= '';
					
					$sections = array(
						'description',
		                'installation',
		                'screenshots',
		                'changelog',
		                'faq',
		                'other notes'
		               );
					 $sections = apply_filters('sod_plugin_update_sections', $sections);
					foreach ($sections as $section) {
						if(isset($xml[$section]) && $xml[$section] !=''):
							$res->sections[$section] = $xml[$section];
						endif;					
					}
				endif;
			endforeach;
		endif;
		return $res;
	}
		
	function SOD_Get_Latest_Plugin_Version($interval, $plugin_data) {
		$notifier_file_url 				= 'http://61extensions.com/sod-api/' . $plugin_data['SOD_NOTIFIER_PLUGIN_XML_FILE'];	
		$db_cache_field 				= $plugin_data['SOD_NOTIFIER_PLUGIN_NAME'] . 'notifier-cache';
		$db_cache_field_last_updated 	= $plugin_data['SOD_NOTIFIER_PLUGIN_NAME'] . 'notifier-cache-last-updated';
		$last = get_option( $db_cache_field_last_updated );
		$now = time();
		
		if ( !$last || (( $now - $last ) > $interval) ) {
			if( function_exists('curl_init') ) { // if cURL is available, use it...
				$ch = curl_init($notifier_file_url);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($ch, CURLOPT_HEADER, 0);
				curl_setopt($ch, CURLOPT_TIMEOUT, 10);
				$cache = curl_exec($ch);
				curl_close($ch);
			} else {
				$cache = file_get_contents($notifier_file_url); // ...if not, use the common file_get_contents()
			}
	
			if ($cache) {			
				update_option( $db_cache_field, $cache );
				update_option( $db_cache_field_last_updated, time() );
			} 
			$notifier_data = get_option( $db_cache_field );
		}
		else {
			// cache file is fresh enough, so read from it
			$notifier_data = get_option( $db_cache_field );
		}
		if( strpos((string)$notifier_data, '<notifier>') === false ) {
			$data = get_plugin_data( $plugin_data['SOD_NOTIFIER_PLUGIN_FILE_NAME'] );
			$notifier_data = '<?xml version="1.0" encoding="UTF-8"?><notifier><latest>'.$data['Version'].'</latest><changelog></changelog></notifier>';
			
		}
		$xml = simplexml_load_string($notifier_data, null, LIBXML_NOCDATA); 
		
		return $xml;
	}
}
$SOD_Plugin_Notifier = new SOD_Plugin_Notifier();
endif;
