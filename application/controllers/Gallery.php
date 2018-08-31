<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends CI_Controller {
	public function __construct(){
        parent::__construct();
        $this->PageLimit = 20;
      }

	public function index()
	{
		$data = array (
   	        'albums'    => $this->Mgallery->GetAlbumList(),
            'title'    => 'Albums'
        );
		$data['main_view'] = "gallery";
		$this->load->view('layouts/main',$data);
	}
}