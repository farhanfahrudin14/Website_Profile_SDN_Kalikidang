<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kontak extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // load model kontak
        $this->load->model('Kontak_model', 'kontak');
    }

    public function index()
    {
        $data['title']  = 'Kontak Kami';
        $data['page']   = 'kontak/index';  
        $data['kontak'] = $this->kontak->get_kontak(); // ambil data dari tabel kontak

        $this->load->view('front/layouts/main', $data);
    }
}
