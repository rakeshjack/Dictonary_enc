<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Webservice extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('form', 'url', 'date'));
        $this->load->database();
        $this->load->model('webservice_model');
        date_default_timezone_set('asia/calcutta');
        // print $myarray;
    }

    public function index() {
        $data['status'] = 1;
        $data['message'] = 'Webservice Working';
        $data = array('response' => $data);
        $this->load->view('webservices/json', $data);
    }
}
