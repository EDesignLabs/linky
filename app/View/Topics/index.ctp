<?php echo $this->element('board_details'); ?>
<h3><?php echo $topic['Topic']['title']; ?></h3>
<p><?php echo $topic['Topic']['description']; ?></p>
<?php echo $this->element('add_photo'); ?>
<section id="feed">
	<?php if(!empty($topic['TopicPhoto'])): ?>
	<?php foreach($topic['TopicPhoto'] as $photo): ?>
	<article>
		<?php 
			echo $this->Html->image($photo['image']); 
			echo $this->Html->para($photo['description']);
			echo $this->Html->small($photo['created']);
		?>
	</article>
	<?php endforeach; ?>
	<?php endif; ?>
</section>