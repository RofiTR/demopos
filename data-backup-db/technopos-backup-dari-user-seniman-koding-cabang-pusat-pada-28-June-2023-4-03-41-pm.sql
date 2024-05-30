

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_kode` varchar(500) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_kode_count` int(11) NOT NULL,
  `barang_nama` varchar(250) NOT NULL,
  `barang_harga_beli` varchar(250) NOT NULL,
  `barang_harga` varchar(250) NOT NULL,
  `barang_harga_grosir_1` int(11) NOT NULL,
  `barang_harga_grosir_2` int(11) NOT NULL,
  `barang_harga_s2` int(11) NOT NULL,
  `barang_harga_grosir_1_s2` int(11) NOT NULL,
  `barang_harga_grosir_2_s2` int(11) NOT NULL,
  `barang_harga_s3` int(11) NOT NULL,
  `barang_harga_grosir_1_s3` int(11) NOT NULL,
  `barang_harga_grosir_2_s3` int(11) NOT NULL,
  `barang_stock` text NOT NULL,
  `barang_tanggal` varchar(250) NOT NULL,
  `barang_kategori_id` int(11) NOT NULL,
  `kategori_id` varchar(250) NOT NULL,
  `barang_satuan_id` varchar(250) NOT NULL,
  `satuan_id` varchar(250) NOT NULL,
  `satuan_id_2` int(11) NOT NULL,
  `satuan_id_3` int(11) NOT NULL,
  `satuan_isi_1` int(11) NOT NULL,
  `satuan_isi_2` int(11) NOT NULL,
  `satuan_isi_3` int(11) NOT NULL,
  `barang_deskripsi` text NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  `barang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

INSERT INTO barang VALUES("74","534645745","534645745","17","Kabel VGA","","2000","0","0","0","0","0","0","0","0","20","08 January 2022 1:49:18 pm","8","8","3","3","0","0","1","0","0","Kabel VGA Terbaik","0","5","0");
INSERT INTO barang VALUES("75","754875856","754875856","18","CAPASITOR FAN MC 2,5 mF","","50000","0","0","0","0","0","0","0","0","2","14 March 2022 11:14:02 am","8","8","3","3","0","0","1","0","0","CAPASITOR FAN MC 2,5 mF","0","2","0");



CREATE TABLE `barang_sn` (
  `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_sn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `channel_pembayaran` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_name` varchar(500) NOT NULL,
  `cp_status` int(11) NOT NULL,
  `cp_cabang` int(11) NOT NULL,
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO channel_pembayaran VALUES("3","BCA","1","0");
INSERT INTO channel_pembayaran VALUES("4","Mandiri","1","0");



CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_category` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("0","Customer Umum","","","","","1","0","0");
INSERT INTO customer VALUES("1","Dari Marketplace","","","","","1","0","0");
INSERT INTO customer VALUES("5","Asrul","085678900987","","Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kec. Kenjeran, Kota SBY, Jawa Timur 60129","11 April 2020 1:35:37 pm","1","0","0");
INSERT INTO customer VALUES("7","Raka Abdi","086782121212","abdi@gmail.com","Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kenjeran, Kota SBY, Jawa Timur 60129","12 April 2020 1:00:07 pm","1","0","0");
INSERT INTO customer VALUES("9","Erlang Abadi","0822998768","","Kantor Pusat PT UBS – PT Untung Bersama Sejahtera: Alamat: Jl. Kenjeran No 395-399 Surabaya 60134 Jawa Timur.","18 August 2021 7:21:43 pm","1","0","0");
INSERT INTO customer VALUES("11","Doni Afandi","082299078642","","Jl Lebak Jaya kenjeran Surabaya Jawa Timur","25 September 2021 11:03:53 am","1","1","0");
INSERT INTO customer VALUES("13","Customer Umum","","","","","1","0","0");
INSERT INTO customer VALUES("15","Customer Umum","","","","","1","0","0");
INSERT INTO customer VALUES("16","Customer Umum","","","","","1","0","0");
INSERT INTO customer VALUES("17","Customer Umum","","","","","1","0","0");
INSERT INTO customer VALUES("18","Customer Umum","","","","","1","0","0");



CREATE TABLE `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL,
  PRIMARY KEY (`ekspedisi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO ekspedisi VALUES("2","JNE","1","0");
INSERT INTO ekspedisi VALUES("3","TIKI","1","0");
INSERT INTO ekspedisi VALUES("4","POS","1","0");
INSERT INTO ekspedisi VALUES("5","JNE Cabang","1","1");



CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(500) NOT NULL,
  `expense_penerima` varchar(500) NOT NULL,
  `expense_date` varchar(250) NOT NULL,
  `expense_create` int(11) NOT NULL,
  `expense_desc` text NOT NULL,
  `expense_metode` int(11) NOT NULL,
  `expense_total_tagihan` int(11) NOT NULL,
  `expense_total_dibayar` int(11) NOT NULL,
  `expense_total_sisa` int(11) NOT NULL,
  `expense_date_edit` varchar(250) NOT NULL,
  `expense_user_edit` int(11) NOT NULL,
  `expense_cabang` int(11) NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO expense VALUES("2","Biaya Internet","Bossnet","2022-12-08","3","Bossnet Bossnet","3","210000","200000","-10000","2022-12-08","3","0");
INSERT INTO expense VALUES("3","Biaya Listrik","PLN","2022-12-08","3","Datang ke PLN","0","150000","150000","0","","0","0");
INSERT INTO expense VALUES("4","Biaya Beli Perlengkapan Batu bata","Toko Surya Abadi","2022-12-10","3","Biaya Beli Perlengkapan Batu bata Biaya Beli Perlengkapan Batu bata","3","100000","100000","0","","0","0");



CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hutang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO hutang VALUES("1","654654454362425","20220107130","2021-01-07","07 January 2022 7:51:09 pm","3","1000","0","0");
INSERT INTO hutang VALUES("2","54543ttertr","20220107230","2020-01-07","07 January 2022 8:20:56 pm","3","200","0","0");
INSERT INTO hutang VALUES("3","654654454362425","20220107130","2022-05-20","20 May 2022 10:51:06 am","3","4000","0","0");



