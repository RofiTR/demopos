<?php 
include '_header-artibut.php';

$id = abs((int)base64_decode($_GET["id"]));
$tipe = abs((int)base64_decode($_GET["tipe"]));

if ( $tipe < 1 ) {
    $linkBack = "stock-opname-per-produk";
} else {
    $linkBack = "stock-opname-keseluruhan";
}

if( hapusStockOpname($id, $sessionCabang) > 0) {
	echo "
		<script>
			document.location.href = '".$linkBack."';
			alert('Data Stock Opname Berhasil Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			alert('Data Stock Opname Gagal Dihapus');
			document.location.href = '".$linkBack."';
		</script>
	";
}

?>