<main role="main" class="main-content">
    <div class="pagetitle">
        <h1>Pilih Kelas</h1>
    </div><!-- End Page Title -->

    <div class="row">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card shadow mb-4">
                <div class="card-header">
                    <h4>Pilih Kelas</h4>
                </div>
                <div class="card-body">
                    <form action="<?= base_url('home/absensi') ?>" method="POST">
                    <div class="form-group">
                        <label for="kelas">Kelas</label>
                        <select class="form-control" name="kelas" id="kelas">
                            <option value="">Pilih</option>
                            <?php foreach ($erwin as $key): ?>
                                <option value="<?= $key->id_kelas ?>"><?= $key->kelas ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="blok">Blok</label>
                        <select class="form-control" name="blok" id="blok">
                            <option value="">Pilih</option>
                            <?php foreach ($yoga as $key): ?>
                                <option value="<?= $key->id_blok ?>"><?= $key->id_blok ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="mapel">Mapel</label>
                        <select class="form-control" name="mapel" id="mapel">
                            <option value="">Pilih</option>
                            <?php foreach ($leo as $key): ?>
                                <option value="<?= $key->id_mapel ?>"><?= $key->mapel ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div> <!-- /. card-body -->
            </div> <!-- /. card -->
        </div> <!-- /. col -->
    </div> <!-- /. row -->

    <!-- Session timeout script -->
    <script>
        var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)

        setTimeout(function() {
            alert('Sesi telah berakhir karena tidak ada aktivitas.');
            window.location.href = '<?= site_url('home/login') ?>';
        }, timeoutDuration);
    </script>
</main>
