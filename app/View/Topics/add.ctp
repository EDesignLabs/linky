<?php $collapsed = ' collapsed'; ?>
<?php echo $this->element('board_details'); ?>
<h3>Add a new category to this board</h3>
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
			'label' => 'Category Title',
			'after' => '<span class="help"></span>'
			)
		);
	echo $this->Form->input(
		'Topic.description',
		array(
			'type' => 'textarea',
			'label' => 'Category Prompt'
			)
		);
	echo $this->Form->submit('Create Category',array('class' => 'btn btn-primary '));
	echo $this->Form->end();
?>