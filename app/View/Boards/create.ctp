<h2>Create new Board</h2>
<?php 
	echo $this->Form->create(
		'Board', 
		array(
			'controller' => 'boards',
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
		'Board.title',
		array(
			'label' => 'Board Title'
			)
		);
	echo $this->Form->input(
		'Board.description',
		array(
			'label' => 'Text Prompt'
			)
		);
	echo $this->Form->input(
		'Board.image',
		array(
			'label' => 'Image Url'
			)
		);
	echo $this->Form->submit('Create Board',array('class' => 'btn btn-primary '));
	echo $this->Form->end();
?>