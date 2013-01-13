<?php
	class Summary extends AppModel {
		var $name = 'Summary';
		var $belongsTo = array(
	        'Board',
	        'User'
	    );
	}
?>