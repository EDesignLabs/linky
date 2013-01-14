<?php
/**
 * Routes configuration
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different urls to chosen controllers and their actions (functions).
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
 * @package       app.Config
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
	Router::connect(
		'/',
		array('controller' => 'boards', 'action' => 'activity')
		);
	Router::connect(
		'/settings',
		array('controller' => 'users', 'action' => 'settings')
		);
	Router::connect(
		'/comments/create/:photo',
		array('controller' => 'comments', 'action' => 'create'),
		array('photo' => '[0-9]+')
		);
	Router::connect(
		'/badges/revoke/:photo/:badge',
		array('controller' => 'badges', 'action' => 'revoke'),
		array('photo' => '[0-9]+'),
		array('badge' => '[0-9]+')
		);
	Router::connect(
		'/boards/',
		array('controller' => 'boards', 'action' => 'index')
		);
	Router::connect(
		'/boards/:id',
		array('controller' => 'boards', 'action' => 'view'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/boards/:id/topics/add', 
		array('controller' => 'topics', 'action' => 'add'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/boards/:id/categories/add', 
		array('controller' => 'topics', 'action' => 'add'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/summary/:id',
		array('controller' => 'summaries', 'action' => 'index'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/boards/:id/summary/add/*',
		array('controller' => 'summaries', 'action' => 'add'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/summary/complete/:id',
		array('controller' => 'summaries', 'action' => 'complete'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/summary/undoComplete/:id',
		array('controller' => 'summaries', 'action' => 'undoComplete'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/summary/edit/:id',
		array('controller' => 'summaries', 'action' => 'edit'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/summary/changePhotos/:id',
		array('controller' => 'summaries', 'action' => 'changePhotos'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/topics/edit/:id', 
		array('controller' => 'topics', 'action' => 'edit'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/categories/edit/:id', 
		array('controller' => 'topics', 'action' => 'edit'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/boards/:id/categories/:topic/add_photos', 
		array('controller' => 'topic_photos', 'action' => 'add'),
		array(
			'id' => '[0-9]+',
			'topic' => '[0-9]+'
			)
		);
	Router::connect(
		'/boards/:id/topics/:topic/add_photos', 
		array('controller' => 'topic_photos', 'action' => 'add'),
		array(
			'id' => '[0-9]+',
			'topic' => '[0-9]+'
			)
		);
	Router::connect(
		'/boards/:id/topics/:topic/*', 
		array('controller' => 'topics', 'action' => 'index'),
		array(
			'id' => '[0-9]+',
			'topic' => '[0-9]+'
			)
		);
	Router::connect(
		'/boards/:id/categories/add', 
		array('controller' => 'topics', 'action' => 'add'),
		array('id' => '[0-9]+')
		);
	Router::connect(
		'/boards/:id/categories/:topic', 
		array('controller' => 'topics', 'action' => 'index'),
		array(
			'id' => '[0-9]+',
			'topic' => '[0-9]+'
			)
		);
	Router::connect(
		'/topic_photos/add', 
		array('controller' => 'topic_photos', 'action' => 'add')
		);
	Router::connect(
		'/photos/add', 
		array('controller' => 'topic_photos', 'action' => 'add')
		);
	Router::connect(
		'/photos/edit/:id', 
		array('controller' => 'topic_photos', 'action' => 'edit'),
		array(
			'id' => '[0-9]+'
			)
		);
	Router::connect(
		'/topic_photos/edit/:id', 
		array('controller' => 'topic_photos', 'action' => 'edit'),
		array(
			'id' => '[0-9]+'
			)
		);
/**
 * Here, we are connecting '/' (base path) to controller called 'Pages',
 * its action called 'display', and we pass a param to select the view file
 * to use (in this case, /app/View/Pages/home.ctp)...
 */
	Router::connect('/', array('controller' => 'pages', 'action' => 'display', 'home'));
/**
 * ...and connect the rest of 'Pages' controller's urls.
 */
	Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));

/**
 * Load all plugin routes.  See the CakePlugin documentation on
 * how to customize the loading of plugin routes.
 */
	CakePlugin::routes();

/**
 * Load the CakePHP default routes. Only remove this if you do not want to use
 * the built-in default routes.
 */
	require CAKE . 'Config' . DS . 'routes.php';
