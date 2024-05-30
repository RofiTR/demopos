<?php 
  include '_header.php'; 
?>
<?php  
  if ( $levelLogin !== "super admin") {
    echo "
      <script>
        document.location.href = 'bo';
      </script>
    ";
  }  
?>

<?php  
  $tanggal_awal = $_POST['tanggal_awal'];
  $tanggal_akhir = $_POST['tanggal_akhir'];
?>

<?php  
    $toko = query("SELECT * FROM toko WHERE toko_cabang = $sessionCabang");
?>
<?php foreach ( $toko as $row ) : ?>
    <?php 
      $toko_nama = $row['toko_nama'];
      $toko_kota = $row['toko_kota'];
      $toko_tlpn = $row['toko_tlpn'];
      $toko_wa   = $row['toko_wa'];
      $toko_print= $row['toko_print']; 
    ?>
<?php endforeach; ?>



  <?php  
      $data = query("SELECT * FROM expense WHERE expense_cabang = $sessionCabang && expense_date BETWEEN '".$tanggal_awal."' AND '".$tanggal_akhir."' ORDER BY expense_id DESC");
    ?>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Data Laporan Expense <?= $toko_nama; ?> Tanggal <?= tanggal_indo($tanggal_awal); ?> Sampai <?= tanggal_indo($tanggal_akhir); ?></h3>
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
                  </tr>
                  </thead>
                  <tbody>

                  <?php 
                      $i = 1; 
                      $expense_total_tagihan = 0;
                      $expense_total_dibayar = 0;
                  ?>
                  <?php foreach ( $data as $row ) : ?>
                  <?php  
                    $expense_total_tagihan += $row['expense_total_tagihan'];
                    $expense_total_dibayar += $row['expense_total_dibayar'];
                  ?>
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
                  </tr>
                  <?php $i++; ?>
                <?php endforeach; ?>
                  <tr>
                      <td colspan="6">
                        <b>Total</b>
                      </td>
                      <td>
                        Rp. <?php echo number_format($expense_total_tagihan, 0, ',', '.'); ?>
                      </td>
                      <td>
                        Rp. <?php echo number_format($expense_total_dibayar, 0, ',', '.'); ?>
                      </td>
                  </tr>
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



</body>
</html>
<script>
  window.print();
</script>