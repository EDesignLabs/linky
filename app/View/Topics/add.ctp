<?php $collapsed = ' collapsed'; ?>
<?php echo $this->element('board_details'); ?>
<h3>Add a new topic to this board</h3>
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