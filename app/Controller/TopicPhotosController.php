<?php
App::uses('AppController', 'Controller');
class TopicPhotosController extends AppController {
	public $name = 'TopicPhotos';
	public $uses = array('Topic','Board','TopicPhoto');
	public $helpers = array('Form', 'Html', 'Session');
	public function index() {
       	
    }
    public function add() {
        $topic_choices = $this->getTopics();
        $this->set('topic_choices',$topic_choices);
        if(!empty($this->request->params['topic'])){
            $topic_id = $this->request->params['topic'];
            $this->set('topic_id',$topic_id);
            $board_id = $this->request->params['id'];
            $this->set('board_id',$board_id);
        }
        if(!empty($this->data)){
            $this->TopicPhoto->set($this->data);
            if ($this->TopicPhoto->validates()) {
                $this->TopicPhoto->create();
                $board = $this->data['TopicPhoto']['board_id'];
                $topic = $this->data['TopicPhoto']['topic_id'];
                $uploaded = $this->TopicPhoto->uploadPhoto($this->data);
                if(!empty($uploaded)){
                    $this->data = array_merge($this->data['TopicPhoto'],$uploaded);
                    $this->TopicPhoto->save($this->data);
                    $this->Session->setFlash('Yay! Your photo was added','success');
                    $this->redirect('/boards/'.$board.'/categories/'.$topic);
                    exit;
                }else{
                    $this->Session->setFlash('There was a problem. Your photo could not be added. Please try again.','fail');
                    $this->redirect('/boards/'.$board.'/categories/'.$topic);
                    exit;
                }                
            } else {
                $this->Session->setFlash('There are errors in your submission, fix them and submit again','fail');
                $errors = $this->TopicPhoto->validationErrors;
                $this->set(compact('errors','data'));
                $this->render();
            }
        }
	}

    public function edit() {
        $id = $this->request->params['id'];
        $topic_choices = $this->getTopics();
        $this->set('topic_choices',$topic_choices);
        if(empty($this->data)){
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
                $this->Session->setFlash("It doesn't look like this photo exists", 'fail');
                $this->redirect('/boards/');
            }
            $this->data = $photo; 
        }else{
            $this->TopicPhoto->set($this->data);
            if ($this->TopicPhoto->validates()) {
                $board = $this->data['Topic']['board_id'];
                $topic = $this->data['TopicPhoto']['topic_id'];
                $this->TopicPhoto->save($this->data);
                if(!empty($this->data['TopicPhoto']['file'])){
                    $this->TopicPhoto->removePhoto($this->data);
                    unset($this->data['TopicPhoto']['filename']);
                    unset($this->data['TopicPhoto']['filepath']);
                    $uploaded = $this->TopicPhoto->uploadPhoto($this->data);
                    if(!empty($uploaded)){
                        $this->data = array_merge($this->data['TopicPhoto'],$uploaded);
                        $this->TopicPhoto->save($this->data);
                        $this->Session->setFlash('Your photo was saved','success');
                        $this->redirect('/boards/'.$board.'/categories/'.$topic);
                        exit;
                    }else{
                        $this->Session->setFlash('There was a problem. Your photo could not be saved. Please try again.','fail');
                        $this->redirect('/boards/'.$board.'/categories/'.$topic);
                        exit;
                    }
                }
                $this->redirect('/boards/'.$board.'/categories/'.$topic);
                exit;
            } else {
                $this->Session->setFlash('There are errors in your submission, fix them and submit again','fail');
                $errors = $this->TopicPhoto->validationErrors;
                $this->set(compact('errors','data'));
                $this->render();
            }
        }
    }

	public function delete($id){
        $this->TopicPhoto->id = $id;
        $photo = $this->TopicPhoto->read();
		$this->TopicPhoto->delete($id);
		$this->Session->setFlash('Photo id '.$id.' was deleted');
		$this->redirect('/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id']);
		exit;
	}

    public function deactivate($id){
        $photo = $this->TopicPhoto->deactivate($id);
        $this->Session->setFlash('Photo id '.$id.' was deactivated','success');
        $this->redirect('/boards/');
        exit;
    }

    public function getTopics(){
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
        return($topic_choices);
    }
}