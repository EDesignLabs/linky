<?php
App::uses('AppController', 'Controller');
class SummariesController extends AppController{
	public $name = 'Summaries';
	public $uses = array('Board','Summary');
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
		if(!empty($this->data)){
			if($this->request->params['pass'][0] == 2){
				//second stage
				if(!empty($this->data['Summary'])){
					$this->request->data['Summary']['board_id'] = $board_id;
					$this->request->data['Summary']['user_id'] = $this->Auth->user('id');
					$this->Summary->create();
					if($this->Summary->save($this->data)){
						$summary_id = $this->Summary->getLastInsertId();
						$this->redirect('/summary/edit/'.$summary_id);
						exit;
					}else{
						$this->Session->setFlash('Something went wrong, please try again!');
					}
				}
				exit;
			}else{
				//submitting summary
			}
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
		$this->set(compact('photos', 'board'));
	}

	public function edit() {
		$this->Summary->id = $this->request->params['id'];
		$summary = $this->Summary->read();
		$id_list[] = $summary['Summary']['photo1'];
		$id_list[] = $summary['Summary']['photo2'];
		$id_list[] = $summary['Summary']['photo3'];
		$board = $summary;
		$sql = "SELECT 
					TopicPhoto.id,
					TopicPhoto.filename,
					TopicPhoto.filepath
				FROM topic_photos AS TopicPhoto
				WHERE TopicPhoto.id IN (".implode(',',$id_list).");";
		$photos = $this->Summary->query($sql);
		$this->set(compact('board','photos'));
	}
}