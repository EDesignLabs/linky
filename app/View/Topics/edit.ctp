<h3>Edit this theme</h3>
<?php 
	echo $this->Form->create(
		'Topic', 
		array(
			'url' => '/categories/edit/'.$this->data['Topic']['board_id'],
			'inputDefaults' => array(
		        'div' => array(
		        	'class' => 'control-group'
		        	),
		        'class' => 'input-xxlarge'
		    	)
			)
		);
	echo $this->Form->input(
		'Topic.board_id',
		array(
			'type' => 'hidden'
			)
		);
	echo $this->Form->input(
		'Topic.id',
		array(
			'type' => 'hidden'
			)
		);
	echo $this->Form->input(
		'Topic.title',
		array(
			'label' => 'Theme title'
			)
		);
	echo $this->Form->input(
		'Topic.description',
		array(
			'type' => 'textarea',
			'label' => 'Theme prompt'
			)
		);
	echo $this->Html->link('Deactivate this category?','/topics/deactivate/'.$this->data['Topic']['id'], array('class' => 'btn btn-danger left margin-20 alpha'));
	echo $this->Form->submit('Save Theme', array('div' => array('class'=> 'left'), 'class' => 'btn btn-primary '));
?>
	<span class="clear"></span>
<?php
	echo $this->Form->end();
?>