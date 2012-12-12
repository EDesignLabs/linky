<?php

class TopicPhoto extends AppModel {
	var $name = 'TopicPhoto';
	var $belongsTo = array(
		'Topic' =>
			array('className'    => 'Topic',
				  'foreignKey'   => 'topic_id'
			));
} 
?>