<div class="users form">
	<h1>Linky</h1>
<?php echo $this->Form->create('User'); ?>
    <fieldset>
        <?php 
        echo $this->Form->input('username', array('label' => false, 'placeholder' => 'username'));
        echo $this->Form->input('password', array('label' => false, 'placeholder' => 'password'));
        echo $this->Form->submit('log in',array('class' => 'btn btn-themeboard'));
    ?>
    </fieldset>
<?php echo $this->Form->end(); ?>
</div>