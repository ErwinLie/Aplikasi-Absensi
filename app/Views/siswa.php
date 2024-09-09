<div class="main-content">
    <section class="section">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4>Data Siswa</h4>
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
                                    $no=1;
                                    foreach($erwin as $wkwk){
                                ?>                          
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $wkwk->nis?></td>
                                        <td><?= $wkwk->username?></td>
                                        <td>
                                            <?php
                                                if ($wkwk->jk == "L") {
                                                    echo "Laki-laki";
                                                } else if ($wkwk->jk == "P") {
                                                    echo "Perempuan";
                                                }
                                            ?>
                                        </td>
                                        <td><?= $wkwk->kelas?></td>
                                        <td>
                                            <a href="<?= base_url('home/e_siswa/'.$wkwk->id_user) ?>" 
                                                class="btn btn-primary btn-action mr-1" 
                                                data-toggle="tooltip" 
                                                title="Edit">
                                                    <i class="fas fa-pencil-alt"></i>
                                            </a>

                                            <a href="<?= base_url('home/hapus_siswa/'.$wkwk->id_user) ?>" 
                                                class="btn btn-danger btn-action" 
                                                data-toggle="tooltip" 
                                                title="Delete" 
                                                data-confirm="Are You Sure?|This action cannot be undone. Do you want to continue?" 
                                                data-confirm-yes="alert('Deleted')">
                                                    <i class="fas fa-trash"></i>
                                            </a>
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



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
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
