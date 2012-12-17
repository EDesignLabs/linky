<section id="add-photo" class="margin-20">
	<h4>Add your photo</h4>
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
			'label' => 'Upload a photo'
			)
		);
	echo $this->Form->input(
		'TopicPhoto.url',
		array(
			'label' => 'Image Url',
			'value' => isset( $photo['TopicPhoto']['url'] ) ? $photo['TopicPhoto']['url'] : ''
			)
		);
	$selected = isset($topic_id) ? $topic_id : null;
	echo $this->Form->input(
		'TopicPhoto.topic_id',
		array(
			'label' => 'Category',
			'type' => 'select',
			'options' => $topic_choices,
			'selected' => $selected
			)
		);
	echo $this->Form->input(
		'TopicPhoto.description',
		array(
			'type' => 'textarea',
			'label' => 'How is this photo relevant to this category?'
			)
		);
	echo $this->Form->input(
		'TopicPhoto.name',
		array(
			'label' => 'Your Name (optional)'
			)
		);
	echo $this->Form->input(
		'TopicPhoto.board_id',
		array(
			'type' => 'hidden',
			'value' => $board_id
			)
		);
	echo $this->Form->submit('Add Photo');
	echo $this->Form->end();
?>
</section>