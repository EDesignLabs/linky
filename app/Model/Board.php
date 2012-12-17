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
} 
?>