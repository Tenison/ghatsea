<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {

	public function index()
	{
		$data['main_view'] = "about";
		$this->load->view('layouts/main',$data);
	}
}