<?php
    class FE_Controller extends MY_Controller{
        public function __construct(){
            parent::__construct();
            $this->base_url = $this->config->item('base_url');
        }
    }