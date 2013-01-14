<?php
App::uses('AppController', 'Controller');
class TopicsController extends AppController {
	public $name = 'Topics';
	public $uses = array('Topic','Board','Badge','TopicPhoto');
	public $helpers = array('Form', 'Html', 'Session');
    public function isAuthorized($user) {
        if (in_array($this->action,array('add','edit','deactivate')) && $user['role'] == 'teacher') {
            return true;
        }
        if ($this->action === 'index') {
           return true;
        }
        return parent::isAuthorized($user);
    }
	public function index() {
        $limit = 20;
        $page = isset($this->request->named['page']) ? $this->request->named['page'] : 1;
        $this->set('title','Add a photo');
       	$id = $this->request->params['id'];
    	$this->Board->id = $id;
        $this->Board->unbindModelAll();
        $this->Board->bindModel(array('hasMany' => array('Topic')));
        $board = $this->Board->read();
        $this->Topic->id = $this->request->params['topic'];
        $this->Topic->unbindModelAll();
    	$topic = $this->Topic->read();
        if(empty($board) || empty($topic)){
            $this->redirect('/boards/');
            exit;
        }
        $this->TopicPhoto->unbindModelAll();
        $this->TopicPhoto->bindModel(array(
            'belongsTo' => array('User' => array('fields' => 'User.username'))
            ));
        $photos = $this->TopicPhoto->find(
            'all',
            array(
                'conditions' => array(
                    'TopicPhoto.topic_id' => $this->request->params['topic'],
                    'TopicPhoto.active' => 1 
                    ),
                'limit' => $limit,
                'page' => $page,
                'recursive' => 2
                )
            );
        $all_photos = $this->TopicPhoto->find(
            'count',
            array(
                'conditions' => array(
                    'TopicPhoto.topic_id' => $this->request->params['topic'],
                    'TopicPhoto.active' => 1
                    )
                )
            );
        $total_pages = ceil($all_photos / $limit);
        $this->set('board',$board);
        $this->set('topic',$topic);
        $this->set('photos',$photos);
        $this->set('total_pages',$total_pages);
    }
    public function add() {
    	$id = $this->request->params['id'];
    	$this->Board->id = $id;
    	$board = $this->Board->read();
    	if(empty($board)){
    		$this->redirect('/boards/');
    		exit;
    	}
    	$this->set('board',$board);
    	if(!empty($this->data)){
    		if ($this->Topic->validates()) {
    			$this->Topic->create();
                $this->request->data['Topic']['user_id'] = $this->Auth->user('id');
				if($this->Topic->save($this->data)){
                    $this->Session->setFlash('Category has been created!', 'success');
                    $this->redirect('/boards/view/'.$id);
                    exit;
                }else{
                    $this->Session->setFlash('Category was not created', 'fail');
                    $this->redirect('/boards/view/'.$id);
                    exit;
                }
			} else {
			    $errors = $this->Topic->validationErrors;
			    report($errors);
			}
		}
	}
    public function edit() {
        if(empty($this->data)){
            $id = $this->request->params['id'];
            $this->Topic->id = $id;
            $topic = $this->Topic->read();
            if(empty($topic)){
                $this->redirect('/boards/');
                exit;
            }
            $this->data = $topic;
        }else{
            if ($this->Topic->validates()) {
                if($this->Topic->save($this->data)){
                    $this->Session->setFlash('Category has been saved!', 'success');
                    $this->redirect('/boards/view/'.$this->data['Topic']['board_id']);
                    exit;
                }else{
                    $this->Session->setFlash('Category was not saved', 'fail');
                    $this->redirect('/boards/view/'.$this->data['Topic']['board_id']);
                    exit;
                }
            } else {
                $errors = $this->Topic->validationErrors;
                report($errors);
            }
        }
    }
    public function delete($id){
        $this->Topic->delete($id);
        $this->Session->setFlash('Category id '.$id.' was deleted', 'success');
        $this->redirect('/boards/');
        exit;
    }
    public function deactivate($id){
        $this->Topic->id = $id;
        $topic = $this->Topic->read();
        $this->Topic->set(array(
            'active' => 0
        ));
        $this->Topic->save();
        $this->Session->setFlash('Topic id '.$id.' was deactivated','success');
        $this->redirect('/boards/view/'.$topic['Topic']['board_id']);
        exit;
    }
}