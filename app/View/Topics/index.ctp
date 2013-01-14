<?php echo $this->element('board_details'); ?>
<div id="action-bar">
	<p><?php echo !empty($topic['Topic']['description']) ? $topic['Topic']['description']: ''; ?>
	<?php if(AuthComponent::user('id') && AuthComponent::user('role') != 'student'): ?>
		<?php echo $this->Html->link('edit this theme','/categories/edit/'.$topic['Topic']['id']); ?>
	<?php endif; ?>
	</p>
</div>
<?php echo $this->Html->link('Add a connection','/boards/'.$board['Board']['id'].'/categories/'.$topic['Topic']['id'].'/add_photos',array('class' => 'btn-themeboard plus')); ?>
<section id="feed">
	<?php  ?>
	<?php if(!empty($photos)): ?>
	<?php foreach($photos as $k=>$photo): ?>
	<article id="<?php echo $photo['TopicPhoto']['id']; ?>">
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
				<small>Posted by <b><?php echo $photo['User']['name']; ?></b> <em><?php echo date('F j,Y g:i a',strftime($photo['TopicPhoto']['created'])); ?></em></small>
				<?php if(AuthComponent::user('id') && AuthComponent::user('id') == $photo['TopicPhoto']['user_id']): ?>
				<?php echo $this->Html->link('edit','/photos/edit/'.$photo['TopicPhoto']['id']); ?>
				<?php endif; ?>
			</p>
		</div>
		<span class="clear"></span>
	</article>
	<?php if($k%2 == 1): ?><span class="clear push"></span><?php endif; ?>
	<?php endforeach; ?>
	<span class="clear"></span>
	<?php if($total_pages > 1): ?>
	<div class="pagination">
		<h3>Pages</h3>
	<?php 
		$this_page = isset($this->request->named['page']) ? $this->request->named['page'] : 1;
		for($i = 1; $i <= $total_pages; $i++){
			if($i != $this_page){
				echo $this->Html->link($i,'/boards/'.$topic['Topic']['board_id'].'/categories/'.$topic['Topic']['id'].'/page:'.$i,array('class' => 'page'));
			}else{
				echo '<span class="page">'.$i.'</span>';
			}
		}
	?>
		<span class="clear"></span>
	</div>
	<?php endif; ?>
	<?php endif; ?>
</section>
