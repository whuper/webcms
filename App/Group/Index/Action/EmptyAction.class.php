<?php

class EmptyAction extends Action {
	
	function _empty() {
		header("HTTP/1.1 404 Not Found");  
		header("Status: 404 Not Found");
		echo '<h1>Not Found.</h1>';
		echo '<p>The requested URL '.$_SERVER['PHP_SELF'].' was not found on this server.</p>'; 
 
		//$this->display('Public:404');
	}
	
	public function index() {
		header("HTTP/1.1 404 Not Found");  
		header("Status: 404 Not Found");  
		echo '<h1>Not Found</h1>';    
		echo '<p>The requested URL '.$_SERVER['PHP_SELF'].' was not found on this server.</p>'; 
	
		//$this->display('Public:404');
	}
}


?>