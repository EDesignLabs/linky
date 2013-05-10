<!-- app/View/Badges/add.ctp -->
<div class="badges form">
<?php echo $this->Form->create('Badge'); ?>
    <fieldset>
        <legend><?php echo __('Add Badge'); ?></legend>
        <?php
        	echo $this->Form->input('title');
        	echo $this->Form->textarea('description');
    	?>
    </fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>