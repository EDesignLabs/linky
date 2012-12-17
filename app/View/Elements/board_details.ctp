<section class="centered<?php echo isset($collapsed) ? $collapsed : ''; ?>">
	<h1><?php echo $board['Board']['title']; ?>
		<small>
			<?php echo $this->Html->link('edit this board','/boards/edit/'.$board['Board']['id'], array('class' => 'tiny')); ?>
		</small>
	</h1>
	<?php if(!empty($board['Board']['image'])) echo $this->Html->image($board['Board']['image'], array('class' => 'left shrink')); ?>
	<p class="left margin-20 width-big"><?php echo nl2br($board['Board']['description']); ?></p>
	<?php echo $this->Html->link('Add Categories','/boards/'.$board['Board']['id'].'/categories/add', array('class' => 'btn margin-20-all')); ?>
	<span class="clear"></span>
	<?php if(!empty($board['Topic'])): ?>
	<ul class="nav nav-pills">
		<?php foreach($board['Topic'] as $topic): 
			$active = $this->params['topic'] == $topic['id'] ? ' class="active"' : '';
		?>
		<li<?php echo $active; ?>><?php echo $this->Html->link($topic['title'],'/boards/'.$board['Board']['id'].'/categories/'.$topic['id']); ?></li>
		<?php endforeach; ?>
	</ul>
	<?php endif; ?>
</section>