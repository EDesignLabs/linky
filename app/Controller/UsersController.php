<?php
class UsersController extends AppController {
    public $components = array('Email');
    public $uses = array('TopicPhoto','User', 'Board', 'Topic');
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add');
        $this->Auth->allow('reset');
        $this->Auth->allow('login');
    }

    public function isAuthorized($user) {
        if (in_array($this->action,array('add','logout','settings', 'view'))) {
            return true;
        }
        if ($this->action === 'index' && $user['role'] == 'admin') {
           return true;
        }
        return parent::isAuthorized($user);
    }

    public function index() {
        $this->set('users', $this->User->find('all'));
    }

    public function view($id) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        $topics = $this->Topic->find('list', array('fields' => array('Board.id'), 'recursive' => 2));
        $photos = $this->TopicPhoto->find(
            'list',array(
                'conditions' => array('TopicPhoto.active' => 1),
                'fields' => array(
                    'TopicPhoto.id',
                    'TopicPhoto.filename'
                    )
                )
            );
        $boards = $this->Board->find(
            'list',array('conditions' => array('Board.active' => 1)));
        $this->User->id = $id;
        $this->User->unbindModelAll();
        $this->User->bindModel(array(
            'hasMany' => array(
                    'TopicPhoto' => array(
                        'fields' => array('TopicPhoto.filename', 'TopicPhoto.filepath', 'TopicPhoto.description', 'TopicPhoto.created', 'TopicPhoto.topic_id', 'TopicPhoto.id'),
                        'conditions' => array('TopicPhoto.active' => 1),
                        'order' => array('TopicPhoto.created')
                        ),
                    'Summary' => array(
                        'fields' => array('Summary.photo1','Summary.photo2','Summary.photo3', 'Summary.description','Summary.board_id'),
                        'conditions' => array('Summary.complete' => 1)
                        )
                    )
            ));
        $user = $this->User->read();
        $this->set(compact('user', 'photos','boards', 'topics'));
    }

    public function add() {
        if (!empty($this->data)) {
            if($this->User->validates()){
                $this->User->create();
                if(!isset($this->data['User']['role']) || empty(($this->data['User']['role']))) {
                    $this->data['User']['role'] = 'student';
                }
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

    public function edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if(empty($this->request->data['User']['password'])) {
           unset($this->request->data['User']['password']);
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash('The user has been saved', 'success');
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash('The user could not be saved. Please, try again.', 'fail');
               $this->redirect(array('action' => 'index'));
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
            unset($this->request->data['User']['password']);
        }
    }

    public function settings() {
        $this->User->unbindModelAll();
        $user = $this->User->find('first', array('conditions' => array('User.id' => AuthComponent::user('id'))));
        $this->set('user', $user);
        if(!empty($this->data)){
            if(empty($this->request->data['User']['password'])){
                unset($this->request->data['User']['password']);
            }
            $this->User->id = $this->data['User']['id'];
            if($this->User->save($this->request->data)){
                $this->Session->setFlash('Your settings were changed successfully', 'success');
            }else{
                $this->Session->setFlash('Your settings could not be changed', 'fail');
                $errors = $this->User->validationErrors;
                $this->set(compact('errors','data'));
                $this->render();
            }
        }
    }

    public function reset() {
        if (!empty($this->data)) {
            if(empty($this->data['User']['username'])){
                $this->Session->setFlash('Please Provide Your Email Adress that You used to Register with Us');
                $this->render('login');
            }else{
                $user_email = $this->data['User']['username'];
                $fu = $this->User->find('first',array('conditions'=>array('User.username'=>$user_email)));
                if($fu){
                    $newpass = substr( str_shuffle( 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$' ) , 0 , 10 );
                    $this->User->id=$fu['User']['id'];
                    $this->User->saveField('password', $newpass);
                    if($this->User->save()) {
                        //============Email================//
                        $email = new CakeEmail();
                        $email->viewVars(array('newpass' => $newpass));
                        $email->template('password_reset','default')
                            ->emailFormat('both')
                            ->from(array('contact@nilaratna.com' => 'Linky'))
                            ->to($user_email)
                            ->subject('Password reset for Linky')
                            ->send();
                        //============EndEmail=============//
                        $this->Session->setFlash('Check Your Email for a new password', 'success');
                        $this->render('login');
                    }else{
                        $this->Session->setFlash("Error Generating Reset link", 'fail');
                        $this->render('login');
                    }
                }else{
                    $this->Session->setFlash("Error Generating Reset link, is this the right email?", 'fail');
                    $this->render('login');
                }
            }
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