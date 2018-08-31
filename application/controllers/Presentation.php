<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Presentation extends CI_Controller {

	public function index()
	{
		$data['main_view'] = "presentation";
		$this->load->view('layouts/main',$data);
	}
}