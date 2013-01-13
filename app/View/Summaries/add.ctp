<?php
	if(!empty($photos)){
		foreach($photos as $photo){
			if(!empty($photo['TopicPhoto']['url']))
				echo $this->Html->link(
				    $this->Html->image($photo['TopicPhoto']['url']),
				    $photo['TopicPhoto']['url'],
				    array(
				    	'escape' => false,
				    	'class' => 'fancybox',
				    	'rel' => 'group'
				    )
				  );
			if(!empty($photo['TopicPhoto']['filename'])) 
				echo $this->Html->link(
					    $this->Html->image($photo['TopicPhoto']['filepath'].$photo['TopicPhoto']['filename']),
					    $photo['TopicPhoto']['filepath'].$photo['TopicPhoto']['filename'],
					    array(
					    	'escape' => false,
					    	'class' => 'fancybox',
					    	'rel' => 'group'
					    )
					  );
		}
	}
?>