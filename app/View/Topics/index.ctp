<?php echo $this->element('board_details'); ?>
<h3><?php echo $topic['Topic']['title']; ?></h3>
<p><?php echo $topic['Topic']['description']; ?></p>
<?php echo $this->Html->link('Add Photo(s) to this topic','#',array('id' => 'add-link')); ?>
<?php echo $this->element('add_photo'); ?>
<section id="feed">
	<?php if(!empty($topic['TopicPhoto'])): ?>
	<?php foreach($topic['TopicPhoto'] as $photo): ?>
	<article>
		<?php if(!empty($photo['image'])) echo $this->Html->image($photo['image'], array('class' => 'left')); ?>
		<p class="left">
		<?php if(!empty($photo['description'])) echo $photo['description'].'<br />'; ?>
		<small><?php echo !empty($photo['name']) ? $photo['name'] : 'anonymous'; ?> <em><?php echo date('F j,Y',strftime($photo['created'])); ?></em></small>
		</p>
		<span class="clear"></span>
	</article>
	<?php endforeach; ?>
	<?php endif; ?>
</section>