<?php 
include 'aksi/functions.php';

$id = abs((int)base64_decode($_GET["id"]));
$cabang = $_GET["cabang"];

if( hapusUser($id) > 0) {
	echo "
		<script>
			document.location.href = 'users?cabang=".$cabang."';
			alert('Data User Berhasil Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			alert('Data User Gagal Dihapus');
			document.location.href = 'users?cabang=".$cabang."';
		</script>
	";
}

?>