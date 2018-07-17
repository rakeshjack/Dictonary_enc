<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function __construct() {
        parent::__construct();
        $this->load->model(array('Common_model'));
    }

    public function index() {
        $this->load->view('oxford');
    }

    public function password() {
        $pass = $this->input->post('pwd');
        $splitting = str_split($pass);
        $times = count($splitting);
        $parent_id = 14;
        $starting_point = 0;
        $minimum_word = 3;
        for ($i = 0; $i <= $times; $i++) {
            $change_convert = implode('', $splitting);
            $trim = substr($change_convert, $starting_point, $minimum_word + $i);
            if ($times == $i) {
                $minimum_word=2;
                $starting_point++;
                if ($starting_point == $times) {
                    $i = 8;
                } else {
                    $i = 0;
                }
            }
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_PORT => "443",
                CURLOPT_URL => "https://od-api.oxforddictionaries.com:443/api/v1/inflections/en/$change_convert",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_HTTPHEADER => array(
                    "Accept: application/json",
                    "app_id: e1be5f53",
                    "app_key: 9b470ef7586f9ab7902f6eb45834b0ac"
                ),
            ));
            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);
            if ($err) {
                echo "cURL Error #:" . $err;
            } else {
                $obj = json_decode($response);
                if ($obj) {
                    $result = $obj->results;
                    $password = $result[0]->word;
                    if ($password) {
                        $insertpass = array(
                            'parent_id' => $parent_id,
                            'password' => $trim,
                            'status' => 'FAILED',
                            'created_at' => date('Y-m-d H:i:s'),
                            'updated_at' => date('Y-m-d H:i:s')
                        );
                        $insert_id = $this->Common_model->insert($insertpass);
                        if ($insert_id != null && $i == 0) {
                            $parent_id = 14;
                        }
                    }
                } else {
            
            
                    $insertpass = array(
                        'parent_id' => $parent_id,
                        'password' => $trim,
                        'status' => 'SUCCESS',
                        'created_at' => date('Y-m-d H:i:s'),
                        'updated_at' => date('Y-m-d H:i:s')
                    );
                    $insert_id = $this->Common_model->insert($insertpass);
                    if ($insert_id != null && $i == 0) {
                        $parent_id = 14;                        
                    }
                    
                    
                }
            }
//            array_pop($splitting);
        }
        redirect("welcome/dashboard/13");
    }

    function dashboard() {
        $id = $this->uri->segment(3);
        if ($id) {
            $data['parent'] = $this->Common_model->get($id);
            $data['result'] = $this->Common_model->getby_parentId($id);
            $data['result'] = array_merge($data['parent'], $data['result']);
            $this->load->view('dashboard', $data);
        } else {
            redirect('welcome');
        }
    }

    function wordbyword() {
        $password = $this->input->post('pwd');
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_PORT => "443",
            CURLOPT_URL => "https://od-api.oxforddictionaries.com:443/api/v1/inflections/en/$password",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "app_id: e1be5f53",
                "app_key: 9b470ef7586f9ab7902f6eb45834b0ac"
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);
        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            if ($response != null) {
                $result = json_decode($response);
                if ($result) {
                    print_r($result);
                } else {
                    echo 0;
                }
            }
        }
    }
    
    public function stringing() {
        echo substr('abcd1234av',7,7);
    }

}
