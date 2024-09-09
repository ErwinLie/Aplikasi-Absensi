<main role="main" class="main-content">
    <div class="pagetitle">
        <h1>Tambah Jadwal</h1>
    </div><!-- End Page Title -->

    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header">
                    <strong class="card-title">Tambah Jadwal</strong>
                </div>
                <form action="<?= base_url('home/aksi_t_jadwal') ?>" method="POST">
                    <div class="card-body">
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
                                    <option value="<?= $key->id_blok ?>"><?= $key->nama_blok ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="sesi">Sesi</label>
                            <select class="form-control" name="sesi" id="sesi" onchange="handleSesiChange()">
                                <option value="">Pilih</option>
                                <?php foreach ($leo as $key): ?>
                                    <option value="<?= $key->id_sesi ?>"><?= $key->sesi ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="guru">Nama Guru</label>
                            <select class="form-control" name="guru" id="guru" onchange="getMapelByGuru()">
                                <option value="">Pilih</option>
                                <?php foreach ($darren as $key): ?>
                                    <option value="<?= $key->id_user ?>"><?= $key->username ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="mapel">Mapel</label>
                            <select class="form-control" name="mapel" id="mapel">
                                <option value="">Pilih</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="jam_mulai">Jam Mulai</label>
                            <input class="form-control" type="time" name="jam_mulai">
                        </div>
                        <div class="form-group">
                            <label for="jam_selesai">Jam Selesai</label>
                            <input class="form-control" type="time" name="jam_selesai">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div> <!-- /. card-body -->
                </form>
            </div> <!-- /. card -->
        </div> <!-- /. col -->
    </div> <!-- /. row -->

    <script>
        function handleSesiChange() {
            var sesi = document.getElementById("sesi").value;
            var guruSelect = document.getElementById("guru");
            var mapelSelect = document.getElementById("mapel");

            // Check if the selected session is ISTIRAHAT 1 or ISTIRAHAT 2
            if (sesi == '6' || sesi == '7') {
                // Set Nama Guru and Mapel dropdowns to "-"
                guruSelect.innerHTML = '<option value="-">-</option>';
                mapelSelect.innerHTML = '<option value="-">-</option>';
            } else {
                // Revert to the original function to get mapel by selected guru
                getMapelByGuru();
            }
        }

        function getMapelByGuru() {
            var guruId = document.getElementById("guru").value;
            var mapelSelect = document.getElementById("mapel");
            var sesi = document.getElementById("sesi").value;

            // Avoid fetching mapel if session is ISTIRAHAT
            if (sesi == '6' || sesi == '7') {
                return;
            }

            if (guruId) {
                fetch('<?= base_url('home/get_mapel_by_guru') ?>/' + guruId)
                .then(response => response.json())
                .then(data => {
                    let options = '<option value="">Pilih</option>';
                    data.forEach(mapel => {
                        options += `<option value="${mapel.id_mapel}">${mapel.mapel}</option>`;
                    });
                    mapelSelect.innerHTML = options;
                })
                .catch(error => console.error('Error:', error));
            } else {
                mapelSelect.innerHTML = '<option value="">Pilih</option>';
            }
        }

        var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)
        setTimeout(function() {
            alert('Sesi telah berakhir karena tidak ada aktivitas.');
            window.location.href = '<?= site_url('home/login') ?>';
        }, timeoutDuration);
    </script>
</main>
