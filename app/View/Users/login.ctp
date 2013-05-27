<div class="users form">
	<h1>Linky</h1>
<?php echo $this->Form->create('User', array('controller' => 'users', 'action' => 'login')); ?>
    <fieldset>
        <?php 
        echo $this->Form->input('username', array('label' => false, 'placeholder' => 'email address'));
        echo $this->Form->input('password', array('label' => false, 'placeholder' => 'password'));
        echo $this->Form->submit('log in',array('class' => 'btn btn-themeboard'));
    ?>
    </fieldset>
<?php echo $this->Form->end(); ?>
	<h2>Forgot your password?</h2>
<?php echo $this->Form->create('User', array('controller' => 'users', 'action' => 'reset')); ?>
    <fieldset>
        <?php 
        echo $this->Form->input('username', array('label' => false, 'placeholder' => 'email address'));
        echo $this->Form->submit('send password',array('class' => 'btn btn-themeboard'));
    ?>
    </fieldset>
<?php echo $this->Form->end(); ?>
</div>