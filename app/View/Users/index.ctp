<h1>Users</h1>
<table class="table table-bordered">
    <thead>
        <th>Id</th>
        <th>Username</th>
        <th>Role</th>
        <th>Created</th>
    </thead>
    <tbody>
    <?php foreach ($users as $user): ?>
        <tr>
            <td><?php echo $user['User']['id']; ?></td>
            <td>
                <?php echo $this->Html->link($user['User']['username'],
    array('controller' => 'users', 'action' => 'view', $user['User']['id'])); ?>
            </td>
            <td>
                <?php echo $this->Form->create('User', array('url' => '/users/edit/'.$user['User']['id'] )); 
                echo $this->Form->hidden('User.id', array('value' => $user['User']['id']));
                echo $this->Form->input(
                    'User.role',  
                    array(
                        'type' => 'select',
                        'options' => array('student' => 'student','admin' => 'admin','teacher' => 'teacher'),
                        'selected' => $user['User']['role'])
                    ); 
                echo $this->Form->input(
                    'User.name',  
                    array(
                        'value' => $user['User']['name'])
                    );
                echo $this->Form->password('User.password', array('placeholder' => 'password'));
                echo $this->Form->submit('Save user');
                echo $this->Form->end(); 
                ?>
            </td>
            <td><?php echo date('F j,Y g:i a',strtotime($user['User']['created'])); ?></td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>