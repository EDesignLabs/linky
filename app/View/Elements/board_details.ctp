<section class="centered<?php echo isset($collapsed) ? $collapsed : ''; ?>">
	<h1><?php echo $board['Board']['title']; ?></h1>
	<?php echo $this->Html->image($board['Board']['image'], array('class' => 'left shrink')); ?>
	<p class="left margin-20 width-big"><?php echo nl2br($board['Board']['description']); ?></p>
	<span class="clear"></span>
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