<div class="users form">
<?php echo $this->Form->create('User',array('controller' => 'users', 'action' => 'settings')); ?>
    <fieldset>
        <legend><?php echo __('Change your account settings'); ?></legend>
        <?php 
        echo $this->Form->hidden('id', array('value'=> $user['User']['id']));
        echo $this->Form->input('name', array('label' => 'Your Name', 'value'=> $user['User']['name']));
        echo $this->Form->password('password', array('label' => 'Password', 'placeholder'=> 'password'));
        echo $this->Form->submit('Update Account', array('class' => 'plus btn-themeboard'));
    ?>
    </fieldset>
<?php echo $this->Form->end(); ?>
</div>