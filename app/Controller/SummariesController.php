<?php
App::uses('AppController', 'Controller');
class SummariesController extends AppController{
	public $name = 'Summaries';
	public $uses = array('Board');
	public $helpers = array('Form', 'Html', 'Session');
	public function isAuthorized($user) {
	    if ($this->action === 'index') {
	    	return true;
	    }
	    if ($this->action === 'add') {
	    	return true;
	    }
        if($this->action === 'edit'){
            $summary = $this->request->params['id'];
            if ($this->Summary->isOwnedBy($summary, $user['id'])) {
                return true;
            }
        }
	    return parent::isAuthorized($user);
	}
	public function index(){

	}
	public function add(){
		$board_id = $this->request->params['id'];
		$this->Board->unbindModelAll();
		$this->Board->id = $board_id;
		$board = $this->Board->read();
		if(empty($board)){
			$this->redirect('/');
			exit;
		}
		$sql =	"SELECT TopicPhoto.* 
				FROM topic_photos as TopicPhoto
				LEFT JOIN topics as Topic
				ON Topic.id = TopicPhoto.topic_id
				WHERE Topic.board_id = $board_id
				AND TopicPhoto.active = 1
				/*ORDER BY RAND()
				LIMIT 1*/";
		$photos = $this->Board->query($sql);
		//report($photos);
		$this->set(compact('photos', 'board'));
		if(!empty($this->data)){
			report($this->data);
			exit;
		}
	}
}