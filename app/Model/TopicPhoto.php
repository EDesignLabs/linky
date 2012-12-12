<?php

class TopicPhoto extends AppModel {
	var $name = 'TopicPhoto';
	/*public $validate = array(
        'image' => array(
        	'url' => array(
        		'required' => true,
        		'rule' => 'url',
        		'message' => 'URL to image is incorrect'
        		)
        )
    );*/
	var $belongsTo = array(
		'Topic' =>
			array('className'    => 'Topic',
				  'foreignKey'   => 'topic_id'
			));
} 
?>