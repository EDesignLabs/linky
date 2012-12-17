<section id="add-photo" class="margin-20">
	<h4>Edit your photo</h4>
<?php
	echo $this->Form->create(
		'TopicPhoto', 
		array(
			'controller' => 'TopicPhotos', 
			'action' => 'edit',
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
			'TopicPhoto.id',
			array(
				'type' => 'hidden'
				)
			);
	echo $this->Form->input(
			'Topic.board_id',
			array(
				'type' => 'hidden'
				)
			);
	if(!empty($this->data['TopicPhoto']['image'])) echo $this->Html->image($this->data['TopicPhoto']['image'], array('class' => 'shrink'));
	if(!empty($this->data['TopicPhoto']['filename'])) {
		echo $this->Form->input(
			'TopicPhoto.filename',
			array(
				'type' => 'hidden',
				'value' => $this->data['TopicPhoto']['filename']
				)
			);
		echo $this->Form->input(
			'TopicPhoto.filepath',
			array(
				'type' => 'hidden',
				'value' => $this->data['TopicPhoto']['filepath']
				)
			);
		echo $this->Html->image($this->data['TopicPhoto']['filepath'].$this->data['TopicPhoto']['filename'], array('class' => 'shrink'));
	}
	echo $this->Form->input(
		'TopicPhoto.file', array(
			'type' => 'file',
			'label' => 'Upload a different photo'
			)
		);
	echo $this->Form->input(
		'TopicPhoto.url',
		array(
			'label' => 'Image Url'
			)
		);
	$selected = isset($this->data['Topic']['id']) ? $this->data['Topic']['id'] : null;
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
			'label' => 'Your Name (optional)',
			'value' => empty($this->data['TopicPhoto']['name']) ? 'anonymous' : $this->data['TopicPhoto']['name']
			)
		);
	echo $this->Html->link('Deactivate this photo','/topic_photos/deactivate/'.$this->data['TopicPhoto']['id']);
	echo $this->Form->submit('Save');
	echo $this->Form->end();
?>
</section>