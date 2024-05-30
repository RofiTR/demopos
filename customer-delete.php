<?php 
include 'aksi/functions.php';

$id = $_GET["id"];

if( hapusCustomer($id) > 0) {
	echo "
		<script>
			document.location.href = 'customer';
			alert('Data Customer Berhasil Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			alert('Data Customer Gagal Dihapus');
			document.location.href = 'customer';
		</script>
	";
}

?>