<div class="main-content">
    <section class="section">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4>Absensi</h4>
                    <div class="card-header-action">
                        <form class="form-inline">
                            <input id="searchInput" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        </form>
                    </div>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-striped mb-0">
                            <thead>
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Nis</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Jenis Kelamin</th>
                                    <th scope="col">Kelas</th>
                                    <th scope="col">Aksi</th>
                                </tr>
                            </thead>
                            <tbody id="tableBody"> 
                                <?php 
                                    $no = 1;
                                    foreach($erwin as $wkwk){
                                ?>                          
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $wkwk->nis ?></td>
                                        <td><?= $wkwk->username ?></td>
                                        <td>
                                            <?php
                                                if ($wkwk->jk == "L") {
                                                    echo "Laki-laki";
                                                } else if ($wkwk->jk == "P") {
                                                    echo "Perempuan";
                                                }
                                            ?>
                                        </td>
                                        <td><?= $wkwk->kelas ?></td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-toggle="modal" title="Absensi" data-target="#absensiModal">
                                                <i class="fas fa-pencil-alt" data-id_siswa="<?= $wkwk->id_siswa ?>"></i>
                                            </button>

                                            <!-- <a href="<?= base_url('home/hapus_absensi/'.$wkwk->id_user) ?>" 
                                                class="btn btn-danger btn-action" 
                                                data-toggle="tooltip" 
                                                title="Delete" 
                                                data-confirm="Are You Sure?|This action cannot be undone. Do you want to continue?" 
                                                data-confirm-yes="alert('Deleted')">
                                                <i class="fas fa-trash"></i>
                                            </a> -->
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Modal -->
    <div class="modal fade" id="absensiModal" tabindex="-1" role="dialog" aria-labelledby="absensiModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="absensiModalLabel">Absensi Siswa</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form id="absensiForm" action="<?= base_url('home/aksi_t_absensi') ?>" method="post">
            <div class="modal-body">
              <input type="hidden" name="id_siswa" id="id_siswa">
              <!-- Kehadiran Dropdown -->
              <div class="form-group">
                <label for="kehadiran">Kehadiran</label>
                <select class="form-control" id="kehadiran" name="kehadiran" required>
                  <option value="Hadir">Hadir</option>
                  <option value="Sakit">Sakit</option>
                  <option value="Izin">Izin</option>
                  <option value="Alpha">Alpha</option>
                </select>
              </div>
              
              <!-- Keterangan/Alasan -->
              <div class="form-group">
                <label for="keterangan">Keterangan</label>
                <textarea class="form-control" id="keterangan" name="keterangan" rows="3" placeholder="Masukkan alasan jika sakit/izin"></textarea>
              </div>

              <!-- Pokok Bahasan -->
              <div class="form-group">
                <label for="pokok_bahasan">Pokok Bahasan</label>
                <textarea class="form-control" id="pokok_bahasan" name="pokok_bahasan" rows="3" placeholder="Masukkan pokok bahasan" required></textarea>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-primary">Simpan Absensi</button>
              <input type="hidden" value="<?= $cihuy->id_sesi ?>" name="sesi">
            </div>
          </form>
        </div>
      </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.6.1/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {
    // Filter table function
    $('#searchInput').on('keyup', function() {
        var filter = $(this).val().toUpperCase();
        $('#tableBody tr').filter(function() {
            $(this).toggle($(this).text().toUpperCase().indexOf(filter) > -1);
        });
    });

    // Sesi timeout setelah 5 menit tanpa aktivitas
    var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)
    setTimeout(function() {
        alert('Sesi telah berakhir karena tidak ada aktivitas.');
        window.location.href = '<?= site_url('home/login') ?>';
    }, timeoutDuration);

    // Reset form ketika modal ditutup
    $('#absensiModal').on('hidden.bs.modal', function () {
        $(this).find('form').trigger('reset');
    });

    // When the button is clicked
    $('button[data-toggle="modal"]').on('click', function() {
        // Get the data-id_siswa attribute value
        var idSiswa = $(this).find('i').data('id_siswa');
        
        // Set the value to the hidden input field in the modal
        $('#id_siswa').val(idSiswa);
    });

    // Handle form submission via AJAX
    $('#absensiForm').on('submit', function(e) {
        e.preventDefault(); // Prevent the form from submitting normally

        $.ajax({
            url: $(this).attr('action'),
            type: 'POST',
            data: $(this).serialize(),
            success: function(response) {
                // Handle success (e.g., show a success message or update the UI)

                // Optionally reload the page or update parts of it
            },
            error: function() {
                // Handle error
                alert('Terjadi kesalahan');
            }
        });
    });
});
</script>
