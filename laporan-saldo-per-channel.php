<?php 
  include '_header.php';
  include '_nav.php';
  include '_sidebar.php'; 
?>
<?php  
  if ( $levelLogin === "kasir") {
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
          <div class="col-sm-8">
            <h1>Data Laporan Saldo Per Channel Pembayaran</h1>
          </div>
          <div class="col-sm-4">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="bo">Home</a></li>
              <li class="breadcrumb-item active">Saldo Per Channel</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>


    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Filter Data</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
                </div>
              </div>
              <!-- /.card-header -->
              <form role="form" action="" method="POST">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="tanggal_akhir">Channel Pembayaran</label>
                            <select class="form-control select2bs4" required="" name="cp_id">
                                <option selected="selected" value="">-- Pilih --</option>
                                <option value="0">Cash</option>
                                <?php  
                                  $data = query("SELECT * FROM channel_pembayaran WHERE cp_cabang = $sessionCabang ORDER BY cp_id DESC");
                                ?>
                                <?php foreach ( $data as $ctr ) : ?>
                                  <option value="<?= $ctr['cp_id'] ?>"><?= $ctr['cp_name'] ?></option>
                                <?php endforeach; ?>
                              </select>
                        </div>
                    </div>
                  </div>
                  <div class="card-footer text-right">
                      <button type="submit" name="submit" class="btn btn-primary">
                        <i class="fa fa-filter"></i> Filter
                      </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>


    <?php if( isset($_POST["submit"]) ){ ?>
    <?php $cp_id       = $_POST['cp_id']; ?>
    

    <?php
      $invoice = query("SELECT * FROM invoice WHERE invoice_cabang = $sessionCabang && invoice_tipe_transaksi = $cp_id && invoice_piutang = 0 && invoice_piutang_lunas = 0"); 
      $totalInvoice = 0; 
    ?>
    <?php foreach ( $invoice as $row ) : ?>
        <?php $totalInvoice += $row['invoice_sub_total']; ?>
    <?php endforeach; ?>



    <?php
        $piutang = query("SELECT * FROM piutang WHERE piutang_cabang = $sessionCabang && piutang_tipe_pembayaran = $cp_id"); 
        $totalPiutang = 0; 
    ?>
    <?php foreach ( $piutang as $row ) : ?>
        <?php $totalPiutang += $row['piutang_nominal']; ?>
    <?php endforeach; ?>


    <?php
        $invoice_pembelian = query("SELECT * FROM invoice_pembelian WHERE invoice_pembelian_cabang = $sessionCabang && invoice_tipe_transaksi = $cp_id && invoice_hutang = 0 && invoice_hutang_lunas = 0"); 
        $totalInvoicePembelian = 0; 
    ?>
    <?php foreach ( $invoice_pembelian as $row ) : ?>
        <?php $totalInvoicePembelian += $row['invoice_total']; ?>
    <?php endforeach; ?>


    <?php
        $hutang = query("SELECT * FROM hutang WHERE hutang_cabang = $sessionCabang && hutang_tipe_pembayaran = $cp_id"); 
        $totalHutang = 0; 
    ?>
    <?php foreach ( $hutang as $row ) : ?>
        <?php $totalHutang += $row['hutang_nominal']; ?>
    <?php endforeach; ?>


    <?php
        $expense = query("SELECT * FROM expense WHERE expense_cabang = $sessionCabang && expense_metode = $cp_id"); 
        $totalExpense = 0; 
    ?>
    <?php foreach ( $expense as $row ) : ?>
        <?php $totalExpense += $row['expense_total_dibayar']; ?>
    <?php endforeach; ?>

    <section class="content">
      <div class="container-fluid">
          <br>
          <center>
            <?php if ($cp_id < 1) : ?>
            <?php else : ?>
            <?php endif; ?>

            <?php 
                if ( $cp_id < 1 ) {
                  $namaChannel = "Cash";
                } else {
                  $dataNamaChannel = mysqli_query($conn, "SELECT cp_name FROM channel_pembayaran WHERE cp_id = $cp_id");
                  $dataNamaChannel = mysqli_fetch_array($dataNamaChannel);
                  $namaChannel     = $dataNamaChannel['cp_name'];
                } 
            ?>
            <h3>
                <b>
                  Saldo Per Channel Pembayaran Transaksi 
                  <span style="color: red;"><?= $namaChannel; ?></span>
                </b>
            </h3>
          </center>
          <div class="row">
            <div class="col-md-12">
              <!-- general form elements -->
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Pendapatan</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="">Penjualan</label>
                            <input type="number" name="" class="form-control" id="" value="<?= $totalInvoice; ?>" readonly="">
                          </div>
                      </div>
                      <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="">Piutang</label>
                            <input type="number" name="" class="form-control" id="" value="<?= $totalPiutang; ?>" readonly="">
                          </div>
                      </div>
                    </div>
                    <div>
                      <?php $totalPendapatan = $totalInvoice + $totalPiutang; ?>
                      <b>Total Pendapatan: <?= number_format($totalPendapatan, 0, ',', '.'); ?></b>
                    </div>
                  </div>
                  <!-- /.card-body -->
              </div>
            </div>

            <div class="col-md-12">
              <!-- general form elements -->
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Pengeluaran</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="">Pembelian</label>
                            <input type="number" name="" class="form-control" id="" value="<?= $totalInvoicePembelian; ?>" readonly="">
                          </div>
                      </div>
                      <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="">Hutang</label>
                            <input type="number" name="" class="form-control" id="" value="<?= $totalHutang; ?>" readonly="">
                          </div>
                      </div>
                      <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="">expense</label>
                            <input type="number" name="" class="form-control" id="" value="<?= $totalExpense; ?>" readonly="">
                          </div>
                      </div>
                    </div>
                    <div>
                      <?php $totalPembelian = $totalInvoicePembelian + $totalHutang + $totalExpense; ?>
                      <b>Total Pengeluaran: <?= number_format($totalPembelian, 0, ',', '.'); ?></b>
                      <br><br><hr>
                      <?php $total = $totalPendapatan - $totalPembelian; ?>
                      <h4><b>Sisa Saldo <?= $namaChannel; ?>: <?= number_format($total, 0, ',', '.'); ?></b></h4>
                    </div>
                  </div>
                  <!-- /.card-body -->
              </div>
            </div>
          </div>
      </div>
    </section>
    <?php  } ?>
  </div>
</div>



<?php include '_footer.php'; ?>

<script>
  $(function () {

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })
  });
</script>
</body>
</html>