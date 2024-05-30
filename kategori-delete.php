<?php 
include 'aksi/functions.php';

$id = $_GET["id"];

if( hapusKategori($id) > 0) {
	echo "
		<script>
			document.location.href = 'kategori';
			alert('Data Kategori Berhasil Dihapus')
		</script>
	";
} else {
	echo "
		<script>
			alert('Data Kategori Gagal Dihapus');
			document.location.href = 'kategori';
		</script>
	";
}

?>