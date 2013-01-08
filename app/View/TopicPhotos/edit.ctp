<section id="add-photo" class="margin-20">
	<h4>Edit your connection</h4>
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
	if(!empty($this->data['TopicPhoto']['url'])) echo $this->Html->image($this->data['TopicPhoto']['url'], array('class' => 'shrink'));
?>
	<span class="clear"></span>
<?php
	echo $this->Form->input(
		'TopicPhoto.file', array(
			'type' => 'file',
			'label' => 'Upload a different photo',
			'class' => 'left',
			'div' => array(
				'class' => 'control-group left'
				)
			)
		);
?>
	<h3 class="or left margin-20">OR</h3>
<?php
	echo $this->Form->input(
		'TopicPhoto.url',
		array(
			'label' => 'Image Url',
			'class' => 'input-xlarge',
			'div' => array(
				'class' => 'control-group right'
				)
			)
		);
?>
	<span class="clear"></span>
<?php
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
	$checked = $this->data['TopicPhoto']['anonymous'] === '0' ? 0 : 1;
	/*echo $this->Form->input(
		'TopicPhoto.anonymous',
		array(
			'legend' => 'Name shown in post',
			'type' => 'radio',
			'options' => array(
				'0' => "Yes, please show <b>my name</b> in my post",
				'1' => "Don't show my name and post as <b>anonymous</b> instead"
			),
			'checked' => $checked
		)
	);*/
	echo $this->Form->input(
			'Topic.board_id',
			array(
				'type' => 'hidden'
				)
			);
	echo $this->Html->link('Deactivate this photo','/topic_photos/deactivate/'.$this->data['TopicPhoto']['id'], array('class' => 'btn btn-danger left margin-20 alpha'));
	echo $this->Form->submit('Save Photo', array('div' => array('class'=> 'left'), 'class' => 'plus btn-themeboard '));
?>
	<span class="clear"></span>
<?php
	echo $this->Form->end();
?>
</section>