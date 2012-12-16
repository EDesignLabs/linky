<?php echo $this->element('board_details'); ?>
<h3><?php echo $topic['Topic']['title']; ?></h3>
<p><?php echo !empty($topic['Topic']['description']) ? $topic['Topic']['description']: ''; ?></p>
<!-- Button to trigger modal -->
<a href="#add-media" role="button" class="btn" data-toggle="modal">Add a photo to this category</a>
<!-- Modal -->
<div id="add-media" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<?php echo $this->element('add-photo'); ?>
</div>
<?php //echo $this->Html->link('Add Photo(s) to this category','#'); ?>
<section id="feed">
	<?php if(!empty($topic['TopicPhoto'])): ?>
	<?php foreach($topic['TopicPhoto'] as $photo): ?>
	<article>
		<?php if(!empty($photo['image'])) echo $this->Html->image($photo['image'], array('class' => 'left')); ?>
		<p class="left">
			<?php if(!empty($photo['description'])) echo $photo['description'].'<br />'; ?>
			<small><?php echo !empty($photo['name']) ? $photo['name'] : 'anonymous'; ?> <em><?php echo date('F j,Y g:i a',strftime($photo['created'])); ?></em></small>
			<?php echo $this->Html->link('edit','/photos/edit/'.$photo['id']); ?>
		</p>
		<span class="clear"></span>
	</article>
	<?php endforeach; ?>
	<?php endif; ?>
</section>