<main role="main" class="main-content">
    <div class="pagetitle">
        <h1>Tambah Kelas</h1>
    </div><!-- End Page Title -->

    <div class="row">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card shadow mb-4">
                <div class="card-header">
                    <h4>Tambah Kelas</h4>
                </div>
                <div class="card-body">
                    <form action="<?= base_url('home/aksi_t_kelas') ?>" method="POST">
                        <div class="form-group row">
                            <label for="inputText" class="col-sm-2 col-form-label">Kelas</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name='kelas' id="inputText">
                            </div>
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
