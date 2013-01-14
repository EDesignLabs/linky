<?php
App::uses('AppController', 'Controller');
class BoardsController extends AppController {
	public $name = 'Boards';
	public $uses = array('Board','TopicPhoto');
	public $helpers = array('Form', 'Html', 'Session');
	public function isAuthorized($user) {
	    if ($this->action === 'create') {
	    	if(in_array($user['role'],array('teacher', 'admin'))){
	    		return true;
	    	}else return false;
	    }
        if($this->action === 'activity' || $this->action === 'index'){
            return true;
        }
	    return parent::isAuthorized($user);
	}
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
    			$this->request->data['Board']['user_id'] = $this->Auth->user('id');
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
				if($this->Board->save($this->data)){
					$this->redirect('/boards/view/'.$this->data['Board']['id']);
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
    public function activity() {
        $this->layout = 'default';
        $this->title = 'My Activity';
        $this->Board->unbindModelAll();
        $boards = $this->Board->find(
            'all',
            array(
                'conditions' => array(
                    'Board.active' => 1
                    ),
                'fields' => array(
                    'Board.id',
                    'Board.title',
                    'Board.summary'
                    ),
                'order' => array(
                    'Board.user_id' => 'ASC',
                    'Board.created' => 'DESC'
                    )
                )
            );
        $this->TopicPhoto->unbindModelAll();
        $this->TopicPhoto->bindModel(array(
            'belongsTo' => array(
                'Topic' => array('fields' => array('Topic.board_id','Topic.id'))
                )
            ));
        $photos = $this->TopicPhoto->find(
            'all', 
            array(
                'conditions' => array(
                    'TopicPhoto.user_id' => $this->Auth->user('id'),
                    'TopicPhoto.active' => 1
                    )
                )
            );        
        $stats = array();
        if(!empty($boards)){
            foreach($boards as $b){
                $stats[$b['Board']['id']]['title'] = $b['Board']['title'];
                $stats[$b['Board']['id']]['summary'] = $b['Board']['summary'];
                $stats[$b['Board']['id']]['id'] = $b['Board']['id'];
                $stats[$b['Board']['id']]['my_photos'] = 0;
                $sql = "SELECT TopicPhoto.id
                FROM topic_photos as TopicPhoto
                LEFT JOIN topics AS Topic
                ON Topic.id = TopicPhoto.topic_id
                WHERE Topic.board_id = {$b['Board']['id']} AND TopicPhoto.active = 1;";
                $results = $this->Board->query($sql);
                $results = !empty($results) ? count($results) : 0;
                $stats[$b['Board']['id']]['total_photos'] = $results;
            }
        }

        if(!empty($photos)){
            foreach($photos as $photo){
                $stats[$photo['Topic']['board_id']]['my_photos']++; 
            }
        }

        $stats = array_merge($stats,array());
        $this->set(compact('stats','photos','boards'));
    }
	public function delete($id){
		$this->Board->delete($id);
		$this->redirect('/boards/');
		exit;
	}
	public function deactivate($id){
        $this->Board->id = $id;
        $this->Board->read();
        $this->Board->set(array(
            'active' => 0
        ));
        $this->Board->save();
        $this->Session->setFlash('Board id '.$id.' was deactivated','success');
        $this->redirect('/boards/');
        exit;
    }
}
