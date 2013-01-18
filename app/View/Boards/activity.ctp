<div id="activity">
	<h2><b>Welcome <?php echo AuthComponent::user('name'); ?>!</b> <?php echo $this->Html->link('Your profile', '/profile/'.AuthComponent::user('id')); ?></h2>
	<section class="feed">
		<?php if(!empty($stats)):?>
		<?php foreach($stats as $k => $board): ?>
		<article<?php echo $k%3 == 0 ? ' class="alpha"' : ''; ?>>
			<h3><?php echo $board['title']; ?></h3>
			<div class="action">
				<?php echo $this->Html->link('go to board','/boards/view/'.$board['id'], array('class' => 'left btn link')); ?>
				<?php if($board['summary']): ?>
				<?php echo $this->Html->link('go to summary','/boards/'.$board['id'].'/summary/add', array('class' => 'right btn link')); ?>
				<?php else: ?>
					<span class="right link">go to summary</span>
				<?php endif; ?>
				<span class="clear"></span>
			</div>
			<ul>
				<li>Your connections:  <?php echo $board['my_photos']; ?></li>
				<li>Total connections: <?php echo $board['total_photos']; ?></li>
			</ul>
		</article>
		<?php if($k%2 == 0 && $k > 0): ?> <span class="clear"></span><?php endif; ?>
		<?php endforeach; ?>
		<span class="clear"></span>
		<?php else: ?>
			<p>Oh no! There are no boards for you to view :(</p>
		<?php endif; ?>
	</section>
	<?php if(AuthComponent::user('role') != 'student'): ?>
	<h2>Students</h2>
	<table class="table table-bordered">
		<thead>
			<th>#</th>
			<th>Name</th>
			<th>Username / Email</th>
			<th>Photos</th>
			<th>Summaries</th>
			<th>Joined</th>
		</thead>
		<?php foreach($students as $k=>$s): ?>
		<tr>
			<td><?php echo ++$k; ?></td>
			<td><?php echo $this->Html->link($s['User']['name'], '/profile/'.$s['User']['id']); ?></td>
			<td><?php echo $s['User']['username']; ?></td>
			<td><?php echo count($s['TopicPhoto']); ?></td>
			<td><?php echo count($s['Summary']); ?></td>
			<td><?php echo date('F j, Y g:i a', strtotime($s['User']['created'])); ?></td>
		<tr>
		<?php endforeach; ?>
	</table>
	<?php endif; ?>
	<h2>Your Photos</h2>
	<section id="feed">
		<?php if(!empty($photos)): ?>
		<?php foreach($photos as $k=>$photo): ?>
		<article>
			<div class="image-area left">
				<?php if(!empty($photo['TopicPhoto']['filename']))
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
			</div>
			<div class="info-area right">
				<p>
				<?php if(!empty($photo['TopicPhoto']['description'])) echo nl2br(trim($photo['TopicPhoto']['description'])).'<br />'; ?>
				<small>
					Posted in <?php echo $this->Html->link($board_titles[$photo['Topic']['board_id']], '/boards/'.$photo['Topic']['board_id'].'/categories/'.$photo['Topic']['id'].'/#'.$photo['TopicPhoto']['id']); ?>
					<em><?php echo date('F j,Y g:i a',strftime($photo['TopicPhoto']['created'])); ?></em></small>
				</p>
			</div>
			<span class="clear"></span>
		</article>
		<?php if($k%2 == 1): ?><span class="push clear"></span><?php endif; ?>
		<?php endforeach; ?>
		<span class="clear"></span>
		<?php else: ?>
		You have uploaded no photos yet :( What are you waiting for?
		<?php endif; ?>
	</section>
</div>
