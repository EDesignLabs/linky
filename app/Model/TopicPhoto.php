<?php

use WideImage\WideImage;
use Aws\S3\S3Client;
use Aws\S3\Enum\CannedACL;

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

    function generateThumb($handle){
        /*
        $name = TMP.'files'.DS.'images'.DS.uniqid()."png";
        imagepng(imagecreatefromstring(file_get_contents(TMP.'files'.DS.'images'.DS.$target_name)), $name);
        $thumb = WideImage::load($name);
        var_dump('edfddfxpression');
        $newImage = $thumb->resize(200, 150, 'outside')->crop('center', 'middle', 150, 150);
        var_dump('edfdgon');
        $newImage->saveToFile(TMP.'files'.DS.'thumbnails'.DS.$target_name);
        */ 
        $image = new Imagick();
        $image->readImageFile($handle);
        $image->cropThumbnailImage(150,150);
        $image->writeImageFile (TMP.'files'.DS.'thumbnails'.DS.$target_name );
        return true;
    }

    function uploadPhoto($data) {
        $data = array_shift($data);
        $info = pathinfo($data['file']['name']);
        $newFileName = uniqid();
        $target_name = $newFileName.'.'.$info['extension'];

        $move = @move_uploaded_file($data['file']['tmp_name'], TMP.'files'.DS.'images'.DS.$target_name);
        var_dump(TMP.'files'.DS.'images'.DS.$target_name);

        if($move){
            var_dump('asdaaaaaaaasdasd');
            $this->generateThumb(fopen(TMP.'files'.DS.'images'.DS.$target_name));
        }else{
            var_dump('asdaaaasssssssssssaaaasdasd');
            return false;
        }

        var_dump('looopo');

        $file_array = array();
        $file_array['filename'] = $target_name;
        $file_array['filetype'] = $data['file']['type'];
        $file_array['filesize'] = $data['file']['size'];
        $file_array['filepath'] = Configure::read('bucket').'/';

        $client = S3Client::factory(Configure::read('S3'));

        $response1 = $client->putObject(array(
            'Bucket' => Configure::read('bucket'),
            'Key' => 'images/'.$target_name,
            'SourceFile' => TMP.'files'.DS.'images'.DS.$target_name,
            'ACL' => 'public-read'
            ));
        $response2 = $client->putObject(array(
            'Bucket' => Configure::read('bucket'),
            'Key' => 'thumbnails/'.$target_name,
            'SourceFile' => TMP.'files'.DS.'thumbnails'.DS.$target_name,
            'ACL' => 'public-read'
            ));

        if($response1 && $response2)
        {
            unlink(TMP.'files'.DS.'images'.DS.$target_name);
            unlink(TMP.'files'.DS.'thumbnails'.DS.$target_name);
            return($file_array);
        }
        else
        {
            return false;
        }

    }

    function uploadUrlPhoto($data) {
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
        $newFileName = uniqid();
        $target_name = $newFileName.'.'.$info['extension'];
        $fp = fopen(TMP.'files'.DS.'images'.DS.$target_name,'x');
        fwrite($fp, $rawdata);
        fclose($fp);
        $this->generateThumb($target_name);
        $file_array['filetype'] = $mime;
        $file_array['filesize'] = $size;
        $file_array['filename'] = $target_name;
        $file_array['filepath'] = Configure::read('bucket').'/';

        $client = S3Client::factory(Configure::read('S3'));

        $response1 = $client->putObject(array(
            'Bucket' => Configure::read('bucket'),
            'Key' => 'images/'.$target_name,
            'SourceFile' => TMP.'files'.DS.'images'.DS.$target_name,
            'ACL' => 'public-read'
            ));
        $response2 = $client->putObject(array(
            'Bucket' => Configure::read('bucket'),
            'Key' => 'thumbnails/'.$target_name,
            'SourceFile' => TMP.'files'.DS.'thumbnails'.DS.$target_name,
            'ACL' => 'public-read'
            ));

        if($response1 && $response2)
        {
            unlink(TMP.'files'.DS.'images'.DS.$target_name);
            unlink(TMP.'files'.DS.'thumbnails'.DS.$target_name);
            return($file_array);
        }
        else
        {
            return false;
        }
    }

    function removePhoto($data) {
        $data = array_shift($data);
        $removed_images[]['Key'] = 'images/'.$data['filename'];
        $removed_images[]['Key'] = 'thumbnails/'.$data['filename'];
        $client = S3Client::factory(Configure::read('S3'));
        $response = $client->deleteObjects(array(
            'Bucket' => Configure::read('bucket'),
            'Objects' => $removed_images
        ));

        if($response) return true;
        else return false;
    }

    public function isOwnedBy($photo, $user) {
        return $this->field('id', array('id' => $photo, 'user_id' => $user)) === $photo;
    }
}
?>
