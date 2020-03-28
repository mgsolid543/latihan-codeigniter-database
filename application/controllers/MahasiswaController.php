<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class MahasiswaController extends CI_Controller {
        function __construct()
        {
            parent::__construct();
            $this->load->model('MahasiswaModel');
            $this->load->helper('url');
        }

        function index() {
            $data['mahasiswa'] = $this->MahasiswaModel->tampil_data()->result();

            $this->load->view('header');		
            $this->load->view('MahasiswaView', $data);	 
		    $this->load->view('footer');
        }

        function form_input() {
            $this->load->view('header');		
            $this->load->view('FormMahasiswaView');	 
		    $this->load->view('footer');
        }

        function insert() {
            $data = array(
                'nim' => $this->input->post('nim'),
                'nama_lengkap' => $this->input->post('nama_lengkap'),
                'nama_panggilan' => $this->input->post('nama_panggilan'),
                'alamat' => $this->input->post('alamat'),
                'email' => $this->input->post('email'),
                'telp' => $this->input->post('telp')
            );

            $this->MahasiswaModel->insert($data);
            redirect(base_url() . "MahasiswaController", 'refresh');
        }
    }