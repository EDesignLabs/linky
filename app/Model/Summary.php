<?php
	class Summary extends AppModel {
		var $name = 'Summary';
		var $belongsTo = array(
	        'Board',
	        'User'
	    );
	    public function isOwnedBy($summary, $user) {
		    return $this->field('id', array('id' => $summary, 'user_id' => $user)) === $summary;
		}
	}
?>