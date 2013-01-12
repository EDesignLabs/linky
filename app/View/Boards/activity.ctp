<div id="activity">
	<h2><b>Welcome <?php echo AuthComponent::user('username'); ?>!</b> Your Boards</h2>
	<section class="feed">
		<?php if(!empty($stats)):?>
		<?php foreach($stats as $k => $board): ?>
		<article<?php echo $k%3 == 0 ? ' class="alpha"' : ''; ?>>
			<h3><?php echo $this->Html->link($board['title'],'/boards/view/'.$board['id']); ?></h3>
			<?php if($board['pool']): ?>
			<h3><?php echo $this->Html->link('Create story','/boards/story/'.$board['id']); ?></h3>
			<?php endif; ?>
			<ul>
				<li>Your connections:  <?php echo $board['my_photos']; ?></li>
				<li>Total connections: <?php echo $board['total_photos']; ?></li>
			</ul>
		</article>
		<?php endforeach; ?>
		<span class="clear"></span>
		<?php else: ?>
			<p>Oh no! There are no boards for you to view :(</p>
		<?php endif; ?>
	</section>
	<h2>Your Photos</h2>
	<section id="feed">
		<?php if(!empty($photos)): ?>
		<?php foreach($photos as $photo): ?>
		<article>
			<div class="image-area left">
				<?php if(!empty($photo['TopicPhoto']['url']))
						echo $this->Html->link(
						    $this->Html->image($photo['TopicPhoto']['url']),
						    $photo['TopicPhoto']['url'],
						    array(
						    	'escape' => false,
						    	'class' => 'fancybox',
						    	'rel' => 'group'
						    )
						  );
				?>
				<?php if(!empty($photo['TopicPhoto']['filename'])) 
					echo $this->Html->link(
						    $this->Html->image($photo['TopicPhoto']['filepath'].$photo['TopicPhoto']['filename']),
						    $photo['TopicPhoto']['filepath'].$photo['TopicPhoto']['filename'],
						    array(
						    	'escape' => false,
						    	'class' => 'fancybox',
						    	'rel' => 'group'
						    )
						  );
				?>
			</div>
			<div class="info-area right">
				<p>
				<?php if(!empty($photo['TopicPhoto']['description'])) echo nl2br($photo['TopicPhoto']['description']).'<br />'; ?>
				<small>
					Posted in <?php echo $this->Html->link($boards[$photo['Topic']['board_id']], '/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id'].'/#'.$photo['TopicPhoto']['id']); ?>
					<em><?php echo date('F j,Y g:i a',strftime($photo['TopicPhoto']['created'])); ?></em></small>
				</p>
			</div>
			<span class="clear"></span>
		</article>
		<?php endforeach; ?>
		<?php else: ?>
		You have uploaded no photos yet :( What are you waiting for?
		<?php endif; ?>
	</section>
</div>
