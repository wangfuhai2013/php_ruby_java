<?php
class PostsController extends AppController {
    public $helps = array('Html','Form');
    
    public function index(){
         $this->set('posts',$this->Post->find('all'));
    }
}
?>
