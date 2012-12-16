<?php
App::uses('AppController', 'Controller');
class TopicsController extends AppController {
	public $name = 'Topics';
	public $uses = array('Topic','Board');
	public $helpers = array('Form', 'Html', 'Session');
	public function index() {
        $this->set('title','Add a photo');
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
        $topics = $this->Topic->find('all',
            array(
                'fields' => array(
                    'Topic.id',
                    'Topic.title'
                    )
                )
            );
        $topic_choices = array();
        if(!empty($topics)){
            foreach ($topics as $t) {
               $topic_choices[$t['Topic']['id']] = $t['Topic']['title'];
            }
        }
        $photo['Topic']['id'] = $this->request->params['topic'];
        $photo['Topic']['board_id'] = $id;
        $this->set('photo',$photo);
        $this->set('topic_choices',$topic_choices);
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
                    $this->Session->setFlash('Category has been created!');
                    $this->redirect('/boards/view/'.$id);
                    exit;
                }else{
                    $this->Session->setFlash('Category was not created :(');
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
        $this->Session->setFlash('Category id '.$id.' was deleted');
        $this->redirect('/boards/');
        exit;
    }
}