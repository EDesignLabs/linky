<header id="summary">
	<h1><?php echo $board['Board']['title']; ?></h1>
	<p><?php echo $board['Board']['summary_prompt']; ?></p>
</header>
<section id="edit-summary-photos" class="summary">
<?php foreach($photos as $photo): 
	echo $this->Html->link(
	    $this->Html->image('/files/thumbnails/'.$photo['TopicPhoto']['filename']),
	    $photo['TopicPhoto']['filepath'].$photo['TopicPhoto']['filename'],
	    array(
	    	'escape' => false,
	    	'class' => 'fancybox',
	    	'rel' => 'group'
	    )
	  );
 endforeach;
 ?>
 	<span class="clear push"></span>
 <?php
 	echo $this->Html->link('Choose different photos', '/summary/changePhotos/'.$summary['Summary']['id'], array('class' => 'btn btn-themeboard margin-20 alpha'));
 ?>
 	<span class="clear push"></span>
 <?php
 	echo $this->Form->create('Summary', array('url' => '/summary/edit/'.$summary['Summary']['id'].'/'));
 	echo $this->Form->input('Summary.description', array('label' => false,
 		'type' => 'textarea', 
 		'value' => $summary['Summary']['description'],
 		'class' => 'input-huge',
 		'placeholder' => 'Your summary goes here, write to your heart\'s content.'
 		));
 	echo $this->Form->hidden('Summary.complete',array('value' => '1'));
 	echo $this->Form->submit('Complete and submit your summary', array('class' => 'right btn btn-danger btn-themeboard'));
 	echo $this->Form->end();
 ?>
</section>