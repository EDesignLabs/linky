<?php echo $this->element('board_details'); ?>
<div id="action-bar">
	<p><?php echo !empty($topic['Topic']['description']) ? $topic['Topic']['description']: ''; ?>
	<?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'): ?>
		<?php echo $this->Html->link('edit this category','/categories/edit/'.$topic['Topic']['id']); ?>
	<?php endif; ?>
	</p>
</div>
<?php echo $this->Html->link('Add Photo(s) to this category','/boards/'.$board['Board']['id'].'/categories/'.$topic['Topic']['id'].'/add_photos',array('class' => 'btn-themeboard plus')); ?>
<section id="feed">
	<?php if(!empty($topic['TopicPhoto'])): ?>
	<?php foreach($topic['TopicPhoto'] as $photo): ?>
	<article id="<?php echo $photo['id']; ?>">
		<div class="image-area left">
		<?php if(!empty($photo['url'])) echo $this->Html->image($photo['url']); ?>
		<?php if(!empty($photo['filename'])) echo $this->Html->image($photo['filepath'].$photo['filename']); ?>
		<?php if(!empty($photo['Badge'])): ?>
		<h3>Badges</h3>
			<?php foreach($photo['Badge'] as $b): ?>
				<h3 class="award left"><span style="background-position: 0px <?php echo -24*($b['id']-1); ?>px;" class="badges"></span><?php echo $b['title']; ?>
					<?php
					if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'){
							echo $this->Html->link('remove','/badges/revoke/'.$photo['id'].'/'.$b['id']);
						}
					?>
				</h3>
			<?php endforeach; ?>
		<?php endif; ?>
		<?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'):
				echo $this->Form->create('Badges', array('controller' => 'badges','action' => 'award'));
				echo $this->Form->input(
					'TopicPhoto.id',
					array(
						'type' => 'hidden',
						'value' => $photo['id']
						)
					);
				echo $this->Form->input(
					'Badge.id',
					array(
						'type' => 'select',
						'options' => $badges,
						'label' => false
						)
					);
				echo $this->Form->submit('Award Badge');
				echo $this->Form->end();
				endif;
		?>
		</div>
		<div class="info-area right">
			<p>
				<?php if(!empty($photo['description'])) echo nl2br($photo['description']).'<br />'; ?>
				<small>Posted by <b><?php echo $photo['anonymous'] ? 'anonymous' : $photo['User']['username']; ?></b> <em><?php echo date('F j,Y g:i a',strftime($photo['created'])); ?></em></small>
				<?php if(AuthComponent::user('id') && AuthComponent::user('id') == $photo['user_id']): ?>
				<?php echo $this->Html->link('edit','/photos/edit/'.$photo['id']); ?>
				<?php endif; ?>	
			</p>
			<div class="comments">
			<?php if(!empty($photo['Comment'])): ?>
				<h3>Comments</h3>
			<?php foreach($photo['Comment'] as $c): ?>
				<p>
					<?php echo nl2br($c['comment']); ?>
					<small>Posted by <?php echo $c['User']['username']; ?> <em><?php echo date('F j,Y g:i a',strftime($c['created'])); ?></em>
						<?php if(AuthComponent::user('id') && AuthComponent::user('id') === $c['user_id']):?>
						<?php echo $this->Html->link('delete','/comments/delete/'.$c['id']); ?>
						<?php endif; ?>
					</small>
				</p>
			<?php endforeach; ?>
			<?php endif; ?>
			<?php if(AuthComponent::user('id')): ?>
				<?php 
					echo $this->Form->create(
						'Comment',
						array(
							'controller' => 'comments',
							'action' => 'create',
							'inputDefaults' => array(
								'class' => 'input-large',
								'div' => array(
									'class' => 'control-group'
									)
								)
							)
						);
					echo $this->Form->input(
						'Comment.comment',
						array(
							'label' => false,
							'type' => 'textarea'
							)
						);
					echo $this->Form->input(
						'Comment.topic_photo_id',
						array(
							'type' => 'hidden',
							'value' => $photo['id']
							)
						);
					echo $this->Form->input(
						'Topic.id',
						array(
							'type' => 'hidden',
							'value' => $this->request->params['topic']
							)
						);
					echo $this->Form->input(
						'Topic.board_id',
						array(
							'type' => 'hidden',
							'value' => $this->request->params['id']
							)
						);
					echo $this->Form->submit('Add comment',array('class' => 'btn-themeboard plus'));
					echo $this->Form->end();
				?>
			<?php endif; ?>
			</div>
		</div>
		<span class="clear"></span>
	</article>
	<?php endforeach; ?>
	<?php endif; ?>
</section>