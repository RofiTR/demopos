<?php 
include 'aksi/functions.php';

$id = base64_decode($_GET["id"]);

if( hapusChannel($id) > 0) {
	echo "
		<script>
			document.location.href = 'channel';
			alert('Data Channel Berhasil Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			document.location.href = 'channel';
			alert('Data Channel Gagal Dihapus');
		</script>
	";
}

?>