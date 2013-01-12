<h1>Users</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Username</th>
        <th>Role</th>
        <th>Created</th>
    </tr>
    <?php foreach ($users as $user): ?>
    <?php echo $this->Form->create('User', array('controller' => 'users', 'action' => 'edit')); ?>
    <tr>
        <td><?php echo $user['User']['id']; ?></td>
        <td>
            <?php echo $this->Html->link($user['User']['username'],
array('controller' => 'users', 'action' => 'view', $user['User']['id'])); ?>
        </td>
        <td><?php echo $this->Form->input(
            'User.role', 
            array('student','admin','teacher'), 
            array(
                'type' => 'select',
                'selected' => $user['User']['role'])
            ); ?>
        </td>
        <td><?php echo $user['User']['created']; ?></td>
    </tr>
    <?php echo $this->Form->submit('Save user'); ?>
    <?php echo $this->Form->end(); ?>
    <?php endforeach; ?>
</table>