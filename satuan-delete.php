<?php 
include 'aksi/functions.php';

$id = $_GET["id"];

if( hapusSatuan($id) > 0) {
	echo "
		<script>
			document.location.href = 'satuan';
			alert('Data Satuan Berhasil Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			alert('Data Satuan Gagal Dihapus');
			document.location.href = 'satuan';
		</script>
	";
}

?>