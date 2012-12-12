<section class="centered">
	<h1><?php echo $board['Board']['title']; ?></h1>
	<p><?php echo $board['Board']['description']; ?></p>
	<?php echo $this->Html->image($board['Board']['image']); ?>
	<?php if(!empty($board['Topics'])): ?>
	<ul>
		<?php foreach($board['Topics'] as $topic): ?>
		<li><?php echo $topic['Topics']['title']; ?></li>
		<?php endforeach; ?>
	</ul>
	<?php endif; ?>
</section>
<?php 
	echo $this->Form->create('Topic', array('boards/'.$board['Board']['id'].'/topics/add'));
	echo $this->Form->input(
		'Topic.title',
		array(
			'label' => 'Topic Title',
			'after' => '<span class="help"></span>'
			)
		);
	echo $this->Form->input(
		'Board.description',
		array(
			'label' => 'Topic Prompt'
			)
		);
	echo $this->Form->submit('Add Topic');
	echo $this->Form->end();
?>