<div class="container my-5">
  <h2 class="text-center mb-5 fw-bold text-dark"><?= $title; ?></h2>

  <?php if (!empty($galeri)) : ?>
    <div class="row justify-content-center">
      <?php foreach ($galeri as $index => $g) : ?>
        <div class="col-md-4 mb-4 d-flex">
          <div class="card border-0 shadow-sm rounded-4 overflow-hidden gallery-card flex-fill position-relative">

            <!-- Gambar -->
            <div class="position-relative">
              <img src="<?= base_url('uploads/galeri/' . $g->foto); ?>" 
                   alt="<?= htmlspecialchars($g->deskripsi); ?>"
                   class="img-fluid w-100 gallery-img"
                   data-img="<?= base_url('uploads/galeri/' . $g->foto); ?>"
                   style="height: 260px; object-fit: cover; border-bottom: 1px solid #eee; cursor: pointer;">

              <!-- Tanggal -->
              <div class="position-absolute text-white small px-3 py-1 rounded-end"
                   style="top: 10px; left: 0; background-color: rgba(128,128,128,0.85); font-size: 0.85rem;">
                <?= date('d M Y', strtotime($g->tanggal_upload)); ?>
              </div>
            </div>

            <!-- Deskripsi singkat -->
            <div class="card-body text-center pt-4 pb-3 px-3">
              <p class="card-text mb-2 text-secondary galeri-text" style="font-size: 0.95rem; line-height: 1.6;">
                <?= htmlspecialchars($g->deskripsi); ?>
              </p>

              <?php if (strlen($g->deskripsi) > 100): ?>
                <span class="read-more-text text-primary" 
                      data-target="overlay-<?= $index; ?>"
                      style="cursor:pointer; font-weight: 500; font-size: 0.93rem;">
                  Baca selengkapnya
                </span>
              <?php endif; ?>
            </div>

            <!-- Overlay pop-up isi lengkap -->
            <div class="overlay-detail position-absolute top-0 start-0 w-100 h-100 bg-white p-4"
                 id="overlay-<?= $index; ?>"
                 style="opacity: 0; visibility: hidden; transition: all 0.3s ease; z-index: 10;">
              <p class="text-secondary" style="font-size: 0.95rem; line-height: 1.6;">
                <?= htmlspecialchars($g->deskripsi); ?>
              </p>
              <span class="close-overlay text-primary fw-semibold" 
                    style="cursor:pointer;">Tutup</span>
            </div>

          </div>
        </div>
      <?php endforeach; ?>
    </div>
  <?php else : ?>
    <div class="text-center">
      <p>Belum ada foto galeri yang diunggah.</p>
    </div>
  <?php endif; ?>
</div>

<!-- Modal Gambar -->
<div id="imageModal" class="modal fade show" tabindex="-1" style="display:none;">
  <div class="modal-overlay"></div>
  <span class="modal-close">&times;</span>
  <img class="modal-content-img" id="modalImage" alt="Gambar Galeri">
</div>

<style>
  .gallery-card {
    min-height: 440px;
    transition: all 0.3s ease;
    position: relative;
  }

  .gallery-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
  }

  .galeri-text {
    max-height: 70px;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
  }

  .overlay-detail.active {
    opacity: 1 !important;
    visibility: visible !important;
  }

  /* Modal Gambar */
  #imageModal {
    position: fixed;
    z-index: 9999;
    padding-top: 60px;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.9);
    text-align: center;
  }

  #imageModal img {
    max-width: 90%;
    max-height: 80vh;
    margin: auto;
    border-radius: 10px;
    box-shadow: 0 10px 30px rgba(255, 255, 255, 0.3);
  }

  .modal-close {
    position: absolute;
    top: 25px;
    right: 40px;
    color: white;
    font-size: 35px;
    font-weight: bold;
    cursor: pointer;
    z-index: 10000;
  }

  .modal-close:hover {
    color: #ccc;
  }
</style>

<script>
  document.addEventListener("DOMContentLoaded", function() {
    // === BACA SELENGKAPNYA ===
    const readMoreLinks = document.querySelectorAll(".read-more-text");
    const closeButtons = document.querySelectorAll(".close-overlay");

    readMoreLinks.forEach(link => {
      link.addEventListener("click", function() {
        const targetId = this.getAttribute("data-target");
        const overlay = document.getElementById(targetId);
        if (overlay) overlay.classList.add("active");
      });
    });

    closeButtons.forEach(btn => {
      btn.addEventListener("click", function() {
        this.closest(".overlay-detail").classList.remove("active");
      });
    });

    // === MODAL GAMBAR ===
    const modal = document.getElementById("imageModal");
    const modalImg = document.getElementById("modalImage");
    const closeModal = document.querySelector(".modal-close");

    document.querySelectorAll(".gallery-img").forEach(img => {
      img.addEventListener("click", function() {
        modal.style.display = "block";
        modalImg.src = this.getAttribute("data-img");
      });
    });

    // Tutup modal saat klik tombol ×
    closeModal.addEventListener("click", function() {
      modal.style.display = "none";
    });

    // Tutup modal saat klik luar gambar
    modal.addEventListener("click", function(e) {
      if (e.target === modal) {
        modal.style.display = "none";
      }
    });
  });
</script>
