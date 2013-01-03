<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       Cake.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

$cakeDescription = __d('cake_dev', 'CakePHP: the rapid development php framework');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->css('/css/bootstrap.css');
		echo $this->Html->css('/css/main.css');
		echo $this->Html->css('http://fonts.googleapis.com/css?family=Amatic+SC:400,700');
		echo $this->Html->script('https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js');
		echo $this->Html->script('/js/main.js');
		echo $this->Html->script('/js/bootstrap.js');
	?>
</head>
<body>
	<div class="container">
		<div id="header">
			<div class="logo left"><?php echo $this->Html->link('Linky','/'); ?></div>
			<ul class="nav nav-pills right">
				<?php if(AuthComponent::user('id')): ?>
				<li><?php echo $this->Html->link('Home','/'); ?></li>
				<li><?php echo $this->Html->link('All Boards','/boards/'); ?></li>
				<li><?php echo $this->Html->link('Create a new board!', '/boards/create'); ?></li>
				<li><?php echo $this->Html->link('Logout', '/users/logout'); ?></li>
				<?php else: ?>
				<li><?php echo $this->Html->link('Log in', '/users/login'); ?></li>
				<?php endif; ?>
				
			</ul>
			<span class="clear"></span>
			<?php if(AuthComponent::user('id')): ?>
			<h2><?php echo 'Hello '.AuthComponent::user('username').'!'; ?></h2>
			<?php endif; ?>
		</div>
		<div id="content">
			<?php echo $this->Session->flash(); ?>
			<?php echo $this->fetch('content'); ?>
		</div>
		<div id="footer">
		</div>
	</div>
	<?php //echo $this->element('sql_dump'); ?>
</body>
</html>
