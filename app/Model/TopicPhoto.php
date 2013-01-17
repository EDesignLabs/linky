<?php

class TopicPhoto extends AppModel {
	var $name = 'TopicPhoto';
	var $validate = array(
        'url' => array(
            'url' => array(
                'rule' => array('url'),
                'allowEmpty' => true,
                'message' => 'Image url is invalid'
                ),
            'checkimageadd' => array(
                'rule' => array('checkImageAdd'),
                'message' => 'Image is required either via URL or through browse'
                ),
            ),
        'description' => array(
            'rule'    => 'notEmpty',
            'required' => true,
            'message' => 'Please write some more'
            ),
        'file' => array(
            'checkimageadd' => array(
                'rule' => array('checkImageAdd'),
                'message' => 'Image is required either via URL or through browse'
                ),
            'checksize' => array(
                'rule' => array('checkSize',false),
                'message' => 'Your file is too big!'
            ),
            'checktype' =>array(
                'rule' => array('checkType',false,array('image/gif','image/jpeg','image/pjpeg','image/png')),
                'message' => 'This file is not an image'
            ),
            'checkName' =>array(
                'rule' => array('checkName',false),
                'message' => 'File name is too long'
            ),
            'checkuploadedit' =>array(
                'rule' => array('checkUpload', false),
                'message' => 'Invalid file'
            )
        )
    );

    var $belongsTo = array(
        'Topic' =>
            array('className'    => 'Topic',
                  'foreignKey'   => 'topic_id'
            ),
        'User' => 
            array(
            'className'    => 'User',
            'foreignKey'   => 'user_id'
            )
        );

    var $hasMany = array(
        'Comment' => array(
            'className' => 'Comment',
            'foreignKey' => 'topic_photo_id'
            )
        );

    var $hasAndBelongsToMany = array(
        'Badge' => array(
            'className' => 'Badge',
            'unique' => false,
            'joinTable'              => 'topic_photo_badges',
            'foreignKey'             => 'topic_photo_id',
            'associationForeignKey'  => 'badge_id'
            )
        );

    function checkImageAdd($data){
        if(isset($data['TopicPhoto']['filename']) && !empty($data['TopicPhoto']['filename'])){
            return true;
        }
        if(isset($data['TopicPhoto']['url']) && !empty($data['TopicPhoto']['url'])){
            return true;
        }
        if(isset($data['TopicPhoto']['file']) && $data['TopicPhoto']['file']['error'] == 0){
            return true;
        }
        return true;
    }

    function checkUpload($data, $required = false){
        $data = array_shift($data);
        if(!$required && $data['error'] == 4){
            return true;
        }
        if($required && $data['error'] !== 0){
            return false;
        }
        if($data['size'] == 0){
            return false;
        }
        return true;
    }

    function checkType($data, $required = false,$allowedMime = null){
        $data = array_shift($data);
        if(!$required && $data['error'] == 4){
            return true;
        }
        if(empty($allowedMime)){
            $allowedMime = array('image/gif','image/jpeg','image/pjpeg','image/png');
        }
        if(!in_array($data['type'], $allowedMime)){
            return false;
        }
        return true;
    }

    function checkSize($data, $required = false){
        $data = array_shift($data);
        if(!$required && $data['error'] == 4){
            return true;
        }
        if($data['size'] == 0 || $data['size']/1024 > 5242880){
            return false;
        }
        return true;
    }

    function checkName($data, $required = false){
        $data = array_shift($data);
        if(!$required && $data['error'] == 4){
            return true;
        }
        if(strlen($data['name']) > 255){
            return false;
        }
        return true;
    }

    function generateThumb($target_name){
        $thumb = WideImage::load(WWW_ROOT.DS.'files'.DS.'images'.DS.$target_name);
        $newImage = $thumb->resize(200, 150, 'outside')->crop('center', 'middle', 150, 150);
        $newImage->saveToFile(WWW_ROOT.DS.'files'.DS.'thumbnails'.DS.$target_name);
        return true;
    }

    function uploadPhoto($data) {
        $data = array_shift($data);
        if(!IS_DIR(WWW_ROOT.DS.'files'.DS.'images')){
            MKDIR(WWW_ROOT.DS.'files'.DS.'images');
        }
        if(!IS_DIR(WWW_ROOT.DS.'files'.DS.'thumbnails')){
            MKDIR(WWW_ROOT.DS.'files'.DS.'thumbnails');
        }
        $info = pathinfo($data['file']['name']);
        $remove_these = array(' ','`','"','\'','\\','/','%','#');
        $newFileName = str_replace($remove_these, '', $info['filename']);
        $target_name = date('U').'_'.$newFileName.'.'.$info['extension'];
        $move = @move_uploaded_file($data['file']['tmp_name'], WWW_ROOT.DS.'files'.DS.'images'.DS.$target_name);
        if($move){
            $this->generateThumb($target_name);
        }else{
            return false;
        }
        $file_array = array();
        $file_array['filename'] = $target_name;
        $file_array['filetype'] = $data['file']['type'];
        $file_array['filesize'] = $data['file']['size'];
        $file_array['filepath'] = '/files/images/';
        return($file_array);
    }

    function uploadUrlPhoto($data) {
        if(!IS_DIR(WWW_ROOT.DS.'files'.DS.'images')){
            MKDIR(WWW_ROOT.DS.'files'.DS.'images');
        }
        if(!IS_DIR(WWW_ROOT.DS.'files'.DS.'thumbnails')){
            MKDIR(WWW_ROOT.DS.'files'.DS.'thumbnails');
        }
        $file_array = array();
        $allowedMime = array('image/gif','image/jpeg','image/pjpeg','image/png');
        $ch = curl_init ($data['TopicPhoto']['url']);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
        $rawdata=curl_exec($ch);
        $mime = curl_getinfo($ch, CURLINFO_CONTENT_TYPE);
        $size = curl_getinfo($ch, CURLINFO_CONTENT_LENGTH_DOWNLOAD);
        curl_close ($ch);
        if($rawdata == false || ($size/1024) > 5242880 || !(in_array($mime,$allowedMime))){
            return false;
        }
        $info = pathinfo($data['TopicPhoto']['url']);
        $newFileName = substr( str_shuffle( 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' ) , 0 , 10 ); ;
        $target_name = date('U').'_'.$newFileName.'.'.$info['extension'];
        $fp = fopen(WWW_ROOT.DS.'files'.DS.'images'.DS.$target_name,'x');
        fwrite($fp, $rawdata);
        fclose($fp);
        $this->generateThumb($target_name);
        $file_array['filetype'] = $mime;
        $file_array['filesize'] = $size;
        $file_array['filename'] = $target_name;
        $file_array['filepath'] = '/files/images/';
        return $file_array;
    }

    function removePhoto($data) {
        $data = array_shift($data);
        if(file_exists(WWW_ROOT.$data['filepath'].$data['filename'])){
            unlink(WWW_ROOT.$data['filepath'].$data['filename']);
        }
        if(file_exists(WWW_ROOT.'/files/thumbnails/'.$data['filename'])){
            unlink(WWW_ROOT.'/files/thumbnails/'.$data['filename']);
        }
    }

    public function isOwnedBy($photo, $user) {
        return $this->field('id', array('id' => $photo, 'user_id' => $user)) === $photo;
    }
} 
?>