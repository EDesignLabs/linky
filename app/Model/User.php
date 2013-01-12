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
        'repeat_password' => array(
            'required' => 'notEmpty',
            'match' => array(
                'rule' => 'validatePasswdConfirm',
                'message' => 'Passwords do not match'
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

    function validatePasswdConfirm($data){
        if ($this->data['User']['password'] !== $data['repeat_password']){
          return false;
        }
        return true;
      }
    var $hasMany = array(
        'TopicPhoto',
        'Board',
        'Topic'
    );

    public function beforeSave($options = array()) {
        if (isset($this->data[$this->alias]['password'])) {
            $this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
        }
        if (isset($this->data['User']['repeat_password'])){
            unset($this->data['User']['repeat_password']);
        }
        return true;
    }
}

?>