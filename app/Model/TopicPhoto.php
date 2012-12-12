<?php

class TopicPhoto extends AppModel {
	var $name = 'TopicPhoto';
	public $validate = array(
        'image' => array(
            'rule' => array(
            	'url',
            	'required'
            	)
            )
    );
	var $belongsTo = array(
		'Topic' =>
			array('className'    => 'Topic',
				  'foreignKey'   => 'topic_id'
			));
} 
?>