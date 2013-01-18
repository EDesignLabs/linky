<header id="summary">
	<h1><?php echo $board['Board']['title']; ?></h1>
	<p><?php echo $board['Board']['summary_prompt']; ?></p>
	<p>Pick 3 images that you want to use for your summary. When you are ready, hit next.</p>
</header>
<section id="add-summary-photos">
<?php
	if(!empty($photos)):
		foreach($photos as $k=>$photo):
?>
	<article class="<?php echo $k%5 == 0 ? 'alpha ' : '' ;?>photo-choice" data-id="<?php echo $photo['TopicPhoto']['id']; ?>">
<?php
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
	echo $this->Form->create('Summary', array('url' => '/summary/edit/'.$summary['Summary']['id']));
	echo $this->Form->hidden('Summary.id', array('value' => $summary['Summary']['id']));
?>
	<div id="photo-selects">
<?php
	echo $this->Form->hidden('Summary.photo1', array('value' => $summary['Summary']['photo1'] ));
	echo $this->Form->hidden('Summary.photo2', array('value' => $summary['Summary']['photo2'] ));
	echo $this->Form->hidden('Summary.photo3', array('value' => $summary['Summary']['photo3'] ));
?>
	</div>
	<span class="clear"></span>
<?php
	echo $this->Form->submit('Next', array('class' => 'btn btn-themeboard right'));
	echo $this->Form->end();
?>
</section>