<?php

class Topic extends AppModel {
	var $name = 'Topic';
	public $validate = array(
        'title' => array(
            'alphaNumeric' => array(
                'rule'     => 'alphaNumeric',
                'message'  => 'Alphabets and numbers only'
            ),
            'between' => array(
                'rule'    => array('between', 0, 255),
                'message' => 'Between 0 to 255 characters'
            )
        )
    );

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