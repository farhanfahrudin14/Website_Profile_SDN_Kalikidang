<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Galeri_model', 'galeri');
    }

    public function index()
    {
        $data['title']  = 'Galeri Kegiatan Sekolah';
        $data['page']   = 'galeri/v_index'; // ✅ path disesuaikan
        $data['galeri'] = $this->galeri->get_all();

        $this->load->view('front/layouts/main', $data);
    }
}
