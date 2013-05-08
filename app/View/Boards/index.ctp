<?php if(!empty($boards)): ?>
			<div class="boards">
<?php foreach($boards as $b): ?>
				<article>
					<h4><?php echo $b['Board']['title']; ?></h4>
					<ul>
						<li><?php echo $this->Html->link('view board','/boards/view/'.$b['Board']['id']); ?></li>
						<?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'): ?>
						<li><?php echo $this->Html->link('add categories','/boards/'.$b['Board']['id'].'/categories/add'); ?></li>
						<?php endif; ?>
					</ul>
				</article>
<?php endforeach; ?>
			</div>
<?php else: ?>
	You don't have any boards yet. 
<?php echo $this->Html->link('Create a new board!', '/boards/create'); ?>
<?php endif; ?>