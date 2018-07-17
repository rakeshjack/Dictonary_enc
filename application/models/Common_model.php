<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Common_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }
    
    function insert($riderdata) {
        $this->db->insert('oxfords', $riderdata);
        $id=$this->db->insert_id();
        return ($this->db->affected_rows() != 1) ? false : $id;
    }
    
    function getby_parentId($id) {
        $this->db->select('*');
        $this->db->from('oxfords');
        $this->db->where("parent_id",$id);
        $query = $this->db->get();
        $result=$query->result();
        if($result) {
            return $result;
        } else {
            return 0;
        }
    }
    function get($id) {
        $this->db->select('*');
        $this->db->from('oxfords');
        $this->db->where("id",$id);
        $query = $this->db->get();
        $result=$query->result();
//        if ($query->num_rows() == 1) {
//                $row = $query->row_array();
//                return $row;
//            } 
        if($result) {
            return $result;
        } else {
                return 0;
            }
    }
}