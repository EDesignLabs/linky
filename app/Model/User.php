<?php

class User extends AppModel {
    var $name = 'User';
    public $validate = array(
        'username' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'notEmpty' => true
            ),
            'isUnique' => array(
                'rule' => 'isUnique',
                'message' => 'username is already taken'
                ),
            'email' => array(
                'rule' => 'email',
                'message' => 'A valid email is needed'
                )
        ),
        'password' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'A password is required'
            )
        ),
        'role' => array(
            'valid' => array(
                'rule' => array('inList', array('admin', 'student','teacher')),
                'message' => 'Please enter a valid role',
                'allowEmpty' => false
            )
        )
    );
    var $hasMany = array(
        'TopicPhoto',
        'Board',
        'Topic'
    );

    public function beforeSave($options = array()) {
        if (isset($this->data[$this->alias]['password'])) {
            $this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
        }
        return true;
    }
}

?>