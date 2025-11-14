<div class="container mt-5 mb-5">
    <h2 class="text-center mb-4">Kontak Kami</h2>

    <?php if (!empty($kontak)): ?>
        <div class="row">
            <!-- Info Kontak -->
            <div class="col-md-6">
                <div class="card shadow-sm mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Alamat</h5>
                        <p><?= $kontak->alamat ?></p>

                        <h5 class="card-title mt-3">Telepon</h5>
                        <p><?= $kontak->telepon ?></p>

                        <h5 class="card-title mt-3">Email</h5>
                        <p><?= $kontak->email ?></p>
                    </div>
                </div>
            </div>

            <!-- Peta Lokasi -->
            <div class="col-md-6">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Lokasi</h5>
                        <?php if (!empty($kontak->maps)): ?>
                            <iframe 
                                src="<?= $kontak->maps ?>" 
                                width="100%" 
                                height="300" 
                                style="border:0;" 
                                allowfullscreen 
                                loading="lazy" 
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                        <?php else: ?>
                            <p>Lokasi belum tersedia.</p>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    <?php else: ?>
        <div class="alert alert-warning">Data kontak belum diisi.</div>
    <?php endif; ?>
</div>
