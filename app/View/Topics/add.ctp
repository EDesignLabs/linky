<?php $collapsed = ' collapsed'; ?>
<?php echo $this->element('board_details'); ?>
<h3>Add a new theme to this board</h3>
<?php 
	echo $this->Form->create(
		'Topic', 
		array(
			'url' => '/boards/'.$board['Board']['id'].'/categories/add',
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
			'type' => 'hidden',
			'value' => $board['Board']['id']
			)
		);
	echo $this->Form->input(
		'Topic.title',
		array(
			'label' => 'Theme title',
			'after' => '<span class="help"></span>'
			)
		);
	echo $this->Form->input(
		'Topic.description',
		array(
			'type' => 'textarea',
			'label' => 'Theme prompt'
			)
		);
	echo $this->Form->submit('Create Theme',array('class' => 'btn btn-primary '));
	echo $this->Form->end();
?>