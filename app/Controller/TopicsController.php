<?php
App::uses('AppController', 'Controller');
class TopicsController extends AppController {
	public $name = 'Topics';
	public $uses = array('Board');
	public $helpers = array('Form', 'Html', 'Session');
	public function index() {
        
    }
    public function add() {
    	$this->Board->id = $this->request->params['id'];
    	$board = $this->Board->read();
    	if(empty($board)){
    		$this->redirect('/boards/');
    		exit;
    	}
    	$this->set('board',$board);
    	if(!empty($this->data)){
    		report($this->data); exit;
    		if ($this->Board->validates()) {
    			$this->Board->create();
				$this->Board->save($this->data);
				$id = $this->Board->getLastInsertId();
				$this->redirect('/boards/view/'.$id);
				exit;
			} else {
			    $errors = $this->Board->validationErrors;
			    report($errors);
			}
		}
	}
	public function view($id){
		
	}
}