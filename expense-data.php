<?php 
  include '_header.php';
  include '_nav.php';
  include '_sidebar.php'; 
?>
<?php  
  if ( $levelLogin === "kasir" && $levelLogin === "kurir" ) {
    echo "
      <script>
        document.location.href = 'bo';
      </script>
    ";
  }  
?>

	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Expense</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="bo">Home</a></li>
              <li class="breadcrumb-item active">Expense</li>
            </ol>
          </div>
          <div class="tambah-data">
          	<a href="expense-add" class="btn btn-primary">Tambah Data</a>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>


    <?php  
    	$data = query("SELECT * FROM expense WHERE expense_cabang = $sessionCabang ORDER BY expense_id DESC");
    ?>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Data Expense Keseluruhan</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div class="table-auto">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th style="width: 5%;">No.</th>
                    <th>Expense</th>
                    <th>Penerima</th>
                    <th>Tanggal</th>
                    <th>User Create</th>
                    <th>Metode</th>
                    <th>Total Tagihan</th>
                    <th>Total Dibayar</th>
                    <th style="width: 10%; text-align: center;">Aksi</th>
                  </tr>
                  </thead>
                  <tbody>

                  <?php $i = 1; ?>
                  <?php foreach ( $data as $row ) : ?>
                  <tr>
                    	<td><?= $i; ?></td>
                    	<td><?= $row['expense_name']; ?></td>
                      <td><?= $row['expense_penerima']; ?></td>
                      <td><?= tanggal_indo($row['expense_date']); ?></td>
                      <td>
                          <?php  
                            $expense_create = $row['expense_create'];
                            $userId = mysqli_query($conn, "SELECT user_nama FROM user WHERE user_id = $expense_create ");
                            $userId = mysqli_fetch_array($userId);
                            $userId = $userId['user_nama'];
                            echo $userId;
                          ?>      
                      </td>
                      <td>
                          <?php  
                            $expense_metode = $row['expense_metode'];

                            if ( $expense_metode < 1 ) {
                              echo "Cash";
                            } else {
                              $channel = mysqli_query($conn, "SELECT cp_name FROM channel_pembayaran WHERE cp_id = $expense_metode ");
                              $channel = mysqli_fetch_array($channel);
                              $channel = $channel['cp_name'];
                              echo $channel;
                            }
                          ?>    
                      </td>
                      <td>Rp. <?= number_format($row['expense_total_tagihan'], 0, ',', '.'); ?></td>
                      <td>Rp. <?= number_format($row['expense_total_dibayar'], 0, ',', '.'); ?></td>
                      <td class="orderan-online-button">
                        <?php $id = base64_encode($row["expense_id"]); ?>
                          <a href="expense-zoom?id=<?= $id; ?>" target="_blank" title="Lihat Data">
                              <button class="btn btn-success" type="submit">
                                 <i class="fa fa-search"></i>
                              </button>
                          </a>
                      	  <a href="expense-edit?id=<?= $id; ?>" title="Edit Data">
                              <button class="btn btn-primary" type="submit">
                                 <i class="fa fa-edit"></i>
                              </button>
                          </a>
                          <a href="expense-delete?id=<?= $id; ?>" onclick="return confirm('Yakin Hapus Data Expense ?')" title="Delete Data">
                              <button class="btn btn-danger" type="submit" name="hapus">
                                  <i class="fa fa-trash-o"></i>
                              </button>
                          </a>
                      </td>
                  </tr>
                  <?php $i++; ?>
              	<?php endforeach; ?>
                </tbody>
                </table>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
</div>



<?php include '_footer.php'; ?>

<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<!-- <script src="dist/js/adminlte.min.js"></script> -->
<!-- AdminLTE for demo purposes -->
<!-- <script src="dist/js/demo.js"></script> -->
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
  });
</script>
</body>
</html>