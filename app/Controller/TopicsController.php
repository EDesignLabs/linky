<?php
App::uses('AppController', 'Controller');
class TopicsController extends AppController {
	public $name = 'Topics';
	public $uses = array('Topic','Board');
	public $helpers = array('Form', 'Html', 'Session');
    public function isAuthorized($user) {
        if (in_array($this->action,array('add','edit','deactivate')) && $user['role'] == 'teacher') {
            return true;
        }
        return parent::isAuthorized($user);
    }
	public function index() {
        $this->set('title','Add a photo');
       	$id = $this->request->params['id'];
    	$this->Board->id = $id;
    	$board = $this->Board->read();
        $this->Topic->recursive = 3;
    	$this->Topic->id = $this->request->params['topic'];
        $this->Topic->unbindModel(
            array(
                 'belongsTo' => array('Board', 'User')
                )
            );
        $this->Topic->bindModel(
            array(
                'hasMany' => array('TopicPhoto')
                )
            );
         $this->Topic->TopicPhoto->unbindModel(array(
            'belongsTo' => array('Topic')
            ));
         $this->Topic->TopicPhoto->bindModel(
            array(
                'belongsTo' => array(
                    'User' => array(
                        'fields' => array(
                            'User.username'
                            )
                        )
                    ),
                'hasMany' => array('Comment')
                )
            );
        $this->Topic->TopicPhoto->Comment->unbindModel(
            array(
                'belongsTo' => array(
                    'TopicPhoto'
                    )
                )
            );
        $this->Topic->TopicPhoto->Comment->bindModel(
            array(
                'belongsTo' => array(
                    'User' => array(
                        'fields' => array(
                            'User.username'
                            )
                        )
                    )
                )
            );
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
                    ),
                'conditions' => array(
                    'Topic.active' => 1
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
                $this->request->data['Topic']['user_id'] = $this->Auth->user('id');
				if($this->Topic->save($this->data)){
                    $this->Session->setFlash('Category has been created!', 'success');
                    $this->redirect('/boards/view/'.$id);
                    exit;
                }else{
                    $this->Session->setFlash('Category was not created', 'fail');
                    $this->redirect('/boards/view/'.$id);
                    exit;
                }
			} else {
			    $errors = $this->Topic->validationErrors;
			    report($errors);
			}
		}
	}
    public function edit() {
        if(empty($this->data)){
            $id = $this->request->params['id'];
            $this->Topic->id = $id;
            $topic = $this->Topic->read();
            if(empty($topic)){
                $this->redirect('/boards/');
                exit;
            }
            $this->data = $topic;
        }else{
            if ($this->Topic->validates()) {
                if($this->Topic->save($this->data)){
                    $this->Session->setFlash('Category has been saved!', 'success');
                    $this->redirect('/boards/view/'.$this->data['Topic']['board_id']);
                    exit;
                }else{
                    $this->Session->setFlash('Category was not saved', 'fail');
                    $this->redirect('/boards/view/'.$this->data['Topic']['board_id']);
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
        $this->Session->setFlash('Category id '.$id.' was deleted', 'success');
        $this->redirect('/boards/');
        exit;
    }
    public function deactivate($id){
        $this->Topic->id = $id;
        $topic = $this->Topic->read();
        $this->Topic->set(array(
            'active' => 0
        ));
        $this->Topic->save();
        $this->Session->setFlash('Topic id '.$id.' was deactivated','success');
        $this->redirect('/boards/view/'.$topic['Topic']['board_id']);
        exit;
    }
}