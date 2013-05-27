<header id="summary">
	<h1><?php echo $board['Board']['title']; ?></h1>
	<p><?php echo $board['Board']['summary_prompt']; ?></p>
</header>
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
			Completed by <?php echo $this->html->link($summary['User']['name'],'/profile/'.$summary['User']['id']); ?> for board <?php echo $this->Html->link($summary['Board']['title'], '/boards/view/'.$summary['Board']['id']); ?>
			<em>on <?php echo date('F j,Y g:i a',strtotime($summary['Summary']['modified'])); ?></em>
		</small>
	<article>
</section>