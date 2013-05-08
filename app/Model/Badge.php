<?php

class Badge extends AppModel {
	var $name = 'Badge';
    var $hasAndBelongsToMany = array(
        'TopicPhoto' => array(
            'className' => 'TopicPhoto',
            'unique' => false,
            'joinTable'              => 'topic_photo_badges',
            'foreignKey'             => 'badge_id',
            'associationForeignKey'  => 'topic_photo_id'
            )
        );
} 
?>