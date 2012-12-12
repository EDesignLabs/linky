<?php if(!empty($boards)): ?>
			<ol>
<?php foreach($boards as $b): ?>
				<li>
					<h4><?php echo $b['Board']['title']; ?></h4>
					<ul>
						<li><?php echo $this->Html->link('view board','/boards/view/'.$b['Board']['id']); ?></li>
						<li><?php echo $this->Html->link('add topics','/boards/'.$b['Board']['id'].'/topics/add'); ?></li>
					</ul>
				</li>
<?php endforeach; ?>
			</ol>
		</section>
<?php else: ?>
	You don't have any boards yet. 
<?php echo $this->Html->link('Create a new board!', '/boards/create'); ?>
<?php endif; ?>