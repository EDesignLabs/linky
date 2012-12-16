<section id="add-photo" class="margin-20">
	<h4><?php echo $title; ?></h4>
<?php
	$action = $this->params['action'] != 'edit' ? 'add' : 'edit';
	echo $this->Form->create('TopicPhoto', array('controller' => 'TopicPhotos', 'action' => $action));
	if($action == 'edit'){
		echo $this->Form->input(
			'TopicPhoto.id',
			array(
				'type' => 'hidden',
				'value' => $photo['TopicPhoto']['id']
				)
			);
		echo $this->Html->image($photo['TopicPhoto']['image'], array('class' => 'shrink'));
	}
	echo $this->Form->input(
		'TopicPhoto.image',
		array(
			'label' => 'Image Url',
			'value' => isset( $photo['TopicPhoto']['image'] ) ? $photo['TopicPhoto']['image'] : ''
			)
		);
	$selected = isset($photo['Topic']['id']) ? $photo['Topic']['id'] : null;
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
			'label' => 'How is this photo relevant to this category?',
			'value' => isset($photo['TopicPhoto']['description']) ? $photo['TopicPhoto']['description'] : ''
			)
		);
	echo $this->Form->input(
		'TopicPhoto.name',
		array(
			'label' => 'Your Name (optional)',
			'value' => isset($photo['TopicPhoto']['name']) ? $photo['TopicPhoto']['name'] : ''
			)
		);
	echo $this->Form->input(
		'TopicPhoto.board_id',
		array(
			'type' => 'hidden',
			'value' => isset($photo['Topic']['board_id']) ? $photo['Topic']['board_id'] : ''
			)
		);
	if($action == 'edit'){
		echo $this->Html->link('Delete this photo','/topic_photos/delete/'.$photo['TopicPhoto']['id']);
	}
	echo $this->Form->submit('Save');
	echo $this->Form->end();
?>
</section>