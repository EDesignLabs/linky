<?php
App::uses('AppController', 'Controller');
class BoardsController extends AppController {
	public $name = 'Boards';
	public $uses = array('Board');
	public $helpers = array('Form', 'Html', 'Session');
	public function index() {
        $this->layout = 'default';
        $this->title = 'All Boards';
        $this->set('boards', $this->Board->find(
        	'all',
        	array(
        		'conditions' => array(
        			'Board.active' => 1
        			),
        		'order' => array(
        			'Board.created' => 'DESC'
        			)
        		)
        	));
    }
    public function create() {
    	if(!empty($this->data)){
    		if ($this->Board->validates()) {
    			$this->Board->create();
				if($this->Board->save($this->data)){
					$id = $this->Board->getLastInsertId();
					$this->redirect('/boards/view/'.$id);
					exit;
				}else{
					$this->redirect('/boards/');
					exit;
				}				
			} else {
			    $errors = $this->Board->validationErrors;
			    report($errors);
			}
		}
	}
	public function view($id){
		$this->Board->id = $id;
		$board = $this->Board->read();
		$this->title = $board['Board']['title'];
		$this->set('board',$board);
	}
	public function edit($id){
		if(empty($this->data)){
			$this->Board->id = $id;
			$board = $this->Board->read();
			if(empty($board)){
				$this->Session->setFlash('This board does not exist', 'fail');
				$this->redirect('/boards/');
			}
			$this->title = $board['Board']['title'];
			$this->data = $board;
		}else{
    		if ($this->Board->validates()) {
    			$this->Board->create();
				if($this->Board->save($this->data)){
					$id = $this->Board->getLastInsertId();
					$this->redirect('/boards/view/'.$id);
					exit;
				}else{
					$this->redirect('/boards/');
					exit;
				}				
			} else {
			    $errors = $this->Board->validationErrors;
			    report($errors);
			}
		}
	}
	public function delete($id){
		$this->Board->delete($id);
		$this->redirect('/boards/');
		exit;
	}
	public function deactivate($id){
        $photo = $this->Board->deactivate($id);
        $this->Session->setFlash('Board id '.$id.' was deactivated','success');
        $this->redirect('/boards/');
        exit;
    }
}
