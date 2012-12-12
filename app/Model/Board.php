<?php

class Board extends AppModel {
	var $name = 'Board';
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
        ),
        'image' => array(
            'rule' => array('url')
            )
    );
	var $hasMany = array(
	'Topic' =>
	array('className'    => 'Topic',
		  'conditions'   => '',
		  'order'        => '',
		  'dependent'    => true,
		  'foreignKey'   => 'board_id'
	));
} 
?>