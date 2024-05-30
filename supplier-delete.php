<?php 
include 'aksi/functions.php';

$id = $_GET["id"];

if( hapusSupplier($id) > 0) {
	echo "
		<script>
			document.location.href = 'supplier';
			alert('Data Supplier Berhasil Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			alert('Data Supplier Gagal Dihapus');
			document.location.href = 'supplier';
		</script>
	";
}

?>