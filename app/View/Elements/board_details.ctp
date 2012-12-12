<section class="centered">
	<h1><?php echo $board['Board']['title']; ?></h1>
	<p><?php echo $board['Board']['description']; ?></p>
	<?php echo $this->Html->image($board['Board']['image']); ?>
	<?php if(!empty($board['Topic'])): ?>
	<ul class="nav nav-pills">
		<?php foreach($board['Topic'] as $topic): 
			$active = $this->params['topic'] == $topic['id'] ? ' class="active"' : '';
		?>
		<li<?php echo $active; ?>><?php echo $this->Html->link($topic['title'],'/boards/'.$board['Board']['id'].'/topics/'.$topic['id']); ?></li>
		<?php endforeach; ?>
	</ul>
	<?php endif; ?>
</section>