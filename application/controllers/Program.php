<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Program extends CI_Controller {

	public function index()
	{
		$data['main_view'] = "program";
		$this->load->view('layouts/main',$data);
	}
}