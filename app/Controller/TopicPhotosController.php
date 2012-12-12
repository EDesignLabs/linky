<?php
App::uses('AppController', 'Controller');
class TopicPhotosController extends AppController {
	public $name = 'TopicPhotos';
	public $uses = array('Topic','Board','TopicPhoto');
	public $helpers = array('Form', 'Html', 'Session');
	public function index() {
       	
    }
    public function add() {
    	if(!empty($this->data)){
    		if ($this->TopicPhoto->validates()) {
    			$this->TopicPhoto->create();
				$this->TopicPhoto->save($this->data);
                $board = $this->data['TopicPhoto']['board_id'];
                $topic = $this->data['TopicPhoto']['topic_id'];
				$this->redirect('/boards/'.$board.'/topics/'.$topic);
				exit;
			} else {
			    $errors = $this->TopicPhoto->invalidFields();
			    report($errors,$this->data);
				exit;
			}
		}
	}

	public function delete($id){
		$this->TopicPhoto->delete($id);
		$this->Session->setFlash('Photo id '.$id.' was deleted');
		$this->redirect('/boards/');
		exit;
	}
}