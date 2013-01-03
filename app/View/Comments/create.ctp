<h2>Add a comment</h2>
<?php 
	echo $this->Form->create(
		'Comment',
		array(
			'controller' => 'comments',
			'action' => 'create',
			'inputDefaults' => array(
				'class' => 'input-xxlarge',
				'div' => array(
					'class' => 'control-group'
					)
				)
			)
		);
	echo $this->Form->input(
		'Comment.comment',
		array(
			'label' => 'Comment',
			'type' => 'textarea'
			)
		);
	echo $this->Form->input(
		'Comment.topic_photo_id',
		array(
			'type' => 'hidden',
			'value' => $photo
			)
		);
	echo $this->Form->submit('Add comment',array('class' => 'btn btn-primary '));
	echo $this->Form->end();
?>