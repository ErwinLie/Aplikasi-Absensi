<main role="main" class="main-content">
    <div class="pagetitle">
        <h1>Tampil Jadwal</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header">
                    <strong class="card-title">Tampil Jadwal</strong>
                </div>

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
                    
                    <!-- Tambahkan tombol hapus jadwal -->
                    <?php if (session()->get('id_level') == "1" || session()->get('id_level') == "3") : ?>
                    <div class="row mt-3">
                        <div class="col-md-12">
                            
                            <button class="btn btn-danger" id="hapusJadwal">Hapus Jadwal</button>
                        </div>
                    </div>
                    <?php endif; ?>

                    <!-- Data jadwal akan dimuat di sini menggunakan AJAX -->
                    <div class="col-md-12">
                        <div class="card shadow mb-4">
                            <table class="table align-items-center table-flush" id="table">
                                <thead>
                                    <tr>
                                        <th class="font-14">Sesi</th>
                                        <th class="font-14">Nama Guru</th>
                                        <th class="font-14">Mata Pelajaran</th>
                                        <th class="font-14">Jam Mulai</th>
                                        <th class="font-14">Jam Selesai</th>
                                    </tr>
                                </thead>
                                <tbody id="jadwalBody">
                                    <!-- Data jadwal akan dimuat di sini -->
                                </tbody>
                            </table>
                        </div>
                    </div>

                    
                </div> <!-- /. card-body -->
            </div> <!-- /. card -->
        </div> <!-- /. col -->
    </div> <!-- /. row -->
</main>

<script>
    function fetchJadwal() {
        var kelas = document.getElementById('kelas').value;
    var blok = document.getElementById('blok').value;

    if (kelas && blok) {
        fetch('<?= base_url('home/get_jadwal') ?>', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'kelas=' + encodeURIComponent(kelas) + '&blok=' + encodeURIComponent(blok)
        })
        .then(response => response.json())
        .then(data => {
            var jadwalBody = document.getElementById('jadwalBody');
            jadwalBody.innerHTML = ''; // Clear the table content

            if (data.length > 0) {
                data.forEach(item => {
                    // Cek jika nama_guru atau mapel NULL atau 0, tampilkan tanda "-"
                    var namaGuru = item.nama_guru && item.nama_guru != 0 ? item.nama_guru : '-';
                    var mapel = item.mapel && item.mapel != 0 ? item.mapel : '-';

                    var row = `<tr>
                        <td>${item.sesi}</td>
                        <td>${namaGuru}</td>
                        <td>${mapel}</td>
                        <td>${item.jam_mulai}</td>
                        <td>${item.jam_selesai}</td>
                    </tr>`;
                    jadwalBody.innerHTML += row;
                });
            } else {
                jadwalBody.innerHTML = '<tr><td colspan="5" class="text-center">Tidak ada data tersedia</td></tr>';
            }
        })
        .catch(error => console.error('Error:', error));
    } else {
        var jadwalBody = document.getElementById('jadwalBody');
        jadwalBody.innerHTML = '<tr><td colspan="5" class="text-center">Silakan pilih kelas dan blok.</td></tr>';
    }
}

    // Fungsi untuk menghapus jadwal
    var hapusJadwalBtn = document.getElementById('hapusJadwal');
if (hapusJadwalBtn) {
    hapusJadwalBtn.addEventListener('click', function() {
        var kelas = document.getElementById('kelas').value;
        var blok = document.getElementById('blok').value;

        if (kelas && blok) {
            if (confirm('Apakah Anda yakin ingin menghapus jadwal untuk kelas dan blok yang dipilih?')) {
                fetch('<?= base_url('home/hapus_jadwal') ?>', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: 'kelas=' + encodeURIComponent(kelas) + '&blok=' + encodeURIComponent(blok)
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert('Jadwal berhasil dihapus');
                        fetchJadwal(); // Perbarui tabel jadwal setelah penghapusan
                    } else {
                        alert('Gagal menghapus jadwal');
                    }
                })
                .catch(error => console.error('Error:', error));
            }
        } else {
            alert('Silakan pilih kelas dan blok.');
        }
    });
}

    // Add event listeners to dropdowns
    document.getElementById('kelas').addEventListener('change', fetchJadwal);
    document.getElementById('blok').addEventListener('change', fetchJadwal);

    // Session timeout script
    var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)

    setTimeout(function() {
        alert('Sesi telah berakhir karena tidak ada aktivitas.');
        window.location.href = '<?= site_url('home/login') ?>';
    }, timeoutDuration);
</script>
