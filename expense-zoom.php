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
 

// ambil data di URL
$id = abs((int)base64_decode($_GET['id']));


// query data mahasiswa berdasarkan id
$expense = query("SELECT * FROM expense WHERE expense_id = $id ")[0];

// cek apakah tombol submit sudah ditekan atau belum
if( isset($_POST["submit"]) ){
  // var_dump($_POST);

  // cek apakah data berhasil di tambahkan atau tidak
  if( editExpense($_POST) > 0 ) {
    echo "
      <script>
        document.location.href = 'expense-data';
      </script>
    ";
  } elseif( editExpense($_POST) == null ) {
    echo "
      <script>
        alert('Anda Belum melakukan perubahan data !!');
      </script>
    ";
  } else {
    echo "
      <script>
        alert('data gagal ditambahkan');
      </script>
    ";
  }
  
}
?>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Data Expense</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="bo">Home</a></li>
              <li class="breadcrumb-item active">Data Expense</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Expense</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-6 col-lg-6">
                        <input type="hidden" name="expense_id" value="<?= $expense['expense_id']; ?>">
                        <input type="hidden" name="expense_user_edit" value="<?= $_SESSION['user_id']; ?>">
                        <div class="form-group">
                          <label for="expense_date">Tanggal Transaksi</label>
                          <input type="teks" name="expense_date" class="form-control" id="expense_date" value="<?= tanggal_indo($expense['expense_date']); ?>" readonly>
                        </div>
                        <div class="form-group">
                          <label for="expense_create">User Create</label>
                          <?php  
                            $expense_create = $expense['expense_create'];
                            $userId = mysqli_query($conn, "SELECT user_nama FROM user WHERE user_id = $expense_create ");
                            $userId = mysqli_fetch_array($userId);
                            $userId = $userId['user_nama'];
                          ?>
                          <input type="text" name="expense_create" class="form-control" id="expense_create" placeholder="Input Expense" value="<?= $userId; ?>" readonly>
                        </div>
                        <div class="form-group">
                          <label for="expense_name">Expense</label>
                          <input type="text" name="expense_name" class="form-control" id="expense_name" placeholder="Input Expense" value="<?= $expense['expense_name']; ?>" readonly>
                        </div>
                        <div class="form-group">
                          <label for="expense_penerima">Penerima</label>
                          <input type="text" name="expense_penerima" class="form-control" id="expense_penerima" placeholder="Input Penerima" value="<?= $expense['expense_penerima']; ?>" readonly>
                        </div>
                        <div class="form-group">
                          <label for="expense_desc">Keterangan</label>
                          <textarea name="expense_desc" id="expense_desc" class="form-control" rows="3" readonly="readonly"><?= $expense['expense_desc']; ?></textarea>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6">
                        <div class="form-group">
                          <label for="expense_total_tagihan">Total Tagihan</label>
                          <input type="number" name="expense_total_tagihan" class="form-control" id="expense_total_tagihan" placeholder="Contoh: 200000" value="<?= $expense['expense_total_tagihan']; ?>" readonly>
                        </div>
                        <div class="form-group">
                          <label for="expense_total_dibayar">Total Dibayar</label>
                          <input type="number" name="expense_total_dibayar" class="form-control" id="expense_total_dibayar" value="<?= $expense['expense_total_dibayar']; ?>"  readonly>
                        </div>
                        <div class="form-group">
                          <label for="expense_total_sisa">Sisa</label>
                          <input type="number" name="expense_total_sisa" class="form-control" id="expense_total_sisa" value="<?= $expense['expense_total_sisa']; ?>"  readonly>
                        </div>

                        <?php  
                          $expense_metode = $expense['expense_metode'];
                          $channel = query("SELECT * FROM channel_pembayaran WHERE cp_status > 0 && cp_cabang = $sessionCabang && cp_id != $expense_metode ORDER BY cp_id DESC ");
                        ?>
                        <div class="form-group">
                          <label for="expense_metode">Metode Pembayaran</label>
                              <?php if ( $expense_metode < 1 ) : ?>
                                <input type="" name="" class="form-control" value="Cash" readonly="">

                              <?php else : ?>
                                <?php  
                                    $name_expense_metode = mysqli_query($conn, "SELECT cp_name FROM channel_pembayaran WHERE cp_id = $expense_metode ");
                                    $name_expense_metode = mysqli_fetch_array($name_expense_metode);
                                    $name_expense_metode = $name_expense_metode['cp_name'];
                                ?>
                                <input type="" name="" class="form-control" value="<?= $name_expense_metode; ?>" readonly="">

                              <?php endif; ?>
                        </div>

                        <div class="form-group">
                          <?php  
                            $expense_date_edit = $expense['expense_date_edit'];
                            if ( $expense_date_edit == null ) {
                              $edeTeks = "";
                            } else {
                              $edeTeks = tanggal_indo($expense['expense_date_edit']);
                            }
                          ?>
                          <label for="expense_date_edit">Tanggal Edit Transaksi</label>
                          <input type="teks" name="expense_date_edit" class="form-control" id="expense_date_edit" value="<?= $edeTeks; ?>" readonly>
                        </div>
                        <div class="form-group">
                          <label for="expense_user_edit">User Edit</label>
                          <?php  
                            $expense_user_edit = $expense['expense_user_edit'];
                            $userIdt = mysqli_query($conn, "SELECT user_nama FROM user WHERE user_id = $expense_user_edit ");
                            $userIdt = mysqli_fetch_array($userIdt);
                            $userIdt = $userIdt['user_nama'];
                          ?>
                          <input type="text" name="expense_user_edit" class="form-control" id="expense_user_edit" placeholder="" value="<?= $userIdt; ?>" readonly>
                        </div>
                    </div>
                  </div>
                  <div class="row no-print">
                    <div class="col-12">
                      <a href="#!" class="btn btn-success float-right" onclick="self.close()" style="margin-right: 5px;"> Kembali</a>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>


  </div>


<?php include '_footer.php'; ?>