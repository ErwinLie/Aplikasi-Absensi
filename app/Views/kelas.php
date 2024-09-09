<div class="main-content">
    <section class="section">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4>Data Kelas</h4>
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
                                        <td><?= $wkwk->kelas?></td>
                                        <td>
                                            <a href="#" 
                                                class="btn btn-primary btn-action btn-edit mr-1" 
                                                data-id="<?= $wkwk->id_kelas ?>" 
                                                data-kelas="<?= $wkwk->kelas ?>"
                                                data-toggle="tooltip" 
                                                title="Edit">
                                                    <i class="fas fa-pencil-alt"></i>
                                            </a>

                                            <a href="<?= base_url('home/hapus_kelas/'.$wkwk->id_kelas) ?>" 
                                            class="btn btn-danger btn-action" 
                                            data-toggle="tooltip" 
                                            title="Delete" 
                                            data-confirm="Are You Sure?|This action cannot be undone. Do you want to continue?" 
                                            data-confirm-yes="window.location.href = '<?= base_url('home/hapus_kelas/'.$wkwk->id_kelas) ?>'">
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

<!-- Modal Edit Kelas -->
<div class="modal fade" id="editKelasModal" tabindex="-1" role="dialog" aria-labelledby="editKelasModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editKelasModalLabel">Edit Kelas</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editKelasForm" action="<?= base_url('home/aksi_e_kelas') ?>" method="POST">
                <div class="modal-body">
                    <input type="hidden" id="editIdKelas" name="id_kelas">
                    <div class="form-group">
                        <label for="editKelas">Kelas</label>
                        <input type="text" class="form-control" id="editKelas" name="kelas" required>
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

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const searchInput = document.getElementById('searchInput');

        // Filter table function
        searchInput.addEventListener('keyup', function() {
            filterTable();
        });

        function filterTable() {
            const filter = searchInput.value.toUpperCase();
            const rows = document.querySelectorAll('#tableBody tr');

            rows.forEach(row => {
                const cells = row.getElementsByTagName('td');
                let isVisible = false;

                for (let i = 0; i < cells.length; i++) {
                    if (cells[i].textContent.toUpperCase().includes(filter)) {
                        isVisible = true;
                        break;
                    }
                }

                row.style.display = isVisible ? '' : 'none';
            });
        }

        // Session timeout script
        var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)
        setTimeout(function() {
            alert('Sesi telah berakhir karena tidak ada aktivitas.');
            window.location.href = '<?= site_url('home/login') ?>';
        }, timeoutDuration);

        // Function to open edit modal and populate data
        function openEditModal(idKelas, kelas) {
            $('#editIdKelas').val(idKelas);
            $('#editKelas').val(kelas);
            $('#editKelasModal').modal('show');
        }

        // Event listener for edit button click
        $(document).on('click', '.btn-edit', function() {
            var idKelas = $(this).data('id');
            var kelas = $(this).data('kelas');
            openEditModal(idKelas, kelas);
        });
    });
</script>
