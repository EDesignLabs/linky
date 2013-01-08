<?php echo $this->element('board_details'); ?>
<div id="action-bar">
	<p><?php echo !empty($topic['Topic']['description']) ? $topic['Topic']['description']: ''; ?>
	<?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'): ?>
		<?php echo $this->Html->link('edit this theme','/categories/edit/'.$topic['Topic']['id']); ?>
	<?php endif; ?>
	</p>
</div>
<?php echo $this->Html->link('Add a connection','/boards/'.$board['Board']['id'].'/categories/'.$topic['Topic']['id'].'/add_photos',array('class' => 'btn-themeboard plus')); ?>
<section id="feed">
	<?php  ?>
	<?php if(!empty($topic['TopicPhoto'])): ?>
	<?php foreach($topic['TopicPhoto'] as $photo): ?>
	<article id="<?php echo $photo['id']; ?>">
		<div class="image-area left">
		<?php if(!empty($photo['url'])) echo $this->Html->image($photo['url']); ?>
		<?php if(!empty($photo['filename'])) echo $this->Html->image($photo['filepath'].$photo['filename']); ?>
		</div>
		<div class="info-area right">
			<p>
				<?php if(!empty($photo['description'])) echo nl2br($photo['description']).'<br />'; ?>
				<small>Posted by <b><?php echo $photo['anonymous'] ? 'anonymous' : $photo['User']['username']; ?></b> <em><?php echo date('F j,Y g:i a',strftime($photo['created'])); ?></em></small>
				<?php if(AuthComponent::user('id') && AuthComponent::user('id') == $photo['user_id']): ?>
				<?php echo $this->Html->link('edit','/photos/edit/'.$photo['id']); ?>
				<?php endif; ?>
			</p>
		</div>
		<span class="clear"></span>
	</article>
	<?php endforeach; ?>
	<?php endif; ?>
</section>
