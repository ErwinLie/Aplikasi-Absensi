<main role="main" class="main-content">

    <div class="pagetitle">
      <h1>Tambah User</h1>
    </div><!-- End Page Title -->

    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header">
                    <strong class="card-title">Tambah User</strong>
                </div>
                <form action="<?= base_url('home/aksi_t_user')?>" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="nis">Nis</label>
                            <input class="form-control" id="nis" type="text" name="nis">
                        </div>

                        <div class="form-group">
                            <label for="username">Username</label>
                            <input class="form-control" id="username" type="text" name="username">
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input class="form-control" id="email" type="text" name="email">
                        </div> 

                        <div class="form-group">
                            <label for="level">Level</label>
                            <select class="form-control" id="level" name="level" required>
                                <option value="">Pilih</option>
                                <option value="1">Admin</option>
                                <option value="2">Kepala Sekolah</option>
                                <option value="3">Wali</option>
                                <option value="4">Guru</option>
                                <option value="5">Siswa</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="jk">Jenis Kelamin</label>
                            <select class="form-control" id="jk" name="jk" required>
                                <option value="">Pilih</option>
                                <option value="L">Laki-laki</option>
                                <option value="P">Perempuan</option>
                            </select>
                        </div>

                        <div class="form-group" id="kelasFormGroup" style="display: none;">
                            <label for="kelas">Kelas</label>
                            <select class="form-control" id="kelas" name="kelas">
                                <option value="">Pilih</option>
                                <?php foreach ($k as $key): ?>
                                    <option value="<?= $key->id_kelas ?>"><?= $key->kelas ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div> <!-- /. card-body -->
                </form>
            </div> <!-- /. card -->
        </div> <!-- /. col -->
    </div> <!-- /. row -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // Show or hide the Kelas form group based on the selected Level
            $('#level').change(function() {
                if ($(this).val() == '5') {
                    $('#kelasFormGroup').show();
                } else {
                    $('#kelasFormGroup').hide();
                }
            });
        });

        var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)

        setTimeout(function() {
            alert('Sesi telah berakhir karena tidak ada aktivitas.');
            window.location.href = '<?= site_url('home/login') ?>';
        }, timeoutDuration);
    </script>

</main>
