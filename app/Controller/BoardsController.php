<?php
App::uses('AppController', 'Controller');
class BoardsController extends AppController {
	public $name = 'Boards';
	public $uses = array('Board');
	public $helpers = array('Form', 'Html', 'Session');
	public function index() {
        $this->layout = 'default';
        $this->title = 'All Boards';
        $this->set('boards', $this->Board->find('all'));
    }
    public function create() {
    	if(!empty($this->data)){
    		if ($this->Board->validates()) {
    			$this->Board->create();
				if($this->Board->save($this->data)){
					$id = $this->Board->getLastInsertId();
					$this->redirect('/boards/'.$id);
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
	public function delete($id){
		$this->Board->delete($id);
		$this->redirect('/boards/');
		exit;
	}
}
