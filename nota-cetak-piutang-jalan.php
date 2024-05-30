<?php 
  include '_header-artibut.php';
?>
<?php  
  $status = $_SESSION['user_status'];
    if ( $status === '0') {
    echo"
          <script>
            alert('Akun Tidak Aktif');
            window.location='./';
          </script>";
  }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Nota Cetak POS - Satria Gemilang</title>
	<meta charset=utf-8>
	<meta name=description content="">
	<meta name=viewport content="width=device-width, initial-scale=1">
	<!-- Tempusdominus Bbootstrap 4 -->
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="dist/img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="dist/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="dist/css/style.css">

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<?php  
    // ambil data di URL
    $id = abs((int)$_GET['no']);

    // query data 
    $invoice = query("SELECT * FROM invoice WHERE invoice_id = $id && invoice_cabang = $sessionCabang ")[0];
    $tipeTransaksi = $invoice['invoice_piutang'];
?>

<!-- Nama Kasir -->
<?php  
    $kasir = $invoice['invoice_kasir'];
    $dataKasir = query("SELECT * FROM user WHERE user_id = $kasir");
?>
<?php foreach ( $dataKasir as $ksr ) : ?>
    <?php $ksrDetail = $ksr['user_nama']; ?>
<?php endforeach; ?>

<!-- Nama Customer -->
<?php  
    $customer = $invoice['invoice_customer'];
    $dataCustomer = query("SELECT * FROM customer WHERE customer_id = $customer");
?>
<?php foreach ( $dataCustomer as $ctr ) : ?>
    <?php 
        $ctrId     = $ctr['customer_id']; 
        $ctrNama   = $ctr['customer_nama']; 
        $ctrAlmt   = $ctr['customer_alamat']; 
    ?>
<?php endforeach; ?>

<?php  
    $toko = query("SELECT * FROM toko WHERE toko_cabang = $sessionCabang");
?>
<?php foreach ( $toko as $row ) : ?>
    <?php 
        $toko_nama      = $row['toko_nama'];
        $toko_kota      = $row['toko_kota'];
        $toko_tlpn      = $row['toko_tlpn'];
        $toko_wa        = $row['toko_wa'];
        $toko_print     = $row['toko_print']; 
        $toko_alamat    = $row['toko_alamat'];
    ?>
<?php endforeach; ?>

    <section class="nota-lebar">
        <div class="container">
            <div class="nota-lebar-box">
                <div class="nzb-top">
                    <div class="row">
                        <div class="col-3 col-line-right">
                            <div class="nzb-top-img">
                                <h2><?= $toko_nama; ?></h2>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="nzb-top-text">
                                <p><?= $toko_nama; ?></p>
                                <p><?= $toko_alamat; ?></p>
                                <p><?= $toko_kota; ?></p>
                                <p>Tlp (<?= $toko_tlpn; ?>) - WA (<?= $toko_wa; ?>)</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="nzb-top-invoice text-right">
                                <div class="nti-title">
                                    surat jalan
                                </div>
                                <div class="nti-no">
                                    <span>NO</span>
                                    <span><?= $invoice['penjualan_invoice']; ?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="nzb-info-user">
                    <div class="row">
                        <div class="col-6">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Tanggal</td>
                                        <td>: <?= date("d F Y");; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Kepada</td>
                                        <td>: <?= $ctrNama; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Alamat</td>
                                        <td>
                                            : 
                                            <?php 
                                                if ( $ctrAlmt == null ) {
                                                    echo "-";
                                                } else {
                                                    echo $ctrAlmt;
                                                }
                                            ?>        
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-6">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Transaksi</td>
                                        <td>: 
                                            <?php  
                                                if ( $tipeTransaksi < 1 ) {
                                                    echo "Cash - ".$invoice['invoice_tgl'];
                                                } else {
                                                    echo "Piutang - ".$invoice['invoice_tgl'];
                                                }
                                            ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Kasir</td>
                                        <td>: <?= $ksrDetail; ?></td>
                                    </tr>

                                    <?php if ( $tipeTransaksi == 1 ) { ?>
                                    <tr>
                                        <td>Jatuh Tempo</td>
                                        <td>: <?= tanggal_indo($invoice['invoice_piutang_jatuh_tempo']); ?></td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="nzb-desc">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Item Description</th>
                                <th class="text-center">Qty</th>                               
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                              $invoice1 = $invoice['penjualan_invoice'];
                              $i = 1; 
                              $queryProduct = $conn->query("SELECT penjualan.penjualan_id,
                               penjualan.barang_qty, 
                               penjualan.penjualan_invoice,
                               penjualan.barang_option_sn, 
                               penjualan.barang_sn_desc, 
                               penjualan.keranjang_harga, 
                               penjualan.penjualan_cabang, 
                               barang.barang_id, 
                               barang.barang_nama
                                         FROM penjualan 
                                         JOIN barang ON penjualan.barang_id = barang.barang_id
                                         WHERE penjualan_invoice = $invoice1 && penjualan_cabang = '".$sessionCabang."'
                                         ORDER BY penjualan_id DESC
                                         ");
                              while ($rowProduct = mysqli_fetch_array($queryProduct)) {
                            ?>
                            <tr>
                                <td>
                                    <?= $rowProduct['barang_nama']; ?>
                                    <?php  
                                        if ( $rowProduct['barang_option_sn'] > 0 ) {
                                            echo "<br><small>No. SN: ".$rowProduct['barang_sn_desc']."</small>";
                                        }
                                    ?>  
                                </td>
                                <td class="text-center"><?= $rowProduct['barang_qty']; ?></td>                              
                            </tr>
                            <?php } ?>
                        </tbody>
                </div>

                                </div> 
                            </div>
                        </div>
                    </div><br><br>
                </div>
				<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td></td>
</table>
<div class="nzb-desc">
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
		<td align="center">Kasir</td>
        <td align="center">Penerima</td>
    </tr>
    <tr>
        <td align="center"></td>
        <td align="center"></td>
    </tr>
   
    <tr>
    <td><br/><br/><br/><br/></td>
    <td><br/><br/><br/><br/></td>
    </tr>    
    <tr>
        <td align="center">( <?= $ksrDetail; ?> )</td>
        <td align="center">( <?= $ctrNama; ?> )</td>
    </tr>
    <tr>
        <td align="center"></td>
    </tr>
</div>
</table>
            </div>
        </div>
    </section>

</body>
</html>
<script>
    window.print();
</script>