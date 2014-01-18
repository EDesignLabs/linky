<section id="add-photo" class="margin-20">
	<h1>Add your connection</h1>
<?php
	echo $this->Form->create(
		'TopicPhoto', 
		array(
			'controller' => 'TopicPhotos', 
			'action' => 'add',
			'type' => 'file',
			'inputDefaults' => array(
		        'div' => array(
		        	'class' => 'control-group'
		        	),
		        'class' => 'input-xxlarge'
		    	)
			)
		);
	echo $this->Form->input(
		'TopicPhoto.file', array(
			'type' => 'file',
			'label' => 'Upload a photo',
			'class' => 'left',
			'div' => array(
				'class' => 'control-group left'
				)
			)
		);
?>
	<h3 class="or left margin-20">OR</h3>
<?php
	echo $this->Form->input(
		'TopicPhoto.url',
		array(
			'label' => 'Add an image url',
			'class' => 'input-xlarge',
			'div' => array(
				'class' => 'control-group right'
				)
			)
		);
?>
	<span class="clear"></span>
<?php
	$topic_id = isset($this->data['TopicPhoto']['topic_id']) ? $this->data['TopicPhoto']['topic_id'] : $this->request->params['topic'];
	$selected = isset($topic_id) ? $topic_id : null;
	echo $this->Form->input(
		'TopicPhoto.description',
		array(
			'type' => 'textarea',
			'label' => 'How does your photo connect to this theme? (required, limit: 250 characters)'
			)
		);
	$board_id = isset($this->data['TopicPhoto']['board_id']) ? $this->data['TopicPhoto']['board_id'] : $this->request->params['id'];
	echo $this->Form->input(
		'TopicPhoto.board_id',
		array(
			'type' => 'hidden',
			'value' => $board_id
			)
		);
	echo $this->Form->input(
		'TopicPhoto.topic_id',
		array(
			'type' => 'hidden',
			'value' => $selected
			)
		);
	echo $this->Form->submit('Add Connection',array('class' => 'btn-themeboard btn'));
	echo $this->Form->end();
?>
</section>