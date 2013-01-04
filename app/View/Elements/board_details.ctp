<section class="centered<?php echo isset($collapsed) ? $collapsed : ''; ?>">
	<h1><?php echo $board['Board']['title']; ?>
		<?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'): ?>
		<small>
			<?php echo $this->Html->link('edit this board','/boards/edit/'.$board['Board']['id'], array('class' => 'tiny')); ?>
		</small>
		<?php endif; ?>
	</h1>
	<p class="left width-big"><?php echo nl2br($board['Board']['description']); ?></p>
	<?php if(!empty($board['Board']['image'])) echo $this->Html->image($board['Board']['image'], array('class' => 'right shrink')); ?>
	<span class="clear"></span>
	<ul class="nav nav-topics nav-pills">
		<?php if(!empty($board['Topic'])): ?>
		<?php foreach($board['Topic'] as $topic): 
			$active = $this->params['topic'] == $topic['id'] ? ' class="active"' : '';
		?>
		<li<?php echo $active; ?>><?php echo $this->Html->link($topic['title'],'/boards/'.$board['Board']['id'].'/categories/'.$topic['id']); ?></li>
		<?php endforeach; ?>
		<?php endif; ?>
		<li><?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'): ?>
	<?php echo $this->Html->link('Add Categories','/boards/'.$board['Board']['id'].'/categories/add', array('class' => 'btn-themeboard plus')); ?>
	<?php endif; ?></li>
	</ul>
</section>