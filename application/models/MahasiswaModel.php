<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class MahasiswaModel extends CI_Model {
        public $table = "mahasiswa";
        public $id = "nim";

        function __construct()
        {
            parent::__construct();
        }

        function insert($data) 
        {
            $this->db->insert($this->table, $data);
        }

        function tampil_data() 
        {
            return $this->db->get('mahasiswa');
        }
    }