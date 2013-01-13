<h1><?php echo $board['Board']['title']; ?></h1>
<div id="demo" class="collapse in"><p class="lead"><?php echo $board['Board']['summary_prompt']; ?></p></div>
<button type="button" class="btn btn-danger" data-toggle="collapse" data-target="#demo">
  Close Description
</button>
<h2>Pick 3 images that you want to use for your summary. When you are ready, hit next.</h2>
<section id="add-summary-photos">
<?php
	if(!empty($photos)):
		foreach($photos as $photo):
?>
	<article class="photo-choice" data-id="<?php echo $photo['TopicPhoto']['id']; ?>">
<?php
			if(!empty($photo['TopicPhoto']['url']))
				echo $this->Html->link(
				    $this->Html->image($photo['TopicPhoto']['url']),
				    $photo['TopicPhoto']['url'],
				    array(
				    	'escape' => false,
				    	'class' => 'fancybox',
				    	'rel' => 'group'
				    )
				  );
			if(!empty($photo['TopicPhoto']['filename'])) 
				echo $this->Html->link(
					    $this->Html->image('/files/thumbnails/'.$photo['TopicPhoto']['filename']),
					    $photo['TopicPhoto']['filepath'].$photo['TopicPhoto']['filename'],
					    array(
					    	'escape' => false,
					    	'class' => 'fancybox',
					    	'rel' => 'group'
					    )
					  );
?>
			<div class="check">
				<div role="check" data-tooltip="Click to select or deselect this photo">
					<i class="icon-ok"></i>
				</div>
				<span class="clear"></span>
			</div>
	</article>
<?php
		endforeach;
?>
	<span class="clear"></span>
<?php
	endif;
	echo $this->Form->create('Summary', array('url' => '/boards/'.$board['Board']['id'].'/summary/add/2'));
	echo $this->Form->hidden('Summary.photo1', array('value' => 'pritika'));
	echo $this->Form->hidden('Summary.photo2');
	echo $this->Form->hidden('Summary.photo3');
	echo $this->Form->submit('Next');
	echo $this->Form->end();
?>
</section>