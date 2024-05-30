<?php 
include 'aksi/functions.php';

$id = base64_decode($_GET["id"]);

if( hapusExpense($id) > 0) {
	echo "
		<script>
			document.location.href = 'expense-data';
			alert('Data Expense Berhasil Dihapus');
		</script>
	";
} else {
	echo "
		<script>
			alert('Data Expense Gagal Dihapus');
			document.location.href = 'expense-data';
		</script>
	";
}

?>