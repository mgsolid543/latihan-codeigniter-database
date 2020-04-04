<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class MahasiswaModel extends CI_Model {
        public $table = "mahasiswa";
        public $id = "nim";

        function __construct()
        {
            parent::__construct();
        }

        // input data (insert)
        function insert($data) 
        {
            $this->db->insert($this->table, $data);
        }

        //menampilkan data 
        function tampil_data() 
        {
            return $this->db->get('mahasiswa');
        }

        //menampilkan data mana yang akan diedit/update
        function edit_data($where, $table) {
            return $this->db->get_where($table, $where);
        }

        //proses update datanya
        function update_data($where, $data, $table) {
            $this->db->where($where);
            $this->db->update($table, $data);
        }

        //proses hapus data mahasiswa
        function hapus_data($where, $table) {
            $this->db->where($where);
            $this->db->delete($table, $where);
        }
    }