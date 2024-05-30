<?php 
include 'aksi/functions.php';

$id = $_GET["id"];
$id = base64_decode($id);


if( hapusToko($id) > 0) {
	echo "
		<script>
			document.location.href = 'toko';
			alert('Data Toko Gagal Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			document.location.href = 'toko';
			alert('Data Toko Berhasil Dihapus');
		</script>
	";
}

?>