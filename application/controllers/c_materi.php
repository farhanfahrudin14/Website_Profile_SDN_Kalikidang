<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_materi extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Materi_model', 'materi');
        $this->load->model('menu_model', 'menu');
    }

    // ✅ Tampilkan daftar materi + filter kelas
    public function index()
    {
        $kelas = $this->input->get('kelas'); // ambil filter kelas dari GET

        if (!empty($kelas)) {
            $data['materi'] = $this->materi->get_by_kelas($kelas);
        } else {
            $data['materi'] = $this->materi->get_all();
        }

        $data['title']   = 'Materi Pelajaran';
        $data['page']    = 'materi/v_index';

        $this->load->view('back/layouts/main', $data);
    }

    public function create()
    {
        $data['title'] = 'Tambah Materi';
        $data['page']  = 'materi/v_tambah';

        $this->load->view('back/layouts/main', $data);
    }

    public function store()
    {
        $judul      = $this->input->post('judul', true);
        $deskripsi  = $this->input->post('deskripsi', true);
        $kelas      = $this->input->post('kelas', true); // ✅ ambil kelas

        // Konfigurasi upload
        $config['upload_path']   = './uploads/materi/';
        $config['allowed_types'] = 'jpg|jpeg|png|gif|pdf';
        $config['max_size']      = 20480; // max 20MB

        $this->load->library('upload', $config);

        $file = null;
        if ($this->upload->do_upload('file')) {
            $uploadData = $this->upload->data();
            $file = $uploadData['file_name'];
        }

        $data = [
            'judul'     => $judul,
            'deskripsi' => $deskripsi,
            'kelas'     => $kelas,   // ✅ simpan kelas
            'file'      => $file
        ];

        $insert = $this->materi->insert($data);

        if ($insert) {
            $this->session->set_flashdata('success', 'Materi berhasil ditambahkan!');
        } else {
            $this->session->set_flashdata('error', 'Materi gagal ditambahkan!');
        }

        redirect('c_materi');
    }

    public function edit($id)
    {
        $data['title']   = 'Edit Materi';
        $data['page']    = 'materi/v_edit';
        $data['materi']  = $this->materi->get_by_id($id);

        $this->load->view('back/layouts/main', $data);
    }

    public function update($id)
    {
        $judul      = $this->input->post('judul', true);
        $deskripsi  = $this->input->post('deskripsi', true);
        $kelas      = $this->input->post('kelas', true); // ✅ ambil kelas

        // Konfigurasi upload
        $config['upload_path']   = './uploads/materi/';
        $config['allowed_types'] = 'pdf';
        $config['max_size']      = 20480; // max 20MB

        $this->load->library('upload', $config);

        $materi = $this->materi->get_by_id($id);

        $file = $materi->file; // default file lama
        if ($this->upload->do_upload('file')) {
            $uploadData = $this->upload->data();
            $file = $uploadData['file_name'];

            // hapus file lama kalau ada
            if (!empty($materi->file) && file_exists('./uploads/materi/'.$materi->file)) {
                unlink('./uploads/materi/'.$materi->file);
            }
        }

        $data = [
            'judul'     => $judul,
            'deskripsi' => $deskripsi,
            'kelas'     => $kelas,   // ✅ update kelas
            'file'      => $file
        ];

        $update = $this->materi->update($id, $data);

        if ($update) {
            $this->session->set_flashdata('success', 'Materi berhasil diupdate!');
        } else {
            $this->session->set_flashdata('error', 'Materi gagal diupdate!');
        }

        redirect('c_materi');
    }

    public function delete($id)
    {
        $data['title']   = 'Hapus Materi';
        $data['page']    = 'materi/v_hapus';
        $data['materi']  = $this->materi->get_by_id($id);

        $this->load->view('back/layouts/main', $data);
    }

    public function destroy($id)
    {
        $materi = $this->materi->get_by_id($id);

        // Hapus file dari folder kalau ada
        if (!empty($materi->file) && file_exists('./uploads/materi/'.$materi->file)) {
            unlink('./uploads/materi/'.$materi->file);
        }

        $delete = $this->materi->delete($id);

        if ($delete) {
            $this->session->set_flashdata('success', 'Materi berhasil dihapus!');
        } else {
            $this->session->set_flashdata('error', 'Materi gagal dihapus!');
        }

        redirect('c_materi');
    }
}
