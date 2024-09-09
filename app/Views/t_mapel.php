<main role="main" class="main-content">
    <div class="pagetitle">
        <h1>Tambah Mata Pelajaran</h1>
    </div><!-- End Page Title -->

    <div class="row">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card shadow mb-4">
                <div class="card-header">
                    <h4>Tambah Mata Pelajaran</h4>
                </div>
                <div class="card-body">
                    <form action="<?= base_url('home/aksi_t_mapel') ?>" method="POST">
                        <!-- <div class="form-group row">
                            <label for="inputText" class="col-sm-2 col-form-label">Mapel</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name='mapel' id="inputText">
                            </div>
                        </div> -->

                        <div class="form-group">
                            <label for="mapel">Mapel</label>
                            <input class="form-control" id="mapel" type="text" name="mapel">
                        </div>

                        <div class="form-group">
                            <label for="guru">Guru</label>
                            <select class="form-control" name="guru" id="guru">
                                <option value="">Pilih</option>
                                <?php foreach ($u as $key): ?>
                                    <option value="<?= $key->id_user ?>"><?= $key->username ?></option>
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
