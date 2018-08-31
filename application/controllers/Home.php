<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{	
		$data['latestnews'] = $this->adminModel->getnewsbylimit(4);
		$data['main_view'] = "home";
		$this->load->view('layouts/main',$data);
	}
}