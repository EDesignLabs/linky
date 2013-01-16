<h1><?php echo $board['Board']['title']; ?>
	<button type="button" class="btn btn-link" data-toggle="collapse" data-target="#demo">
  		<i class="icon-plus-sign"></i>Learn More
	</button>
</h1>
<div id="demo" class="collapse"><p><?php echo $board['Board']['summary_prompt']; ?></p>
</div>
<section id="edit-summary-photos">
	<article class="summary">
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
	 	<p><?php echo nl2br($summary['Summary']['description']); ?></p>
	 	<small>
			Completed by <?php echo $summary['User']['name']; ?> for board <?php echo $this->Html->link($summary['Board']['title'], '/boards/'.$summary['Board']['id']); ?>
			<em>on <?php echo date('F j,Y g:i a',strtotime($summary['Summary']['modified'])); ?></em>
		</small>
	<article>
</section>