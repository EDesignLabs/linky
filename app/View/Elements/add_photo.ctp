<?php 
	echo $this->Form->create('TopicPhoto', array('controller' => 'TopicPhotos', 'action' => 'add'));
	echo $this->Form->input(
		'TopicPhoto.image',
		array(
			'label' => 'Image Url'
			)
		);
	echo $this->Form->input(
		'Board.description',
		array(
			'type' => 'textarea',
			'label' => 'Description'
			)
		);
	echo $this->Form->input(
		'TopicPhoto.topic_id',
		array(
			'type' => 'hidden',
			'value' => $topic['Topic']['id']
			)
		);
	echo $this->Form->input(
		'TopicPhoto.board_id',
		array(
			'type' => 'hidden',
			'value' => $topic['Topic']['board_id']
			)
		);
	echo $this->Form->submit('Submit');
	echo $this->Form->end();
?>