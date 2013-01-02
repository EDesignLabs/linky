<?php echo $this->element('board_details'); ?>
<h3 class="left"><?php echo $topic['Topic']['title']; ?>&nbsp;&nbsp;
	<?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'): ?>
	<small>
		<?php echo $this->Html->link('edit this category','/categories/edit/'.$topic['Topic']['id']); ?>
	</small>
	<?php endif; ?>
</h3>
<span class="clear"></span>
<p><?php echo !empty($topic['Topic']['description']) ? $topic['Topic']['description']: ''; ?></p>
<?php echo $this->Html->link('Add Photo(s) to this category','/boards/'.$board['Board']['id'].'/categories/'.$topic['Topic']['id'].'/add_photos',array('class' => 'btn')); ?>
<section id="feed">
	<?php if(!empty($topic['TopicPhoto'])): ?>
	<?php foreach($topic['TopicPhoto'] as $photo): ?>
	<article>
		<?php if(!empty($photo['url'])) echo $this->Html->image($photo['url'], array('class' => 'left')); ?>
		<?php if(!empty($photo['filename'])) echo $this->Html->image($photo['filepath'].$photo['filename'], array('class' => 'left')); ?>
		<p class="left">
			<?php if(!empty($photo['description'])) echo nl2br($photo['description']).'<br />'; ?>
			<small><?php echo !empty($photo['name']) ? $photo['name'] : 'anonymous'; ?> <em><?php echo date('F j,Y g:i a',strftime($photo['created'])); ?></em></small>
			<?php if(AuthComponent::user('id') && AuthComponent::user('id') == $photo['user_id']): ?>
			<?php echo $this->Html->link('edit','/photos/edit/'.$photo['id']); ?>
			<?php endif; ?>
		</p>
		<span class="clear"></span>
	</article>
	<?php endforeach; ?>
	<?php endif; ?>
</section>