<?php echo $this->element('board_details'); ?>
<h3><?php echo $topic['Topic']['title']; ?></h3>
<p><?php echo $topic['Topic']['description']; ?></p>
<?php echo $this->Html->link('Add Photo(s) to this topic','#',array('id' => 'add-link')); ?>
<?php echo $this->element('add_photo'); ?>
<section id="feed">
	<?php if(!empty($topic['TopicPhoto'])): ?>
	<?php foreach($topic['TopicPhoto'] as $photo): ?>
	<article>
		<?php if(!empty($photo['image'])) echo $this->Html->image($photo['image']); ?>
		<?php if(!empty($photo['description'])) echo $this->Html->para($photo['description']); ?>
		<small><?php echo !empty($photo['name']) ? $photo['name'] : 'anonymous'; ?></small>
		<small>uploaded at <?php echo strtotime($photo['created']) ?></small>
	</article>
	<?php endforeach; ?>
	<?php endif; ?>
</section>