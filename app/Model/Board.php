<?php

class Board extends AppModel {
	var $name = 'Board';
	public $validate = array();
	var $hasMany = array(
	'Topic' =>
	array('className'    => 'Topic',
		  'conditions'   => '',
		  'order'        => '',
		  'dependent'    => true,
		  'foreignKey'   => 'board_id',
		  'conditions'   => array(
		  	'Topic.active' => 1
		  	)
	));

	var $belongsTo = array(
    'User' => 
    	array(
    		'className'    => 'User',
		  	'foreignKey'   => 'user_id'
    		)
    	);

	public function isOwnedBy($board, $user) {
	    return $this->field('id', array('id' => $board, 'user_id' => $user)) === $board;
	}
} 
?>