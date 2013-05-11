<?php
App::uses('AppController', 'Controller');
class TopicPhotosController extends AppController {
	public $name = 'TopicPhotos';
	public $uses = array('Topic','Board','TopicPhoto');
	public $helpers = array('Form', 'Html', 'Session');
    public function isAuthorized($user) {
        if($this->action === 'add'){
            return true;
        }
        if (in_array($this->action,array('edit','deactivate'))) {
            if(in_array($user['role'], array('teacher','admin'))){
                return true;
            }
            $photo = $this->request->params['id'];
            if ($this->TopicPhoto->isOwnedBy($photo, $user['id'])) {
                return true;
            }
        }
        return parent::isAuthorized($user);
    }
	public function index() {
       	
    }
    public function add() {
        if(!empty($this->request->params['topic'])){
            $topic_id = $this->request->params['topic'];
            $photo['TopicPhoto']['board_id'] = $this->request->params['id'];
            $photo['TopicPhoto']['topic_id'] = $this->request->params['topic'];
            $topic_choices = $this->getTopics($photo['TopicPhoto']['board_id']);
            $this->set('topic_choices',$topic_choices);
        }
        if(!empty($this->data)){
            $this->set('topic_choices',$this->getTopics($this->data['TopicPhoto']['board_id']));
            $this->TopicPhoto->set($this->data);
            $board = $this->data['TopicPhoto']['board_id'];
            $topic = $this->data['TopicPhoto']['topic_id'];
            if ($this->TopicPhoto->validates()) {
                $this->TopicPhoto->create();  
                if(!empty($this->data['TopicPhoto']['file']) && $this->data['TopicPhoto']['file']['error'] == 0){
                    $uploaded = $this->TopicPhoto->uploadPhoto($this->data);
                     var_dump('blawwwh');
                }else{
                    $uploaded = $this->TopicPhoto->uploadUrlPhoto($this->data);
                     var_dump('sdfsdfffdfff');
                }
                if(!empty($uploaded)){
                     var_dump('llllll');
                    $this->data = array_merge($this->data['TopicPhoto'],$uploaded);
                    $this->request->data['user_id'] = $this->Auth->user('id');
                    $this->TopicPhoto->save($this->data);
                    $this->Session->setFlash('Your photo was added','success');
                    $this->redirect('/boards/'.$board.'/categories/'.$topic);
                    exit;
                }else{
                    $this->Session->setFlash('There was a problem. Your photo could not be added. Please try again.','fail');
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
            $topic_choices = $this->getTopics($photo['Topic']['board_id']);
            $this->set('topic_choices',$topic_choices);
            $this->data = $photo;
        }else{
            $this->TopicPhoto->set($this->data);
            if ($this->TopicPhoto->validates()) {
                $board = $this->data['Topic']['board_id'];
                $topic = $this->data['TopicPhoto']['topic_id'];
                $this->TopicPhoto->save($this->data);
                if(!empty($this->data['TopicPhoto']['file']) && $this->data['TopicPhoto']['file']['error'] == 0){
                    $this->TopicPhoto->removePhoto($this->data);
                    //unset($this->data['TopicPhoto']['filename']);
                    //unset($this->data['TopicPhoto']['filepath']);
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
                $topic_choices = $this->getTopics($this->data['Topic']['board_id']);
                $this->set('topic_choices',$topic_choices);
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
        $this->TopicPhoto->id = $id;
        $photo = $this->TopicPhoto->read();
        $this->TopicPhoto->set(array(
            'active' => 0
        ));
        if( $this->TopicPhoto->save()) {
            $this->Session->setFlash('Photo id '.$id.' was deactivated','success');
            $this->redirect('/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id']);
            exit;
        }else{
            $this->Session->setFlash('Something went wrong, could not deactivate the photo','fail');
            $this->redirect('/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id']);
            exit;
        }        
    }

    public function getTopics($board_id){
        $topics = $this->Topic->find('all',
            array(
                'fields' => array(
                    'Topic.id',
                    'Topic.title'
                    ),
                'conditions' => array(
                    'Topic.active' => 1,
                    'Topic.board_id' => $board_id
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