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
        alert('Data Expense Berhasil Diubah');
      </script>
    ";
  } elseif( editExpense($_POST) == null ) {
    echo "
      <script>
        alert('Anda Belum Melakukan Perubahan Data Expense');
      </script>
    ";
  } else {
    echo "
      <script>
        alert('Data Expense Gagal Diubah');
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
                          <label for="expense_name">Expense</label>
                          <input type="text" name="expense_name" class="form-control" id="expense_name" placeholder="Input Expense" value="<?= $expense['expense_name']; ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="expense_penerima">Penerima</label>
                          <input type="text" name="expense_penerima" class="form-control" id="expense_penerima" placeholder="Input Penerima" value="<?= $expense['expense_penerima']; ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="expense_desc">Keterangan</label>
                          <textarea name="expense_desc" id="expense_desc" class="form-control" rows="3" required="required"><?= $expense['expense_desc']; ?></textarea>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6">
                        <div class="form-group">
                          <label for="expense_total_tagihan">Total Tagihan</label>
                          <input type="number" name="expense_total_tagihan" class="form-control" id="expense_total_tagihan" placeholder="Contoh: 200000" value="<?= $expense['expense_total_tagihan']; ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="expense_total_dibayar">Total Dibayar</label>
                          <input type="number" name="expense_total_dibayar" class="form-control" id="expense_total_dibayar" value="<?= $expense['expense_total_dibayar']; ?>"  required>
                        </div>

                        <?php  
                          $expense_metode = $expense['expense_metode'];
                          $channel = query("SELECT * FROM channel_pembayaran WHERE cp_status > 0 && cp_cabang = $sessionCabang && cp_id != $expense_metode ORDER BY cp_id DESC ");
                        ?>
                        <div class="form-group">
                          <label for="expense_metode">Metode Pembayaran</label>
                          <select class="form-control" required="" name="expense_metode">
                              <?php if ( $expense_metode < 1 ) : ?>
                                <option selected="selected" value="0">Cash</option>

                                <?php foreach ( $channel as $row ) : ?>
                                <option value="<?= $row['cp_id']; ?>"><?= $row['cp_name']; ?></option>
                                <?php endforeach; ?>

                              <?php else : ?>
                                <?php  
                                    $name_expense_metode = mysqli_query($conn, "SELECT cp_name FROM channel_pembayaran WHERE cp_id = $expense_metode ");
                                    $name_expense_metode = mysqli_fetch_array($name_expense_metode);
                                    $name_expense_metode = $name_expense_metode['cp_name'];
                                ?>
                                <option selected="selected" value="<?= $expense_metode; ?>">
                                  <?= $name_expense_metode; ?>
                                </option>

                                <?php foreach ( $channel as $row ) : ?>
                                <option value="<?= $row['cp_id']; ?>"><?= $row['cp_name']; ?></option>
                                <?php endforeach; ?>
                                <option value="0">Cash</option>
                              <?php endif; ?>
                          </select>
                        </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer text-right">
                  <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>


  </div>


<?php include '_footer.php'; ?>