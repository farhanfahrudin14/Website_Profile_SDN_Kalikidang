<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="<?= base_url() ?>">
      <img style="max-width:250px;" src="<?= base_url('img/identitas/kalikidang.png') ?>">
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">

        <li class="nav-item <?php if($title == 'Beranda') echo 'active'; ?>">
          <a class="nav-link" href="<?= base_url() ?>">Beranda</a>
        </li>

        <li
          class="nav-item dropdown <?php if(in_array($title, ['Sejarah', 'Visi & Misi', 'Struktur', 'Fasilitas', 'Data Guru'])) echo 'active'; ?>">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Profil
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="<?= base_url('profil/sejarah') ?>">Sejarah</a>
            <a class="dropdown-item" href="<?= base_url('profil/visimisi') ?>">Visi & Misi</a>
            <a class="dropdown-item" href="<?= base_url('profil/struktur') ?>">Struktur Organisasi</a>
            <a class="dropdown-item" href="<?= base_url('profil/fasilitas') ?>">Fasilitas</a>
            <a class="dropdown-item" href="<?= base_url('profil/guru') ?>">Guru</a>
          </div>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Akademik
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="<?= site_url('akademik/materi') ?>">Materi Pelajaran</a>
            <a class="dropdown-item" href="<?= site_url('akademik/ekskul') ?>">Ekstrakurikuler</a>
            <a class="dropdown-item" href="<?= site_url('akademik/prestasi') ?>">Prestasi</a>
          </div>
        </li>

        <li class="nav-item <?php if($title == 'Berita') echo 'active'; ?>">
          <a class="nav-link" href="<?= base_url('blog') ?>">Berita</a>
        </li>

        <!-- ✅ Tambahkan menu Galeri -->
        <li class="nav-item <?php if($title == 'Galeri Kegiatan Sekolah') echo 'active'; ?>">
          <a class="nav-link" href="<?= base_url('galeri') ?>">Galeri</a>
        </li>

        <li class="nav-item <?php if($title == 'PPDB') echo 'active'; ?>">
          <a class="nav-link" href="<?= base_url('ppdb') ?>">PPDB</a>
        </li>

        <li class="nav-item <?php if($title == 'Kontak') echo 'active'; ?>">
          <a class="nav-link" href="<?= site_url('kontak'); ?>">Kontak</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
