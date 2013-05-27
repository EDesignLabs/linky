<!-- app/View/Users/add.ctp -->
<div class="users form">
<?php echo $this->Form->create('User',array('controller' => 'users', 'action' => 'add')); ?>
    <fieldset>
        <legend><?php echo __('Create a new account'); ?></legend>
        <?php 
        echo $this->Form->input('name', array('label' => false, 'placeholder'=> 'name'));
        echo $this->Form->input('username', array('label' => false, 'placeholder'=> 'email'));
        echo $this->Form->input('password', array('label' => false, 'placeholder'=> 'password'));
        echo $this->Form->input('repeat_password', array('type' => 'password', 'label' => false, 'placeholder'=> 'repeat password'));
        echo $this->Form->input('role', array(
            'type' => 'hidden',
            'value' => 'student'
        ));
        echo $this->Form->submit('Create Account', array('class' => 'plus btn-themeboard'));
    ?>
    </fieldset>
<?php echo $this->Form->end(); ?>
</div>