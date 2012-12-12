<?php

class Topic extends AppModel {
	var $name = 'Topic';
	public $validate = array();

    var $belongsTo = array(
    'Board' => 
    	array(
    		'className'    => 'Board',
		  	'foreignKey'   => 'board_id'
    		)
    	);

	var $hasMany = array(
	'TopicPhoto' =>
	array('className'    => 'TopicPhoto',
		  'dependent'    => true,
		  'foreignKey'   => 'topic_id'
	));
} 
?>