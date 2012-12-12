<section class="centered">
	<h1><?php echo $board['Board']['title']; ?></h1>
	<p><?php echo $board['Board']['description']; ?></p>
	<?php echo $this->Html->image($board['Board']['image']); ?>
</section>