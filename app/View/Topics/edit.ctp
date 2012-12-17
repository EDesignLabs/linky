<h3>Edit this category</h3>
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
			'label' => 'Category Title'
			)
		);
	echo $this->Form->input(
		'Topic.description',
		array(
			'type' => 'textarea',
			'label' => 'Category Prompt'
			)
		);
	echo $this->Html->link('Deactivate this category?','/topics/deactivate/'.$this->data['Topic']['id']);
	echo $this->Form->submit('Save Category');
	echo $this->Form->end();
?>