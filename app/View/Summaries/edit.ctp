<h1><?php echo $board['Board']['title']; ?>
	<button type="button" class="btn btn-link" data-toggle="collapse" data-target="#demo">
  		<i class="icon-plus-sign"></i>Learn More
	</button>
</h1>
<div id="demo" class="collapse"><p><?php echo $board['Board']['summary_prompt']; ?></p>
</div>
<section id="edit-summary-photos">
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
 	<span class="clear"></span>
 <?php
 	echo $this->Html->link('Choose different photos', '/summary/changePhotos/'.$summary['Summary']['id']);
 	echo $this->Form->create('Summary', array('url' => '/summary/edit/'.$summary['Summary']['id'].'/'));
 	echo $this->Form->input('Summary.description', array('label' => false,
 		'type' => 'textarea', 
 		'value' => $summary['Summary']['description'],
 		'class' => 'input-huge'
 		));
 	echo $this->Form->hidden('Summary.complete',array('value' => '1'));
 	echo $this->Form->submit('Complete and submit your summary', array('class' => 'right btn btn-danger'));
 	echo $this->Form->end();
 ?>
</section>