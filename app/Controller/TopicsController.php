<?php
App::uses('AppController', 'Controller');
class TopicsController extends AppController {
	public $name = 'Topics';
	public $uses = array('Topic','Board');
	public $helpers = array('Form', 'Html', 'Session');
	public function index() {
       	$id = $this->request->params['id'];
    	$this->Board->id = $id;
    	$board = $this->Board->read();
    	$this->Topic->id = $this->request->params['topic'];
    	$topic = $this->Topic->read();
    	if(empty($board)){
    		$this->redirect('/boards/');
    		exit;
    	}
    	if(empty($topic)){
    		$this->redirect('/boards/');
    		exit;
    	}
    	$this->set('board',$board);
    	$this->set('topic',$topic);
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
				if($this->Topic->save($this->data)){
                    $this->Session->setFlash('Topic has been added!');
                    $this->redirect('/boards/view/'.$id);
                    exit;
                }else{
                    $this->Session->setFlash('Topic was not added :(');
                    $this->redirect('/boards/view/'.$id);
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
        $this->Session->setFlash('Topic id '.$id.' was deleted');
        $this->redirect('/boards/');
        exit;
    }
}