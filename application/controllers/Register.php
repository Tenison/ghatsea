<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index()
	{
		$data['main_view'] = "register";
		$this->load->view('layouts/main',$data);
	}
}