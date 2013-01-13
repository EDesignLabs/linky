<h1><?php echo $board['Board']['title']; ?></h1>
<div id="demo" class="collapse in"><p class="lead"><?php echo $board['Board']['summary_prompt']; ?></p>
</div>
<button type="button" class="btn btn-danger" data-toggle="collapse" data-target="#demo">
  Close Description
</button>
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
 endforeach; ?>