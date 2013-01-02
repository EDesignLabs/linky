<?php

class Topic extends AppModel {
	var $name = 'Topic';
	public $validate = array();

    var $belongsTo = array(
    'Board' => 
    	array(
    		'className'    => 'Board',
		  	'foreignKey'   => 'board_id'
    		),
    'User' => 
    	array(
    		'className'    => 'User',
		  	'foreignKey'   => 'user_id'
    		)
    	);

	var $hasMany = array(
	'TopicPhoto' =>
	array('className'    => 'TopicPhoto',
		  'dependent'    => true,
		  'foreignKey'   => 'topic_id',
		  'conditions'   => array(
		  	'TopicPhoto.active' => 1
		  	)
	));

	public function isOwnedBy($topic, $user) {
	    return $this->field('id', array('id' => $topic, 'user_id' => $user)) === $topic;
	}
} 
?>