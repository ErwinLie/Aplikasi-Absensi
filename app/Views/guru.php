<div class="main-content">
    <section class="section">
        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4>Data Guru</h4>
                    <div class="card-header-action">
                        <form class="form-inline">
                            <input id="searchInput" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <!-- <button class="btn btn-primary" type="button" onclick="filterTable()">Search</button> -->
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
                                    <th scope="col">Email</th>
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
                                        <td><?= $wkwk->jk?></td>
                                        <td><?= $wkwk->email?></td>
                                        <td>
                                            <a href="<?= base_url('home/edit_guru/'.$wkwk->id_user) ?>" 
                                                class="btn btn-primary btn-action mr-1" 
                                                data-toggle="tooltip" 
                                                title="Edit">
                                                    <i class="fas fa-pencil-alt"></i>
                                            </a>

                                            <a href="<?= base_url('home/hapus_guru/'.$wkwk->id_user) ?>" 
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
    });
</script>
