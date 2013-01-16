<section id="profile-page">
	<h1 class="left"><?php echo $user['User']['name']; ?></h1>
	<small class="left">Joined <?php echo date('F j,Y g:i a',strtotime($user['User']['created'])); ?></small>
	<span class="clear"></span>
	<section class="summary">
		<h2>All Summaries</h2>
		<?php if(!empty($user['Summary'])): ?>
		<?php foreach($user['Summary'] as $summary):?>
		<article class="summary">
			<h3><?php echo $boards[$summary['board_id']]; ?></h3>
			<?php for($i = 1; $i<=3; $i++){
					if(!empty($summary['photo'.$i]))
						echo $this->Html->link(
						$this->Html->image('/files/thumbnails/'.$photos[$summary['photo'.$i]]),
					    '/files/images/'.$photos[$summary['photo'.$i]],
					    array(
					    	'escape' => false,
					    	'class' => 'fancybox',
					    	'rel' => 'group'
					    )
				  );
				}
			?>
			<p><?php echo $summary['description']; ?></p>
		</article>
		<?php endforeach; ?>
		<?php else: ?>
			<article><p>No summaries have been completed yet.</p></article>
		<?php endif; ?>
	</section>
	<section class="photos">
	<h2>All Photos</h2>
	<?php if(!empty($user['TopicPhoto'])): ?>
		<?php foreach($user['TopicPhoto'] as $photo):?>
		<article>
			<?php if(!empty($photo['filename'])) 
				echo $this->Html->link(
					$this->Html->image('/files/thumbnails/'.$photo['filename']),
				    $photo['filepath'].$photo['filename'],
				    array(
				    	'escape' => false,
				    	'class' => 'fancybox left',
				    	'rel' => 'group'
				    )
				  );
			?>			
			<p class="left">
			<?php if(!empty($photo['description'])) echo nl2br(trim($photo['description'])).'<br />'; 
				else echo '<em>-BLANK-</em>';
			?>
				<small>
				Posted in <?php echo $this->Html->link($boards[$topics[$photo['topic_id']]] , '/boards/'.$topics[$photo['topic_id']].'/categories/'.$photo['topic_id']); ?>
				<em><?php echo date('F j,Y g:i a',strftime($photo['created'])); ?></em>
				</small>
			</p>
			<span class="clear"></span>
		</article>
		<?php endforeach; ?>
	<?php else: ?>
		<article><p>No photos have been posted yet.</p></article>
	<?php endif; ?>
	</section>
</section>