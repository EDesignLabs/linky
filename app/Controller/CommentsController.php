<?php
App::uses('AppController', 'Controller');
class CommentsController extends AppController {
	public $name = 'Comments';
	public $uses = array('Comment');
	public $helpers = array('Form', 'Html', 'Session');
	public function isAuthorized($user) {
	    if ($this->action === 'create') {
	    	return true;
	    }
	    return parent::isAuthorized($user);
	}
	public function index() {
    }
    public function create() {
    	if(!empty($this->data)){
    		$photo = $this->data['Comment']['topic_photo_id'];
    		if($this->Comment->validates()){
    			$this->request->data['Comment']['user_id'] = $this->Auth->user('id');
    			$this->Comment->create();
    			$this->Comment->save($this->data);
    			$this->Session->setFlash('Comment was saved','success');
    			$this->redirect('/boards/'.$this->data['Topic']['board_id'].'/categories/'.$this->data['Topic']['id'].'/#'.$photo);
    			exit;
    		}else{
    			$this->Session->setFlash('Comment was not saved','fail');
    			$errors = $this->Comment->validationErrors;
                $this->set(compact('errors','data','photo'));
                $this->render();
    		}
    	}else{
    		$photo = $this->request->params['photo'];
    		$this->set(compact('photo'));
    	}
	}
	public function edit($id){
	}
	public function delete($id){
		$this->Comment->id = $id;
         $this->Comment->recursive = 2;
        $this->Comment->unbindModelAll();
        $this->Comment->bindModel(array(
            'belongsTo' => array('TopicPhoto')
            ));
        $this->Comment->TopicPhoto->unbindModelAll();
        $this->Comment->TopicPhoto->bindModel(array(
            'belongsTo' => array('Topic' => array('fields' => array('Topic.id','Topic.board_id')))
            ));
        $comment = $this->Comment->read();
        $redirect_url = '/boards/'.$comment['TopicPhoto']['Topic']['board_id'].'/categories/'.$comment['TopicPhoto']['Topic']['id'].'/#'.$comment['Comment']['topic_photo_id'];
        $this->Comment->delete($id);
		$this->redirect($redirect_url);
		exit;
	}
}
