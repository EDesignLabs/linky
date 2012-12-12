<?php echo $this->element('board_details'); ?>
<?php 
	echo $this->Form->create('Topic', array('boards/'.$board['Board']['id'].'/topics/add'));
	echo $this->Form->input(
		'Topic.board_id',
		array(
			'type' => 'hidden',
			'value' => $board['Board']['id']
			)
		);
	echo $this->Form->input(
		'Topic.title',
		array(
			'label' => 'Topic Title',
			'after' => '<span class="help"></span>'
			)
		);
	echo $this->Form->input(
		'Topic.description',
		array(
			'type' => 'textarea',
			'label' => 'Topic Prompt'
			)
		);
	echo $this->Form->submit('Add Topic');
	echo $this->Form->end();
?>