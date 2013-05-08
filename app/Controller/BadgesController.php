<?php
App::uses('AppController', 'Controller');
class BadgesController extends AppController {
	public $name = 'Badges';
	public $uses = array('TopicPhoto','Badge');
	public $helpers = array('Session');
	public function add() {
        if (!empty($this->data)) {
        	$this->request->data['Badge']['user_id'] = $this->Auth->user('id');
            $this->Badge->create();
            if ($this->Badge->save($this->request->data)) {
            	$this->Session->setFlash('Badge '.$this->data['Badge']['title'].' was saved','success');
                $this->redirect('add');
                exit;
            } else {
                $this->Session->setFlash(__('The badge could not be saved. Please, try again.'));
            }
        }
    }
	public function award(){
		if(!empty($this->data)){
			$this->Badge->save($this->data);
			$this->TopicPhoto->id = $this->data['TopicPhoto']['id'];
			$this->TopicPhoto->unbindModelAll();
			$this->TopicPhoto->bindModel(array(
				'belongsTo' => array('Topic')
				));
			$photo = $this->TopicPhoto->read();
			$this->Session->setFlash('Award succesful','success');
			$this->redirect('/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id']);
			exit;
		}
	}
	public function revoke(){
		$photo = $this->request->params['photo'];
		$badge = $this->request->params['badge'];
		$sql = "DELETE FROM topic_photo_badges WHERE topic_photo_id = {$photo} AND badge_id = {$badge};";
		$this->Badge->query($sql);
		$this->TopicPhoto->id = $photo;
		$this->TopicPhoto->unbindModelAll();
		$this->TopicPhoto->bindModel(array(
			'belongsTo' => array('Topic')
			));
		$photo = $this->TopicPhoto->read();
		$this->Session->setFlash('Award revoked','success');
		$this->redirect('/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id']);
		exit;
	}
}