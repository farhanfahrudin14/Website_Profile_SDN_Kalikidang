<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		is_login();
		$this->load->model('admin_model', 'admin');
		$this->load->model('menu_model', 'menu');
		$this->load->model('banner_model', 'banner');
		$this->load->model('fasilitas_model', 'fasilitas');
		$this->load->model('berita_model', 'berita');

		// 🔥 Tambahan model baru
		$this->load->model('Materi_model', 'materi');
		$this->load->model('Ekskul_model', 'ekskul');
		$this->load->model('Prestasi_model', 'prestasi');
	}

	// ================= DASHBOARD ==================
	public function index()
	{
		$data['title'] 			 = 'Admin Dashboard';
		$data['page']				 = 'dashboard/index';
		$data['total_banner'] 	 = $this->banner->totalBanner();
		$data['total_fasilitas'] = $this->fasilitas->totalFasilitas();
		$data['total_berita'] 	 = $this->berita->countBerita();
		$data['pageChart'] 		 = '_chart';

		$this->load->view('back/layouts/main', $data);
	}

	// ================= MATERI ==================
	public function materi()
	{
		$data['title']  = 'Materi Pelajaran';
		$data['page']   = 'back/pages/materi/v_index';
		$data['materi'] = $this->materi->get_all();

		$this->load->view('back/layouts/main', $data);
	}

	// ================= EKSKUL ==================
	public function ekskul()
	{
		$data['title']   = 'Ekstrakurikuler';
		$data['page']    = 'back/pages/ekskul/v_index';
		$data['ekskul']  = $this->ekskul->get_all();

		$this->load->view('back/layouts/main', $data);
	}

	// ================= PRESTASI ==================
	public function prestasi()
	{
		$data['title']    = 'Prestasi Siswa';
		$data['page']     = 'back/pages/prestasi/v_index';
		$data['prestasi'] = $this->prestasi->get_all();

		$this->load->view('back/layouts/main', $data);
	}
}
