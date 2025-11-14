<!-- Ekskul -->
<div class="ekskul mt-5 mb-5">
     <h2 class="mb-4 text-center">Daftar Ekstrakurikuler</h2>
    <div class="container">
        <div class="row justify-content-center text-center">
            <?php foreach($ekskul as $e) : ?>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 p-2 my-4 d-flex flex-column align-items-center">
                    <h5 class="text-center mb-3"><?= $e->judul ?></h5>
                    <a href="<?= base_url('uploads/ekskul/' . $e->foto) ?>" target="_blank">
                        <img 
                            style="height:250px; width:100%; object-fit:cover;" 
                            src="<?= base_url('uploads/ekskul/' . $e->foto) ?>" 
                            class="img-thumbnail">
                    </a>
                </div>
            <?php endforeach ?>         
        </div>
    </div>
</div>
<!-- End of Ekskul -->
