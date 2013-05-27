<?php
/**
 * Application model for Cake.
 *
 * This file is application-wide model file. You can put all
 * application-wide model-related methods here.
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
 * @package       app.Model
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

App::uses('Model', 'Model');

/**
 * Application model for Cake.
 *
 * Add your application-wide methods in the class below, your models
 * will inherit them.
 *
 * @package       app.Model
 */
class AppModel extends Model {
	function unbindModelAll() { 
		$unbind = array(); 
		foreach ($this->belongsTo as $model=>$info) 
		{ 
		  $unbind['belongsTo'][] = $model; 
		} 
		foreach ($this->hasOne as $model=>$info) 
		{ 
		  $unbind['hasOne'][] = $model; 
		} 
		foreach ($this->hasMany as $model=>$info) 
		{ 
		  $unbind['hasMany'][] = $model; 
		} 
		foreach ($this->hasAndBelongsToMany as $model=>$info) 
		{ 
		  $unbind['hasAndBelongsToMany'][] = $model; 
		} 
		parent::unbindModel($unbind); 
	}
	function deactivate($id,$model) {
        $to_save = array(
        	$model => array(
        		'id' => $id,
            	'active' => 0
        		)
            );
       return $this->save($to_save);
    }
}
