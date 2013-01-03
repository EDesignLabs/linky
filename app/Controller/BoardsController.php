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

    public function activity() {
        $this->layout = 'default';
        $this->title = 'My Activity';
        $this->Board->unbindModelAll();
        $boards = $this->Board->find(
        	'list',
        	array(
        		'conditions' => array(
        			'Board.active' => 1
        			),
        		'order' => array(
        			'Board.created' => 'DESC',
        			'Board.user_id' => 'ASC'
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
        			'TopicPhoto.user_id' => $this->Auth->user('id')
        			)
        		)
        	);
        $sql = "SELECT Comment.id, Topic.board_id
        		FROM comments AS Comment
        		LEFT JOIN topic_photos AS TopicPhoto
        		ON TopicPhoto.id = Comment.topic_photo_id
        		LEFT JOIN topics AS Topic
        		ON Topic.id = TopicPhoto.topic_id
        		WHERE Comment.user_id = {$this->Auth->user('id')};";
       	$comments = $this->Board->query($sql);

        $sql = "SELECT TopicPhoto.id, Badge.title,Badge.id, Topic.board_id
        		FROM topic_photo_badges AS PhotoBadge
        		LEFT JOIN badges AS Badge
        		ON PhotoBadge.badge_id = Badge.id
        		LEFT JOIN topic_photos AS TopicPhoto
        		ON TopicPhoto.id = PhotoBadge.topic_photo_id
        		LEFT JOIN topics AS Topic
        		ON Topic.id = TopicPhoto.topic_id
        		WHERE TopicPhoto.user_id = {$this->Auth->user('id')};";
        $badges = $this->Board->query($sql);
        
        $stats = array();
        if(!empty($boards)){
        	foreach($boards as $k=>$b){
        		$stats[$k]['title'] = $b;
        		$stats[$k]['photo_count'] = 0;
        		$stats[$k]['badges'] = array();
        		$stats[$k]['comment_count'] = 0;
        	}
        }
        if(!empty($photos)){
        	foreach($photos as $photo){
        		$stats[$photo['Topic']['board_id']]['photo_count']++; 
        	}
        }

        if(!empty($comments)){
        	foreach($comments as $comment){
        		$stats[$comment['Topic']['board_id']]['comment_count']++; 
        	}
        }

        if(!empty($badges)){
        	foreach($badges as $badge){
        		$stats[$badge['Topic']['board_id']]['badges'][$badge['Badge']['id']] = $badge['Badge']['title'];
        	}
        }
        $this->set(compact('stats'));
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