CREATE TABLE `hutang_kembalian` (
  `hl_id` int(11) NOT NULL AUTO_INCREMENT,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO hutang_kembalian VALUES("1","643645745890","20211110430","2021-11-10","10 November 2021 6:53:09 pm","5000","0");
INSERT INTO hutang_kembalian VALUES("2","654654454362425","20220107130","2022-05-20","20 May 2022 10:51:06 am","0","0");



CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `penjualan_invoice` text NOT NULL,
  `penjualan_invoice_count` varchar(250) NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_customer` varchar(500) NOT NULL,
  `invoice_customer_category` int(11) NOT NULL,
  `invoice_kurir` varchar(500) NOT NULL,
  `invoice_status_kurir` int(11) NOT NULL,
  `invoice_tipe_transaksi` int(11) NOT NULL,
  `invoice_total_beli` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_pajak` varchar(500) NOT NULL,
  `invoice_pajak_nominal` varchar(500) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_diskon` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_year_month` varchar(250) NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_beli_lama` int(11) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_ongkir_lama` int(11) NOT NULL,
  `invoice_sub_total_lama` int(11) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_marketplace` varchar(500) NOT NULL,
  `invoice_ekspedisi` int(11) NOT NULL,
  `invoice_no_resi` varchar(500) NOT NULL,
  `invoice_date_selesai_kurir` varchar(500) NOT NULL,
  `invoice_piutang` int(11) NOT NULL,
  `invoice_piutang_dp` varchar(500) NOT NULL,
  `invoice_piutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_piutang_lunas` int(11) NOT NULL,
  `invoice_draft` int(11) NOT NULL,
  `invoice_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO invoice VALUES("8","202212071","1","07 December 2022 4:33:42 pm","0","0","0","1","3","0","2000","11","220","0","0","2220","2500","280","3","2022-12-07","2022-12"," "," ","0","2000","0","2220","2500","280","","0","-","-","0","0","0","0","0","0");
INSERT INTO invoice VALUES("9","202212102","2","10 December 2022 1:00:49 pm","0","0","0","1","3","0","6000","11","660","0","0","6660","6700","40","3","2022-12-10","2022-12"," "," ","0","6000","0","6660","6700","40","","0","-","-","0","0","0","0","0","0");



CREATE TABLE `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_supplier` varchar(500) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_hutang` int(11) NOT NULL,
  `invoice_hutang_dp` varchar(500) NOT NULL,
  `invoice_hutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_hutang_lunas` int(11) NOT NULL,
  `invoice_tipe_transaksi` int(11) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO invoice_pembelian VALUES("1","654654454362425","20220107130","07 January 2022 7:50:32 pm","4","5000","5000","0","3                                  ","2022-01-07"," "," ","5000","0","-5000","0","0","2022-02-07","1","0","0");
INSERT INTO invoice_pembelian VALUES("2","54543ttertr","20220107230","07 January 2022 8:20:09 pm","4","1600","200","-1400","3                                  ","2022-01-07"," "," ","1600","0","-1600","1","0","2022-02-08","0","0","0");



CREATE TABLE `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO invoice_pembelian_number VALUES("9","1234567876","2021071912","3","202107191230","0");
INSERT INTO invoice_pembelian_number VALUES("10","6436457457","202110233","3","20211023330","0");
INSERT INTO invoice_pembelian_number VALUES("11","6436457457","202110233","3","20211023331","1");



CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO kategori VALUES("4","Keyboard","1","0");
INSERT INTO kategori VALUES("6","Monitor","1","0");
INSERT INTO kategori VALUES("8","Kabel","0","0");



CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `keranjang_harga_parent` int(11) NOT NULL,
  `keranjang_harga_edit` int(11) NOT NULL,
  `keranjang_satuan` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_qty_view` int(11) NOT NULL,
  `keranjang_konversi_isi` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_tipe_customer` int(11) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO keranjang VALUES("3","CAPASITOR FAN MC 2,5 mF","","50000","50000","0","3","75","754875856","2","2","1","0","0","0","3","7530","0","0");



CREATE TABLE `keranjang_draft` (
  `keranjang_draf_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(250) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `keranjang_harga_parent` int(11) NOT NULL,
  `keranjang_harga_edit` int(11) NOT NULL,
  `keranjang_satuan` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(250) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_qty_view` int(11) NOT NULL,
  `keranjang_konversi_isi` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_tipe_customer` int(11) NOT NULL,
  `keranjang_draft_status` int(11) NOT NULL,
  `keranjang_invoice` text NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_draf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_transfer_nama` text NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` text NOT NULL,
  `keranjang_transfer_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_transfer_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_pengirim_cabang` int(11) NOT NULL,
  `keranjang_penerima_cabang` int(11) NOT NULL,
  `keranjang_transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `laba_bersih` (
  `lb_id` int(11) NOT NULL AUTO_INCREMENT,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL,
  PRIMARY KEY (`lb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO laba_bersih VALUES("1","500000","400000","0","0","0","0","0","0","0","0");



CREATE TABLE `pembelian` (
  `pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
  `pembelian_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `pembelian_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_harga_beli` int(11) NOT NULL,
  `pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pembelian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO pembelian VALUES("1","72","72","10","3","654654454362425","20220107130","2022-01-07","10","10","500","0");
INSERT INTO pembelian VALUES("2","72","72","4","3","54543ttertr","20220107230","2022-01-07","4","4","400","0");



CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL AUTO_INCREMENT,
  `penjualan_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `barang_qty_keranjang` int(11) NOT NULL,
  `barang_qty_konversi_isi` int(11) NOT NULL,
  `keranjang_satuan` int(11) NOT NULL,
  `keranjang_harga_beli` varchar(500) NOT NULL,
  `keranjang_harga` varchar(500) NOT NULL,
  `keranjang_harga_parent` int(11) NOT NULL,
  `keranjang_harga_edit` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_date` date NOT NULL,
  `penjualan_date_year_month` varchar(250) NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `invoice_customer_category` int(11) NOT NULL,
  `penjualan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`penjualan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO penjualan VALUES("1","75","75","1","1","1","3","","50000","50000","0","3","202209011","2022-09-01","2022-09","1","1","0","0","0","0","0");
INSERT INTO penjualan VALUES("9","74","74","1","1","1","3","","2000","2000","0","3","202212071","2022-12-07","2022-12","1","1","0","0","0","0","0");
INSERT INTO penjualan VALUES("10","74","74","3","3","1","3","","2000","2000","0","3","202212102","2022-12-10","2022-12","3","3","0","0","0","0","0");



CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`piutang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `piutang_kembalian` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO piutang_kembalian VALUES("1","202111102","2021-11-10","10 November 2021 6:43:57 pm","1000","0");
INSERT INTO piutang_kembalian VALUES("2","2022040611","2022-04-06","06 April 2022 12:51:37 pm","0","0");
INSERT INTO piutang_kembalian VALUES("3","202201072","2022-04-06","06 April 2022 1:28:07 pm","500","0");
INSERT INTO piutang_kembalian VALUES("4","202201088","2022-04-07","07 April 2022 9:25:10 am","0","0");



CREATE TABLE `retur` (
  `retur_id` int(11) NOT NULL AUTO_INCREMENT,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL,
  PRIMARY KEY (`retur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO retur VALUES("12","5","202004209","3","2020-04-20"," ","1");
INSERT INTO retur VALUES("13","5","202004209","3","2020-04-20"," ","1");



CREATE TABLE `satuan` (
  `satuan_id` int(11) NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO satuan VALUES("2","PCS","1","0");
INSERT INTO satuan VALUES("3","Unit","1","0");



CREATE TABLE `stock_opname` (
  `stock_opname_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_opname_date_create` varchar(250) NOT NULL,
  `stock_opname_datetime_create` varchar(250) NOT NULL,
  `stock_opname_date_proses` varchar(250) NOT NULL,
  `stock_opname_user_create` int(11) NOT NULL,
  `stock_opname_user_eksekusi` int(11) NOT NULL,
  `stock_opname_status` int(11) NOT NULL,
  `stock_opname_user_upload` int(11) NOT NULL,
  `stock_opname_date_upload` varchar(250) NOT NULL,
  `stock_opname_datetime_upload` varchar(250) NOT NULL,
  `stock_opname_tipe` int(11) NOT NULL,
  `stock_opname_cabang` int(11) NOT NULL,
  PRIMARY KEY (`stock_opname_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO stock_opname VALUES("7","2022-09-17","17 September 2022 3:30:34 pm","2022-09-17","3","3","1","3","2022-09-17","17 September 2022 4:41:26 pm","0","0");
INSERT INTO stock_opname VALUES("8","2022-09-17","17 September 2022 4:21:32 pm","2022-09-17","3","3","1","3","2022-09-17","17 September 2022 4:21:48 pm","1","0");
INSERT INTO stock_opname VALUES("16","2023-06-28","28 June 2023 3:54:37 pm","2023-06-28","3","3","0","0","","","0","0");



CREATE TABLE `stock_opname_hasil` (
  `soh_id` int(11) NOT NULL AUTO_INCREMENT,
  `soh_stock_opname_id` int(11) NOT NULL,
  `soh_barang_id` int(11) NOT NULL,
  `soh_barang_kode` varchar(500) NOT NULL,
  `soh_barang_stock_system` int(11) NOT NULL,
  `soh_stock_fisik` int(11) NOT NULL,
  `soh_selisih` int(11) NOT NULL,
  `soh_note` text NOT NULL,
  `soh_date` varchar(250) NOT NULL,
  `soh_datetime` varchar(250) NOT NULL,
  `soh_tipe` int(11) NOT NULL,
  `soh_user` int(11) NOT NULL,
  `soh_barang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`soh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

INSERT INTO stock_opname_hasil VALUES("29","8","75","754875856","2","1","1","Produk lebih ","2022-09-17","17 September 2022 4:21:48 pm","1","3","0");
INSERT INTO stock_opname_hasil VALUES("30","8","74","534645745","4","5","-1","Produk lebih tes","2022-09-17","17 September 2022 4:21:48 pm","1","3","0");
INSERT INTO stock_opname_hasil VALUES("36","7","75","754875856","1","2","-1","","2022-09-17","17 September 2022 4:39:37 pm","0","3","0");



CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO supplier VALUES("2","Doni Afandi","085780978675","Surabaya","PT Pemasok Produk","1","14 November 2020 7:31:51 pm","0");
INSERT INTO supplier VALUES("4","Afandi","085787654321","Surabaya","PT ABC","1","15 November 2020 7:46:06 pm","0");



CREATE TABLE `terlaris` (
  `terlaris_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  PRIMARY KEY (`terlaris_id`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=latin1;

INSERT INTO terlaris VALUES("309","67","2");
INSERT INTO terlaris VALUES("310","68","3");
INSERT INTO terlaris VALUES("311","69","1");
INSERT INTO terlaris VALUES("312","68","1");
INSERT INTO terlaris VALUES("313","65","3");
INSERT INTO terlaris VALUES("314","69","1");
INSERT INTO terlaris VALUES("315","71","24");
INSERT INTO terlaris VALUES("316","71","48");
INSERT INTO terlaris VALUES("317","72","4");
INSERT INTO terlaris VALUES("318","72","2");
INSERT INTO terlaris VALUES("319","73","0");
INSERT INTO terlaris VALUES("320","73","1");
INSERT INTO terlaris VALUES("321","72","1");
INSERT INTO terlaris VALUES("322","72","2");
INSERT INTO terlaris VALUES("323","72","1");
INSERT INTO terlaris VALUES("324","72","1");
INSERT INTO terlaris VALUES("325","72","1");
INSERT INTO terlaris VALUES("326","72","1");
INSERT INTO terlaris VALUES("327","72","1");
INSERT INTO terlaris VALUES("328","72","1");
INSERT INTO terlaris VALUES("329","72","1");
INSERT INTO terlaris VALUES("330","75","1");
INSERT INTO terlaris VALUES("331","75","1");
INSERT INTO terlaris VALUES("332","75","1");
INSERT INTO terlaris VALUES("333","71","1");
INSERT INTO terlaris VALUES("334","71","1");
INSERT INTO terlaris VALUES("335","71","1");
INSERT INTO terlaris VALUES("336","71","1");
INSERT INTO terlaris VALUES("337","71","1");
INSERT INTO terlaris VALUES("338","71","1");
INSERT INTO terlaris VALUES("339","75","1");
INSERT INTO terlaris VALUES("340","74","1");
INSERT INTO terlaris VALUES("341","74","1");
INSERT INTO terlaris VALUES("342","72","1");
INSERT INTO terlaris VALUES("343","75","1");
INSERT INTO terlaris VALUES("344","74","1");
INSERT INTO terlaris VALUES("345","74","1");
INSERT INTO terlaris VALUES("346","74","1");
INSERT INTO terlaris VALUES("347","75","1");
INSERT INTO terlaris VALUES("348","75","1");
INSERT INTO terlaris VALUES("349","74","1");
INSERT INTO terlaris VALUES("350","75","1");
INSERT INTO terlaris VALUES("351","74","1");
INSERT INTO terlaris VALUES("352","73","1");
INSERT INTO terlaris VALUES("353","72","24");
INSERT INTO terlaris VALUES("354","72","24");
INSERT INTO terlaris VALUES("355","75","1");
INSERT INTO terlaris VALUES("356","74","1");
INSERT INTO terlaris VALUES("357","74","1");
INSERT INTO terlaris VALUES("358","74","1");
INSERT INTO terlaris VALUES("359","75","1");
INSERT INTO terlaris VALUES("360","75","1");
INSERT INTO terlaris VALUES("361","75","1");
INSERT INTO terlaris VALUES("362","74","2");
INSERT INTO terlaris VALUES("363","74","1");
INSERT INTO terlaris VALUES("364","74","3");



CREATE TABLE `toko` (
  `toko_id` int(11) NOT NULL AUTO_INCREMENT,
  `toko_nama` varchar(500) NOT NULL,
  `toko_kota` varchar(250) NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_tlpn` varchar(250) NOT NULL,
  `toko_wa` varchar(250) NOT NULL,
  `toko_email` varchar(500) NOT NULL,
  `toko_print` int(11) NOT NULL,
  `toko_print_besar` int(11) NOT NULL,
  `toko_status` int(11) NOT NULL,
  `toko_ongkir` int(11) NOT NULL,
  `toko_pajak` varchar(500) NOT NULL,
  `toko_cabang` int(11) NOT NULL,
  PRIMARY KEY (`toko_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO toko VALUES("1","Pusat IT","Surabaya Jawa Timur","RT 1/ RW 2 Jln Pahlawan Pertama","031890876","085780956487","senimankoding@gmail.com","8","12","1","0","11","0");



CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_ref` text NOT NULL,
  `transfer_count` int(11) NOT NULL,
  `transfer_date` varchar(250) NOT NULL,
  `transfer_date_time` varchar(250) NOT NULL,
  `transfer_terima_date` varchar(250) NOT NULL,
  `transfer_terima_date_time` varchar(250) NOT NULL,
  `transfer_note` text NOT NULL,
  `transfer_pengirim_cabang` int(11) NOT NULL,
  `transfer_penerima_cabang` int(11) NOT NULL,
  `transfer_id_tipe_keluar` int(11) NOT NULL,
  `transfer_id_tipe_masuk` int(11) NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `transfer_user` int(11) NOT NULL,
  `transfer_user_penerima` int(11) NOT NULL,
  `transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO transfer VALUES("1","2021111001","1","2021-11-10","10 November 2021 10:35:35 pm","2021-11-10","10 November 2021 10:38:43 pm","Transfer Dari Gudang Pusat","0","1","0","1","2","3","16","0");



CREATE TABLE `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpk_transfer_barang_id` int(11) NOT NULL,
  `tpk_barang_id` int(11) NOT NULL,
  `tpk_kode_slug` varchar(500) NOT NULL,
  `tpk_qty` int(11) NOT NULL,
  `tpk_ref` text NOT NULL,
  `tpk_date` varchar(11) NOT NULL,
  `tpk_date_time` varchar(500) NOT NULL,
  `tpk_barang_option_sn` int(11) NOT NULL,
  `tpk_barang_sn_id` int(11) NOT NULL,
  `tpk_barang_sn_desc` varchar(500) NOT NULL,
  `tpk_user` int(11) NOT NULL,
  `tpk_pengirim_cabang` int(11) NOT NULL,
  `tpk_penerima_cabang` int(11) NOT NULL,
  `tpk_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO transfer_produk_keluar VALUES("1","54","54","BRG-001","2","2021111001","2021-11-10","10 November 2021 10:35:15 pm","0","0","0","3","0","1","0");
INSERT INTO transfer_produk_keluar VALUES("2","53","53","12345678","2","2021111001","2021-11-10","10 November 2021 10:35:15 pm","0","0","0","3","0","1","0");



CREATE TABLE `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpm_kode_slug` text NOT NULL,
  `tpm_qty` int(11) NOT NULL,
  `tpm_ref` text NOT NULL,
  `tpm_date` varchar(250) NOT NULL,
  `tpm_date_time` varchar(250) NOT NULL,
  `tpm_barang_option_sn` int(11) NOT NULL,
  `tpm_barang_sn_id` int(11) NOT NULL,
  `tpm_barang_sn_desc` varchar(500) NOT NULL,
  `tpm_user` int(11) NOT NULL,
  `tpm_pengirim_cabang` int(11) NOT NULL,
  `tpm_penerima_cabang` int(11) NOT NULL,
  `tpm_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tsc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nama` varchar(500) NOT NULL,
  `user_no_hp` varchar(250) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_create` varchar(250) NOT NULL,
  `user_level` varchar(250) NOT NULL,
  `user_status` varchar(250) NOT NULL,
  `user_cabang` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("3","Seniman Koding","086798890000","Surabaya","senimankoding@gmail.com","6afd3b745ca3190e8b318e043a28c239","30 March 2020 9:17:00 pm","super admin","1","0");
INSERT INTO user VALUES("5","Doni Asrul Afandi","085780956487","Surabaya","doniasrulafandi@gmail.com","bccb26dc1e77cc8047cb3b6385b96bf2","08 April 2020 3:40:08 pm","admin","1","0");
INSERT INTO user VALUES("7","Naga Afandi ","086798890000","Surabaya","superadmin@senimankoding.com","550e1bafe077ff0b0b67f4e32f29d751","16 April 2020 9:31:04 pm","super admin","0","0");
INSERT INTO user VALUES("8","Doni Afandi","085780956487","Surabaya","admin@senimankoding.com","6afd3b745ca3190e8b318e043a28c239","16 April 2020 9:32:06 pm","admin","1","0");
INSERT INTO user VALUES("12","Kurir Pusat Budi","082299878989","Kediri jln pahlawan","kurir@senimankoding.com","6afd3b745ca3190e8b318e043a28c239","18 August 2021 5:21:01 pm","kurir","1","0");
INSERT INTO user VALUES("13","Rinto","08229908789","Surabaya Jawa Timur","kurir2@senimankoding.com","bccb26dc1e77cc8047cb3b6385b96bf2","19 August 2021 5:53:02 pm","kurir","1","0");
INSERT INTO user VALUES("14","Pak Sucripto","08229978909","Surabaya Jawa Timur Indonesia","kurir3@senimankoding.com","6afd3b745ca3190e8b318e043a28c239","21 August 2021 10:38:10 am","kurir","1","0");
INSERT INTO user VALUES("15","Kasir","087654567809","Surabaya","kasir@senimankoding.com","6afd3b745ca3190e8b318e043a28c239","04 September 2021 1:31:34 pm","kasir","1","0");
INSERT INTO user VALUES("16","Bayu","0890987876567","Banyumas","fanindyabayu@gmail.com","14e1b600b1fd579f47433b88e8d85291","28 June 2023 4:02:02 pm","super admin","1","0");

