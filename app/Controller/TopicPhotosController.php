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
                $this->Session->setFlash('Yay! Your photo was added','success');
				$this->redirect('/boards/'.$board.'/categories/'.$topic);
				exit;
			} else {
			    $errors = $this->TopicPhoto->invalidFields();
			    report($errors,$this->data);
				exit;
			}
		}
	}

    public function edit() {
        if(!empty($this->data)){
            if ($this->TopicPhoto->validates()) {
                $this->TopicPhoto->save($this->data);
                $board = $this->data['TopicPhoto']['board_id'];
                $topic = $this->data['TopicPhoto']['topic_id'];
                $this->redirect('/boards/'.$board.'/categories/'.$topic);
                exit;
            } else {
                $errors = $this->TopicPhoto->invalidFields();
                report($errors,$this->data);
                exit;
            }
        }
        $id = $this->request->params['id'];
        $this->TopicPhoto->id = $id;
        $this->TopicPhoto->recursive = 2;
        $this->TopicPhoto->Topic->bindModel(
            array(
                'belongsTo' => array(
                    'Board' => array(
                        'fields' => 'Board.title'
                        )
                    )
                )
            );
        $this->TopicPhoto->Topic->unbindModel(
            array(
                'hasMany' => array(
                    'TopicPhoto'
                    )
                )
            );
        $photo = $this->TopicPhoto->read();
        if(empty($photo)){
            $this->Session->setFlash("Sorry this photo doesn't exist");
            $this->redirect('/boards/');
        }
        $this->Topic->unbindModel(
            array(
                'hasMany' => array(
                    'TopicPhoto'
                    )
                )
            );
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
        $this->set('photo',$photo);
        $this->set('topic_choices',$topic_choices);
        $this->set('title','Edit your photo');
        $this->render('add');
    }

	public function delete($id){
        $this->TopicPhoto->id = $id;
        $photo = $this->TopicPhoto->read();
		$this->TopicPhoto->delete($id);
		$this->Session->setFlash('Photo id '.$id.' was deleted');
		$this->redirect('/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id']);
		exit;
	}
}