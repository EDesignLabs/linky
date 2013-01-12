<?php
class UsersController extends AppController {
    public $components = array('Email');
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add');
        $this->Auth->allow('reset');
        $this->Auth->allow('login');
    }

    public function isAuthorized($user) {
        if (in_array($this->action,array('add','logout'))) {
            return true;
        }
        return parent::isAuthorized($user);
    }

    public function index() {
        $this->set('users', $this->User->find('all'));
    }

    public function view($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        $this->set('user', $this->User->read(null, $id));
    }

    public function add() {
        if (!empty($this->data)) {
            if($this->User->validates()){
                $this->User->create();
                if ($this->User->save($this->data)) {
                    $this->Session->setFlash('New account was successfully created, welcome to Linky!', 'success');
                    $this->Auth->login();
                    $this->redirect(array('controller' => 'boards', 'action' => 'activity'));
                    exit;
                } else {
                    $this->Session->setFlash('The user could not be saved. Please, try again.','fail');
                }
            }
        }
    }

    public function reset() {
        if (!empty($this->data)) {
           report($this->data);
            if(empty($this->data['User']['username'])){
                $this->Session->setFlash('Please Provide Your Email Adress that You used to Register with Us');
                $this->render('login');
            }else{
                $user_email = $this->data['User']['username'];
                $fu = $this->User->find('first',array('conditions'=>array('User.username'=>$user_email)));
                if($fu){
                    $newpass = substr( str_shuffle( 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$' ) , 0 , 10 ); ;
                    $this->User->id=$fu['User']['id'];
                    $this->User->password = AuthComponent::password($newpass);
                    if($this->User->save()) {
                        //============Email================//
                        $line = 'Hello!\n\n';
                        $line .= 'It looks like you forgot your password. No worries, we have created a new password for you.\n\n'
                        $line = 'Your new password is : '.$newpass.'\n\n';
                        $line .= 'Log in to http://nilaratna.com/linky to log in and change your password\n\n';
                        CakeEmail::bcc('contact@nilaratna.com');
                        CakeEmail::deliver($user_email, 'Password reset for Linky', $line, array('from' => 'info@nilaratna.com'));
                        //============EndEmail=============//
                        $this->Session->setFlash('Check Your Email for a new password', 'success');
                        $this->render('login');
                    }else{
                        $this->Session->setFlash("Error Generating Reset link", 'fail');
                        $this->render('login');
                    }
                }else{
                    $this->Session->setFlash("Error Generating Reset link", 'fail');
                    $this->render('login');
                }
            }
            $this->Session->setFlash('Email does Not Exist', 'fail');
            $this->render('login');
        }
    }

    public function login() {
        if(!empty($this->data)){
            if ($this->Auth->login()) {
                $this->redirect($this->Auth->redirect());
            } else {
                $this->Session->setFlash('Invalid username or password, try again', 'fail');
            }
        }
    }

    public function logout() {
        $this->redirect($this->Auth->logout());
    }

    public function edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('The user has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
            unset($this->request->data['User']['password']);
        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if ($this->User->delete()) {
            $this->Session->setFlash(__('User deleted'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('User was not deleted'));
        $this->redirect(array('action' => 'index'));
    }
}