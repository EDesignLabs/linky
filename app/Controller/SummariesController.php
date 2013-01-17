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
	    if (in_array($this->action, array('changePhotos', 'edit', 'complete', 'undoComplete'))) {
	    	$summary = $this->request->params['id'];
            if ($this->Summary->isOwnedBy($summary, $user['id'])) {
                return true;
            }
	    }
	    return parent::isAuthorized($user);
	}
	public function index(){
		$this->Summary->id = $this->request->params['id'];
		$summary = $this->Summary->read();
		$id_list = array();
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
		$this->set(compact('board','photos','summary'));
		$this->set(compact('summary','photos','board'));
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
		$this->Summary->unbindModelAll();
		$this->Summary->bindModel(array('belongsTo' => array('Board')));
		$summary = $this->Summary->find('first', array('conditions' => array(
			'Summary.board_id' => $board_id,
			'Summary.user_id' => $this->Auth->user('id')
			)));
		if(!empty($summary)){
			if($summary['Summary']['complete'] != 1){
				$this->redirect('/summary/edit/'.$summary['Summary']['id']);
				exit;
			}else{
				$this->Session->setFlash('Your summary for <b>'.$summary['Board']['title'].'</b> was completed and submitted on '.date('F j,Y g:i a',strtotime($summary['Summary']['modified'])).'. If this was done in error, then click <a href="'.Router::url('<b>undo</b>',array('url' => '/summary/undoComplete/'.$summary['Summary']['id'])).'"><b>undo submit</b></a>','success');
				$this->redirect('/summary/'.$summary['Summary']['id']);
				exit;
			}
		}
		$this->request->data['Summary']['board_id'] = $board_id;
		$this->request->data['Summary']['user_id'] = $this->Auth->user('id');
		$this->Summary->create();
		if($this->Summary->save($this->data)){
			$summary_id = $this->Summary->getLastInsertId();
			$this->redirect('/summary/edit/'.$summary_id);
			exit;
		}else{
			$this->Session->setFlash('Something went wrong, please try again!');
			$this->redirect('/');
			exit;
		}
	}

	public function edit() {
		$this->Summary->id = $this->request->params['id'];
		$summary = $this->Summary->read();
		if($summary['Summary']['complete'] == 1){
			$this->Session->setFlash('Your summary for <b>'.$summary['Board']['title'].'</b> was completed and submitted on <b>'.date('F j,Y g:i a',strtotime($summary['Summary']['modified'])).'</b>. If this was done in error, then click <a href="'.Router::url('<b>undo</b>',array('url' => '/summary/undoComplete/'.$summary['Summary']['id'])).'"><b>undo submit</b></a>','success');
			$this->redirect('/summary/'.$summary['Summary']['id']);
			exit;
		}
		//first load
		//first load, second page
		//second load, landing
		//second load, first page
		if(empty($summary['Summary']['photo1']) || empty($summary['Summary']['photo2']) || empty($summary['Summary']['photo3'] )){
			$sql =	"SELECT TopicPhoto.* 
				FROM topic_photos as TopicPhoto
				LEFT JOIN topics as Topic
				ON Topic.id = TopicPhoto.topic_id
				WHERE Topic.board_id = {$summary['Summary']['board_id']}
				AND TopicPhoto.active = 1
				/*ORDER BY RAND()
				LIMIT 1*/";
			$board = $summary;
			$photos = $this->Board->query($sql);
			$this->set(compact('photos', 'board','summary'));
			$this->render('add');
		}else{
			$id_list = array();
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
			$this->set(compact('board','photos','summary'));
			$this->render('edit');
		}
		if(!empty($this->data)){
			$this->Summary->save($this->data);
			$this->Session->setFlash('Your summary has been saved.', 'success');
			$this->redirect('/summary/edit/'.$summary['Summary']['id']);
			exit;
		}
	}

	public function changePhotos(){
		$this->Summary->id = $this->request->params['id'];
		$summary = $this->Summary->read();
		$this->Summary->set(array(
		    'photo1' => '',
		    'photo2' => '',
		    'photo3' => ''
		));
		$this->Summary->save();
		$this->redirect('/summary/edit/'.$summary['Summary']['id']);
		exit;
	}
	public function complete(){
		$this->Summary->id = $this->request->params['id'];
		$summary = $this->Summary->read();
		$this->Summary->set(array(
		    'complete' => '1'
		));
		$this->Summary->save();
		$this->Session->setFlash('Your summary for <b>'.$summary['Board']['title'].'</b> was completed and submitted on <b>'.date('F j,Y g:i a',strtotime($summary['Summary']['modified'])).'</b>. If this was done in error, then click <a href="'.Router::url('<b>undo</b>',array('url' => '/summary/undoComplete/'.$summary['Summary']['id'])).'"><b>undo submit</b></a>','success');
		$this->redirect('/summary/'.$summary['Summary']['id']);
		exit;
	}
	public function undoComplete(){
		$this->Summary->id = $this->request->params['id'];
		$summary = $this->Summary->read();
		$this->Summary->set(array(
		    'complete' => '0'
		));
		$this->Summary->save();
		$this->Session->setFlash('Your summary for '.$summary['Board']['title'].' can now be edited again','success');
		$this->redirect('/summary/edit/'.$summary['Summary']['id']);
		exit;
	}
}