<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
    	if($this->session->userdata('logged_in') == true){
        	redirect('admin/index');
        }
    	$this->form_validation->set_rules('username', 'User Name', 'trim|required');
    	$this->form_validation->set_rules('password', 'Password', 'trim|required');
    	if ($this->form_validation->run() == FALSE) {
    		$this->load->view('login');
    	} else {
    		$username = $this->input->post('username');
    		$password = md5($this->input->post('password'));
    		if($this->adminModel->login($username,$password) == 1){
    			//success
                echo "string";
    			$user_id = $this->adminModel->getuserid($username)->id;
    			$userdata = array(
				        'username'  => $username,
				        'user_id'     => $user_id,
				        'logged_in' => TRUE
				);
				$this->session->set_userdata($userdata);
    			redirect('admin/');
    		}else{
    			//error
    			$this->session->set_flashdata('error', 'Error in Username or Password');
    			$this->load->view('login');
    		}

    	}
	}

	public function load_view($view,$data)
	{
		$this->load->view('site/header');
		$this->load->view($view,$data);
		$this->load->view('site/footer');
	}
	
}