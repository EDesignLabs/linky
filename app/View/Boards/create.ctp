<h2>Create new Board</h2>
<?php 
	echo $this->Form->create('Board', array('boards/create/'));
	echo $this->Form->input(
		'Board.title',
		array(
			'label' => 'Board Title'
			)
		);
	echo $this->Form->input(
		'Board.description',
		array(
			'label' => 'Text Prompt',
			'class' => 'xxlarge'
			)
		);
	echo $this->Form->input(
		'Board.image',
		array(
			'label' => 'Image Url'
			)
		);
	echo $this->Form->submit('Create Board');
	echo $this->Form->end();
?>