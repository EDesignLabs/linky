<?php

class Comment extends AppModel {
	var $name = 'Comment';
	var $validate = array(
        /*'comment' => array(
        	'rule' => 'alphaNumeric',
            'message' => 'Comment cannot be blank',
            'required' => true,
            'allowEmpty' => false
            )*/
        );

    var $belongsTo = array(
    'TopicPhoto' => 
    	array(
    		'className'    => 'TopicPhoto',
		  	'foreignKey'   => 'topic_photo_id'
    		),
    'User' => 
    	array(
    		'className'    => 'User',
		  	'foreignKey'   => 'user_id'
    		)
    	);

	public function isOwnedBy($comment, $user) {
	    return $this->field('id', array('id' => $comment, 'user_id' => $user)) === $comment;
	}
} 
?>