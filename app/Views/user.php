<?php
// Misalkan Anda telah mengambil nilai acak dari database dan menyimpannya dalam variabel $selected_package_id
$statusbarang = $k->id_kelas;
?>
<div class="main-content">
    <section class="section">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4>Data User</h4>
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
                                    <th scope="col">Username</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Level</th>
                                    <th scope="col">Jenis Kelamin</th>
                                    <th scope="col">Aksi</th>
                                </tr>
                            </thead>
                            <tbody id="tableBody"> 
                                <?php 
                                    $no=1;
                                    foreach($erwin as $wkwk){
                                ?>                          
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $wkwk->nis?></td>
                                        <td><?= $wkwk->username?></td>
                                        <td><?= $wkwk->email?></td>
                                        <td>
                                            <?php
                                                if ($wkwk->id_level == 1) {
                                                    echo "Admin";
                                                } else if ($wkwk->id_level == 2) {
                                                    echo "Kepala Sekolah";
                                                } else if ($wkwk->id_level == 3) {
                                                    echo "Wakil";
                                                } else if ($wkwk->id_level == 4) {
                                                    echo "Guru";
                                                } else {
                                                    echo "Siswa";
                                                }
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                                if ($wkwk->jk == "L") {
                                                    echo "Laki-laki";
                                                } else if ($wkwk->jk == "P") {
                                                    echo "Perempuan";
                                                }
                                            ?>
                                        </td>
                                        <td>
                                            <button type="button" 
                                                    class="btn btn-primary btn-action btn-action-edit mr-1" 
                                                    data-toggle="tooltip" 
                                                    title="Edit"
                                                    data-id_user="<?= $wkwk->id_user ?>"
                                                    data-nis="<?= $wkwk->nis ?>"
                                                    data-username="<?= $wkwk->username ?>"
                                                    data-email="<?= $wkwk->email ?>"
                                                    data-level="<?= $wkwk->id_level ?>"
                                                    data-jk="<?= $wkwk->jk ?>"
                                                    data-id_kelas="<?= $wkwk->id_kelas ?>"> <!-- Tambahkan ini -->
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                            <!-- <a href="<?= base_url('home/resetpassword/'.$wkwk->id_user) ?>" 
   class="btn btn-warning btn-action" 
   data-toggle="tooltip" 
   title="Reset Password">
   <i class="fas fa-sync-alt"></i>
</a> -->
                                            <a href="<?= base_url('home/hapus_user/'.$wkwk->id_user) ?>" 
                                                class="btn btn-danger btn-action" 
                                                data-toggle="tooltip" 
                                                title="Delete">
                                                <i class="fas fa-trash"></i>
                                            </a>

                                            <?php if(session()->get('id_level')==1 ) { ?>

                                                <a href="<?= base_url('home/resetpassword/'.$wkwk->id_user) ?>" 
                                                class="btn btn-warning btn-action" 
                                                data-toggle="tooltip" 
                                                title="Reset Password">
                                                <i class="fas fa-sync-alt"></i>
                                                </a>

                                                <!-- <a href="<?= base_url('home/restore_edit_user/'.$wkwk->id_user) ?>" 
                                                class="btn btn-warning btn-action" 
                                                data-toggle="tooltip" 
                                                title="Restore Edit User">
                                                <i class="fas fa-sync-alt"></i>
                                                </a> -->


                                                <?php } ?>

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
</div>

<!-- Modal Edit User -->
<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editUserForm" action="<?= base_url('home/aksi_e_user') ?>" method="POST">
                <div class="modal-body">
                    <input type="hidden" name="id_user" id="editIdUser">
                    <div class="form-group">
                        <label for="editNis">Nis</label>
                        <input type="text" class="form-control" id="editNis" name="nis" required>
                    </div>
                    <div class="form-group">
                        <label for="editUsername">Username</label>
                        <input type="text" class="form-control" id="editUsername" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="editEmail">Email</label>
                        <input type="email" class="form-control" id="editEmail" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="editLevel">Level</label>
                        <select class="form-control" id="editLevel" name="level" required>
                            <option value="1">Admin</option>
                            <option value="2">Kepala Sekolah</option>
                            <option value="3">Wakil</option>
                            <option value="4">Guru</option>
                            <option value="5">Siswa</option>
                        </select>
                    </div>
                    <div class="form-group" id="editKelasGroup" style="display: none;">
                        <label for="editKelas">Kelas</label>
                        <select class="form-control" id="editKelas" name="kelas">
                        <?php foreach ($k as $key): ?>
                                <option value="<?= $key->id_kelas ?>" <?= $key->id_kelas == $statusbarang ? 'selected' : '' ?>>
                                            <?= $key->kelas ?>
                                    </option>
                                    <?php endforeach; ?>
</select>

                    </div>
                    <div class="form-group">
                        <label for="editJk">Jenis Kelamin</label>
                        <select class="form-control" id="editJk" name="jk" required>
                            <option value="L">Laki-laki</option>
                            <option value="P">Perempuan</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('.btn-action-edit').on('click', function() {
            // Ambil data dari atribut data-* di baris tabel
            var id_user = $(this).data('id_user');
            var nis = $(this).data('nis');
            var username = $(this).data('username');
            var email = $(this).data('email');
            var level = $(this).data('level');
            var jk = $(this).data('jk');

            // Isi form modal dengan data tersebut
            $('#editIdUser').val(id_user);
            $('#editNis').val(nis);
            $('#editUsername').val(username);
            $('#editEmail').val(email);
            $('#editLevel').val(level);
            $('#editJk').val(jk);

            // Tampilkan atau sembunyikan form group Kelas berdasarkan level
            if (level == 5) {
                $('#editKelasGroup').show();
            } else {
                $('#editKelasGroup').hide();
            }

            // Tampilkan modal
            $('#editUserModal').modal('show');
        });

        $('#editLevel').on('change', function() {
            if ($(this).val() == 5) {
                $('#editKelasGroup').show();
            } else {
                $('#editKelasGroup').hide();
            }
        });

        // Filter table function
        $('#searchInput').on('keyup', function() {
            var filter = $(this).val().toUpperCase();
            $('#tableBody tr').filter(function() {
                $(this).toggle($(this).text().toUpperCase().indexOf(filter) > -1)
            });
        });

        // Sesi timeout setelah 5 menit tanpa aktivitas
        var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)
        setTimeout(function() {
            alert('Sesi telah berakhir karena tidak ada aktivitas.');
            window.location.href = '<?= site_url('home/login') ?>';
        }, timeoutDuration);
    });
</script>
