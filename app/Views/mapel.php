<div class="main-content">
    <section class="section">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4>Data Mapel</h4>
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
                                    <th scope="col">Mata Pelajaran</th>
                                    <th scope="col">Guru</th>
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
                                        <td><?= $wkwk->mapel?></td>
                                        <td><?= $wkwk->username?></td>
                                        <td>
                                            
                                        <!-- Edit Button (Updated) -->
<a href="javascript:void(0)" 
   class="btn btn-primary btn-action mr-1 edit-btn" 
   data-toggle="modal" 
   data-target="#editMapelModal"
   data-id_mapel="<?= $wkwk->id_mapel ?>" 
   data-mapel="<?= $wkwk->mapel ?>" 
   data-id_user="<?= $wkwk->id_user ?>" 
   title="Edit">
    <i class="fas fa-pencil-alt"></i>
</a>

<a href="<?= base_url('home/hapus_mapel/'.$wkwk->id_mapel) ?>" 
   class="btn btn-danger btn-action" 
   data-toggle="tooltip" 
   title="Delete">
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

<!-- Modal for Editing Mapel -->
<div class="modal fade" id="editMapelModal" tabindex="-1" aria-labelledby="editMapelModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editMapelModalLabel">Edit Mata Pelajaran</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('home/aksi_e_mapel') ?>" method="POST">
                <div class="modal-body">
                    <input type="hidden" name="id_mapel" value="<?=$erwin->id_mapel?>" id="editIdMapel">
                    <div class="form-group">
                        <label for="editMapel">Mata Pelajaran</label>
                        <input type="text" class="form-control" id="editMapel" name="mapel" required>
                    </div>
                    <div class="form-group">
                        <label for="editGuru">Guru</label>
                        <select class="form-control" id="editGuru" name="guru">
                            <?php foreach ($u as $key): ?>
                                <option value="<?= $key->id_user ?>"><?= $key->username ?></option>
                            <?php endforeach; ?>
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
        // Filter table function
        $('#searchInput').on('keyup', function() {
            var filter = $(this).val().toUpperCase();
            $('#tableBody tr').filter(function() {
                $(this).toggle($(this).text().toUpperCase().indexOf(filter) > -1)
            });
        });


        // Populate the edit modal with data when the edit button is clicked
        $('.edit-btn').on('click', function() {
            var id_mapel = $(this).data('id_mapel');
            var mapel = $(this).data('mapel');
            var id_user = $(this).data('id_user');

            $('#editIdMapel').val(id_mapel);
            $('#editMapel').val(mapel);
            $('#editGuru').val(id_user); // Set the selected option in the dropdown
        });

        // Sesi timeout setelah 5 menit tanpa aktivitas
        var timeoutDuration = 300 * 1000; // Durasi dalam milidetik (300 detik = 5 menit)
        setTimeout(function() {
            alert('Sesi telah berakhir karena tidak ada aktivitas.');
            window.location.href = '<?= site_url('home/login') ?>';
        }, timeoutDuration);
    });
</script>
