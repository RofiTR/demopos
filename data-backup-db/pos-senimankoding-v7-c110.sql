-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Des 2022 pada 07.08
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-senimankoding-v7-c110`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
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
  `barang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barang_id`, `barang_kode`, `barang_kode_slug`, `barang_kode_count`, `barang_nama`, `barang_harga_beli`, `barang_harga`, `barang_harga_grosir_1`, `barang_harga_grosir_2`, `barang_harga_s2`, `barang_harga_grosir_1_s2`, `barang_harga_grosir_2_s2`, `barang_harga_s3`, `barang_harga_grosir_1_s3`, `barang_harga_grosir_2_s3`, `barang_stock`, `barang_tanggal`, `barang_kategori_id`, `kategori_id`, `barang_satuan_id`, `satuan_id`, `satuan_id_2`, `satuan_id_3`, `satuan_isi_1`, `satuan_isi_2`, `satuan_isi_3`, `barang_deskripsi`, `barang_option_sn`, `barang_terjual`, `barang_cabang`) VALUES
(74, '534645745', '534645745', 17, 'Kabel VGA', '', '2000', 0, 0, 0, 0, 0, 0, 0, 0, '20', '08 January 2022 1:49:18 pm', 8, '8', '3', '3', 0, 0, 1, 0, 0, 'Kabel VGA Terbaik', 0, 5, 0),
(75, '754875856', '754875856', 18, 'CAPASITOR FAN MC 2,5 mF', '', '50000', 0, 0, 0, 0, 0, 0, 0, 0, '2', '14 March 2022 11:14:02 am', 8, '8', '3', '3', 0, 0, 1, 0, 0, 'CAPASITOR FAN MC 2,5 mF', 0, 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_sn`
--

CREATE TABLE `barang_sn` (
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `channel_pembayaran`
--

CREATE TABLE `channel_pembayaran` (
  `cp_id` int(11) NOT NULL,
  `cp_name` varchar(500) NOT NULL,
  `cp_status` int(11) NOT NULL,
  `cp_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `channel_pembayaran`
--

INSERT INTO `channel_pembayaran` (`cp_id`, `cp_name`, `cp_status`, `cp_cabang`) VALUES
(3, 'BCA', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_category` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_tlpn`, `customer_email`, `customer_alamat`, `customer_create`, `customer_status`, `customer_category`, `customer_cabang`) VALUES
(0, 'Customer Umum', '', '', '', '', '1', 0, 0),
(1, 'Dari Marketplace', '', '', '', '', '1', 0, 0),
(5, 'Asrul', '085678900987', '', 'Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kec. Kenjeran, Kota SBY, Jawa Timur 60129', '11 April 2020 1:35:37 pm', '1', 0, 0),
(7, 'Raka Abdi', '086782121212', 'abdi@gmail.com', 'Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kenjeran, Kota SBY, Jawa Timur 60129', '12 April 2020 1:00:07 pm', '1', 0, 0),
(9, 'Erlang Abadi', '0822998768', '', 'Kantor Pusat PT UBS â€“ PT Untung Bersama Sejahtera: Alamat: Jl. Kenjeran No 395-399 Surabaya 60134 Jawa Timur.', '18 August 2021 7:21:43 pm', '1', 0, 0),
(10, 'Pak Budi', '085780956487', '', 'Jl. KENJERAN No. 440 Desa Gading Kec. TambaksariKota Surabaya', '19 August 2021 6:05:44 pm', '1', 0, 0),
(11, 'Doni Afandi', '082299078642', '', 'Jl Lebak Jaya kenjeran Surabaya Jawa Timur', '25 September 2021 11:03:53 am', '1', 1, 0),
(13, 'Customer Umum', '', '', '', '', '1', 0, 0),
(15, 'Customer Umum', '', '', '', '', '1', 0, 0),
(16, 'Customer Umum', '', '', '', '', '1', 0, 0),
(17, 'Customer Umum', '', '', '', '', '1', 0, 0),
(18, 'Customer Umum', '', '', '', '', '1', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekspedisi`
--

CREATE TABLE `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ekspedisi`
--

INSERT INTO `ekspedisi` (`ekspedisi_id`, `ekspedisi_nama`, `ekspedisi_status`, `ekspedisi_cabang`) VALUES
(2, 'JNE', '1', 0),
(3, 'TIKI', '1', 0),
(4, 'POS', '1', 0),
(5, 'JNE Cabang', '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense`
--

CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL,
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
  `expense_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expense`
--

INSERT INTO `expense` (`expense_id`, `expense_name`, `expense_penerima`, `expense_date`, `expense_create`, `expense_desc`, `expense_metode`, `expense_total_tagihan`, `expense_total_dibayar`, `expense_total_sisa`, `expense_date_edit`, `expense_user_edit`, `expense_cabang`) VALUES
(2, 'Biaya Internet', 'Bossnet', '2022-12-08', 3, 'Bossnet Bossnet', 3, 210000, 200000, -10000, '2022-12-08', 3, 0),
(3, 'Biaya Listrik', 'PLN', '2022-12-08', 3, 'Datang ke PLN', 0, 150000, 150000, 0, '', 0, 0),
(4, 'Biaya Beli Perlengkapan Batu bata', 'Toko Surya Abadi', '2022-12-10', 3, 'Biaya Beli Perlengkapan Batu bata Biaya Beli Perlengkapan Batu bata', 3, 100000, 100000, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang`
--

CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hutang`
--

INSERT INTO `hutang` (`hutang_id`, `hutang_invoice`, `hutang_invoice_parent`, `hutang_date`, `hutang_date_time`, `hutang_kasir`, `hutang_nominal`, `hutang_tipe_pembayaran`, `hutang_cabang`) VALUES
(1, '654654454362425', '20220107130', '2021-01-07', '07 January 2022 7:51:09 pm', 3, '1000', 0, 0),
(2, '54543ttertr', '20220107230', '2020-01-07', '07 January 2022 8:20:56 pm', 3, '200', 0, 0),
(3, '654654454362425', '20220107130', '2022-05-20', '20 May 2022 10:51:06 am', 3, '4000', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang_kembalian`
--

CREATE TABLE `hutang_kembalian` (
  `hl_id` int(11) NOT NULL,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hutang_kembalian`
--

INSERT INTO `hutang_kembalian` (`hl_id`, `hl_invoice`, `hl_invoice_parent`, `hl_date`, `hl_date_time`, `hl_nominal`, `hl_cabang`) VALUES
(1, '643645745890', '20211110430', '2021-11-10', '10 November 2021 6:53:09 pm', '5000', 0),
(2, '654654454362425', '20220107130', '2022-05-20', '20 May 2022 10:51:06 am', '0', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
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
  `invoice_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `penjualan_invoice`, `penjualan_invoice_count`, `invoice_tgl`, `invoice_customer`, `invoice_customer_category`, `invoice_kurir`, `invoice_status_kurir`, `invoice_tipe_transaksi`, `invoice_total_beli`, `invoice_total`, `invoice_pajak`, `invoice_pajak_nominal`, `invoice_ongkir`, `invoice_diskon`, `invoice_sub_total`, `invoice_bayar`, `invoice_kembali`, `invoice_kasir`, `invoice_date`, `invoice_date_year_month`, `invoice_date_edit`, `invoice_kasir_edit`, `invoice_total_beli_lama`, `invoice_total_lama`, `invoice_ongkir_lama`, `invoice_sub_total_lama`, `invoice_bayar_lama`, `invoice_kembali_lama`, `invoice_marketplace`, `invoice_ekspedisi`, `invoice_no_resi`, `invoice_date_selesai_kurir`, `invoice_piutang`, `invoice_piutang_dp`, `invoice_piutang_jatuh_tempo`, `invoice_piutang_lunas`, `invoice_draft`, `invoice_cabang`) VALUES
(8, '202212071', '1', '07 December 2022 4:33:42 pm', '0', 0, '0', 1, 3, 0, 2000, '11', '220', 0, 0, 2220, 2500, 280, '3', '2022-12-07', '2022-12', ' ', ' ', 0, '2000', 0, 2220, '2500', '280', '', 0, '-', '-', 0, '0', '0', 0, 0, 0),
(9, '202212102', '2', '10 December 2022 1:00:49 pm', '0', 0, '0', 1, 3, 0, 6000, '11', '660', 0, 0, 6660, 6700, 40, '3', '2022-12-10', '2022-12', ' ', ' ', 0, '6000', 0, 6660, '6700', '40', '', 0, '-', '-', 0, '0', '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice_pembelian`
--

CREATE TABLE `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL,
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
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invoice_pembelian`
--

INSERT INTO `invoice_pembelian` (`invoice_pembelian_id`, `pembelian_invoice`, `pembelian_invoice_parent`, `invoice_tgl`, `invoice_supplier`, `invoice_total`, `invoice_bayar`, `invoice_kembali`, `invoice_kasir`, `invoice_date`, `invoice_date_edit`, `invoice_kasir_edit`, `invoice_total_lama`, `invoice_bayar_lama`, `invoice_kembali_lama`, `invoice_hutang`, `invoice_hutang_dp`, `invoice_hutang_jatuh_tempo`, `invoice_hutang_lunas`, `invoice_tipe_transaksi`, `invoice_pembelian_cabang`) VALUES
(1, '654654454362425', '20220107130', '07 January 2022 7:50:32 pm', '4', 5000, 5000, 0, '3                                  ', '2022-01-07', ' ', ' ', '5000', '0', '-5000', 0, '0', '2022-02-07', 1, 0, 0),
(2, '54543ttertr', '20220107230', '07 January 2022 8:20:09 pm', '4', 1600, 200, -1400, '3                                  ', '2022-01-07', ' ', ' ', '1600', '0', '-1600', 1, '0', '2022-02-08', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice_pembelian_number`
--

CREATE TABLE `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invoice_pembelian_number`
--

INSERT INTO `invoice_pembelian_number` (`invoice_pembelian_number_id`, `invoice_pembelian_number_input`, `invoice_pembelian_number_parent`, `invoice_pembelian_number_user`, `invoice_pembelian_number_delete`, `invoice_pembelian_cabang`) VALUES
(9, '1234567876', '2021071912', '3', '202107191230', 0),
(10, '6436457457', '202110233', '3', '20211023330', 0),
(11, '6436457457', '202110233', '3', '20211023331', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_status`, `kategori_cabang`) VALUES
(4, 'Keyboard', '1', 0),
(6, 'Monitor', '1', 0),
(8, 'Kabel', '1', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL,
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
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang_draft`
--

CREATE TABLE `keranjang_draft` (
  `keranjang_draf_id` int(11) NOT NULL,
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
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang_pembelian`
--

CREATE TABLE `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang_transfer`
--

CREATE TABLE `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL,
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
  `keranjang_transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laba_bersih`
--

CREATE TABLE `laba_bersih` (
  `lb_id` int(11) NOT NULL,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laba_bersih`
--

INSERT INTO `laba_bersih` (`lb_id`, `lb_pendapatan_lain`, `lb_pengeluaran_gaji`, `lb_pengeluaran_listrik`, `lb_pengeluaran_tlpn_internet`, `lb_pengeluaran_perlengkapan_toko`, `lb_pengeluaran_biaya_penyusutan`, `lb_pengeluaran_bensin`, `lb_pengeluaran_tak_terduga`, `lb_pengeluaran_lain`, `lb_cabang`) VALUES
(1, 500000, 400000, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `pembelian_id` int(11) NOT NULL,
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
  `pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`pembelian_id`, `pembelian_barang_id`, `barang_id`, `barang_qty`, `keranjang_id_kasir`, `pembelian_invoice`, `pembelian_invoice_parent`, `pembelian_date`, `barang_qty_lama`, `barang_qty_lama_parent`, `barang_harga_beli`, `pembelian_cabang`) VALUES
(1, 72, 72, 10, 3, '654654454362425', '20220107130', '2022-01-07', '10', '10', 500, 0),
(2, 72, 72, 4, 3, '54543ttertr', '20220107230', '2022-01-07', '4', '4', 400, 0);

--
-- Trigger `pembelian`
--
DELIMITER $$
CREATE TRIGGER `barang_pembelian` AFTER INSERT ON `pembelian` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_stock = barang_stock+new.barang_qty
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tidak_jado` AFTER DELETE ON `pembelian` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
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
  `penjualan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `penjualan_barang_id`, `barang_id`, `barang_qty`, `barang_qty_keranjang`, `barang_qty_konversi_isi`, `keranjang_satuan`, `keranjang_harga_beli`, `keranjang_harga`, `keranjang_harga_parent`, `keranjang_harga_edit`, `keranjang_id_kasir`, `penjualan_invoice`, `penjualan_date`, `penjualan_date_year_month`, `barang_qty_lama`, `barang_qty_lama_parent`, `barang_option_sn`, `barang_sn_id`, `barang_sn_desc`, `invoice_customer_category`, `penjualan_cabang`) VALUES
(1, 75, 75, 1, 1, 1, 3, '', '50000', 50000, 0, 3, '202209011', '2022-09-01', '2022-09', '1', '1', 0, 0, '0', 0, 0),
(9, 74, 74, 1, 1, 1, 3, '', '2000', 2000, 0, 3, '202212071', '2022-12-07', '2022-12', '1', '1', 0, 0, '0', 0, 0),
(10, 74, 74, 3, 3, 1, 3, '', '2000', 2000, 0, 3, '202212102', '2022-12-10', '2022-12', '3', '3', 0, 0, '0', 0, 0);

--
-- Trigger `penjualan`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `penjualan` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.barang_qty_keranjang,
 barang_terjual = barang_terjual - OLD.barang_qty_keranjang
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.barang_qty_keranjang
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `piutang`
--

CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `piutang_kembalian`
--

CREATE TABLE `piutang_kembalian` (
  `pl_id` int(11) NOT NULL,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `piutang_kembalian`
--

INSERT INTO `piutang_kembalian` (`pl_id`, `pl_invoice`, `pl_date`, `pl_date_time`, `pl_nominal`, `pl_cabang`) VALUES
(1, '202111102', '2021-11-10', '10 November 2021 6:43:57 pm', '1000', 0),
(2, '2022040611', '2022-04-06', '06 April 2022 12:51:37 pm', '0', 0),
(3, '202201072', '2022-04-06', '06 April 2022 1:28:07 pm', '500', 0),
(4, '202201088', '2022-04-07', '07 April 2022 9:25:10 am', '0', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur`
--

CREATE TABLE `retur` (
  `retur_id` int(11) NOT NULL,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `retur`
--

INSERT INTO `retur` (`retur_id`, `retur_barang_id`, `retur_invoice`, `retur_admin_id`, `retur_date`, `retur_alasan`, `barang_stock`) VALUES
(12, '5', '202004209', '3', '2020-04-20', ' ', 1),
(13, '5', '202004209', '3', '2020-04-20', ' ', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `satuan_id` int(11) NOT NULL,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`satuan_id`, `satuan_nama`, `satuan_status`, `satuan_cabang`) VALUES
(2, 'PCS', '1', 0),
(3, 'Unit', '1', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_opname`
--

CREATE TABLE `stock_opname` (
  `stock_opname_id` int(11) NOT NULL,
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
  `stock_opname_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_opname`
--

INSERT INTO `stock_opname` (`stock_opname_id`, `stock_opname_date_create`, `stock_opname_datetime_create`, `stock_opname_date_proses`, `stock_opname_user_create`, `stock_opname_user_eksekusi`, `stock_opname_status`, `stock_opname_user_upload`, `stock_opname_date_upload`, `stock_opname_datetime_upload`, `stock_opname_tipe`, `stock_opname_cabang`) VALUES
(7, '2022-09-17', '17 September 2022 3:30:34 pm', '2022-09-17', 3, 3, 1, 3, '2022-09-17', '17 September 2022 4:41:26 pm', 0, 0),
(8, '2022-09-17', '17 September 2022 4:21:32 pm', '2022-09-17', 3, 3, 1, 3, '2022-09-17', '17 September 2022 4:21:48 pm', 1, 0),
(15, '2022-09-17', '17 September 2022 7:56:57 pm', '2022-09-17', 3, 3, 1, 3, '2022-09-17', '17 September 2022 7:57:17 pm', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_opname_hasil`
--

CREATE TABLE `stock_opname_hasil` (
  `soh_id` int(11) NOT NULL,
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
  `soh_barang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_opname_hasil`
--

INSERT INTO `stock_opname_hasil` (`soh_id`, `soh_stock_opname_id`, `soh_barang_id`, `soh_barang_kode`, `soh_barang_stock_system`, `soh_stock_fisik`, `soh_selisih`, `soh_note`, `soh_date`, `soh_datetime`, `soh_tipe`, `soh_user`, `soh_barang_cabang`) VALUES
(29, 8, 75, '754875856', 2, 1, 1, 'Produk lebih ', '2022-09-17', '17 September 2022 4:21:48 pm', 1, 3, 0),
(30, 8, 74, '534645745', 4, 5, -1, 'Produk lebih tes', '2022-09-17', '17 September 2022 4:21:48 pm', 1, 3, 0),
(36, 7, 75, '754875856', 1, 2, -1, '', '2022-09-17', '17 September 2022 4:39:37 pm', 0, 3, 0),
(41, 15, 74, '534645745', 20, 21, 1, '', '2022-09-17', '17 September 2022 7:57:06 pm', 0, 3, 0);

--
-- Trigger `stock_opname_hasil`
--
DELIMITER $$
CREATE TRIGGER `opname_delete` AFTER DELETE ON `stock_opname_hasil` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = OLD.soh_barang_stock_system
 WHERE
 barang_id = OLD.soh_barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `opname_insert` AFTER INSERT ON `stock_opname_hasil` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=NEW.soh_stock_fisik
    WHERE barang_id = NEW.soh_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_nama`, `supplier_wa`, `supplier_alamat`, `supplier_company`, `supplier_status`, `supplier_create`, `supplier_cabang`) VALUES
(2, 'Doni Afandi', '085780978675', 'Surabaya', 'PT Pemasok Produk', 1, '14 November 2020 7:31:51 pm', 0),
(4, 'Afandi', '085787654321', 'Surabaya', 'PT ABC', 1, '15 November 2020 7:46:06 pm', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `terlaris`
--

CREATE TABLE `terlaris` (
  `terlaris_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `terlaris`
--

INSERT INTO `terlaris` (`terlaris_id`, `barang_id`, `barang_terjual`) VALUES
(309, 67, 2),
(310, 68, 3),
(311, 69, 1),
(312, 68, 1),
(313, 65, 3),
(314, 69, 1),
(315, 71, 24),
(316, 71, 48),
(317, 72, 4),
(318, 72, 2),
(319, 73, 0),
(320, 73, 1),
(321, 72, 1),
(322, 72, 2),
(323, 72, 1),
(324, 72, 1),
(325, 72, 1),
(326, 72, 1),
(327, 72, 1),
(328, 72, 1),
(329, 72, 1),
(330, 75, 1),
(331, 75, 1),
(332, 75, 1),
(333, 71, 1),
(334, 71, 1),
(335, 71, 1),
(336, 71, 1),
(337, 71, 1),
(338, 71, 1),
(339, 75, 1),
(340, 74, 1),
(341, 74, 1),
(342, 72, 1),
(343, 75, 1),
(344, 74, 1),
(345, 74, 1),
(346, 74, 1),
(347, 75, 1),
(348, 75, 1),
(349, 74, 1),
(350, 75, 1),
(351, 74, 1),
(352, 73, 1),
(353, 72, 24),
(354, 72, 24),
(355, 75, 1),
(356, 74, 1),
(357, 74, 1),
(358, 74, 1),
(359, 75, 1),
(360, 75, 1),
(361, 75, 1),
(362, 74, 2),
(363, 74, 1),
(364, 74, 3);

--
-- Trigger `terlaris`
--
DELIMITER $$
CREATE TRIGGER `barang_terlaris` AFTER INSERT ON `terlaris` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_terjual = barang_terjual+new.barang_terjual
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `toko_id` int(11) NOT NULL,
  `toko_nama` varchar(500) NOT NULL,
  `toko_kota` varchar(250) NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_tlpn` varchar(250) NOT NULL,
  `toko_wa` varchar(250) NOT NULL,
  `toko_email` varchar(500) NOT NULL,
  `toko_print` int(11) NOT NULL,
  `toko_status` int(11) NOT NULL,
  `toko_ongkir` int(11) NOT NULL,
  `toko_pajak` varchar(500) NOT NULL,
  `toko_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`toko_id`, `toko_nama`, `toko_kota`, `toko_alamat`, `toko_tlpn`, `toko_wa`, `toko_email`, `toko_print`, `toko_status`, `toko_ongkir`, `toko_pajak`, `toko_cabang`) VALUES
(1, 'Pusat IT', 'Surabaya Jawa Timur', 'RT 1/ RW 2 Jln Pahlawan Pertama', '031890876', '085780956487', 'senimankoding@gmail.com', 8, 1, 0, '11', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer`
--

CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL,
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
  `transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transfer`
--

INSERT INTO `transfer` (`transfer_id`, `transfer_ref`, `transfer_count`, `transfer_date`, `transfer_date_time`, `transfer_terima_date`, `transfer_terima_date_time`, `transfer_note`, `transfer_pengirim_cabang`, `transfer_penerima_cabang`, `transfer_id_tipe_keluar`, `transfer_id_tipe_masuk`, `transfer_status`, `transfer_user`, `transfer_user_penerima`, `transfer_cabang`) VALUES
(1, '2021111001', 1, '2021-11-10', '10 November 2021 10:35:35 pm', '2021-11-10', '10 November 2021 10:38:43 pm', 'Transfer Dari Gudang Pusat', 0, 1, 0, 1, 2, 3, 16, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer_produk_keluar`
--

CREATE TABLE `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL,
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
  `tpk_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transfer_produk_keluar`
--

INSERT INTO `transfer_produk_keluar` (`tpk_id`, `tpk_transfer_barang_id`, `tpk_barang_id`, `tpk_kode_slug`, `tpk_qty`, `tpk_ref`, `tpk_date`, `tpk_date_time`, `tpk_barang_option_sn`, `tpk_barang_sn_id`, `tpk_barang_sn_desc`, `tpk_user`, `tpk_pengirim_cabang`, `tpk_penerima_cabang`, `tpk_cabang`) VALUES
(1, 54, 54, 'BRG-001', 2, '2021111001', '2021-11-10', '10 November 2021 10:35:15 pm', 0, 0, '0', 3, 0, 1, 0),
(2, 53, 53, '12345678', 2, '2021111001', '2021-11-10', '10 November 2021 10:35:15 pm', 0, 0, '0', 3, 0, 1, 0);

--
-- Trigger `transfer_produk_keluar`
--
DELIMITER $$
CREATE TRIGGER `batal_transfer` AFTER DELETE ON `transfer_produk_keluar` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.tpk_qty
 WHERE
 barang_id = OLD.tpk_barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengeluaran_barang` AFTER INSERT ON `transfer_produk_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.tpk_qty
    WHERE barang_id = NEW.tpk_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer_produk_masuk`
--

CREATE TABLE `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL,
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
  `tpm_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `transfer_produk_masuk`
--
DELIMITER $$
CREATE TRIGGER `tambah_stock_cabang` AFTER INSERT ON `transfer_produk_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock+NEW.tpm_qty
    WHERE barang_kode_slug = NEW.tpm_kode_slug && barang_cabang = NEW.tpm_penerima_cabang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer_select_cabang`
--

CREATE TABLE `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(500) NOT NULL,
  `user_no_hp` varchar(250) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_create` varchar(250) NOT NULL,
  `user_level` varchar(250) NOT NULL,
  `user_status` varchar(250) NOT NULL,
  `user_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_no_hp`, `user_alamat`, `user_email`, `user_password`, `user_create`, `user_level`, `user_status`, `user_cabang`) VALUES
(3, 'Seniman Koding', '086798890000', 'Surabaya', 'senimankoding@gmail.com', '6afd3b745ca3190e8b318e043a28c239', '30 March 2020 9:17:00 pm', 'super admin', '1', 0),
(5, 'Doni Asrul Afandi', '085780956487', 'Surabaya', 'doniasrulafandi@gmail.com', 'bccb26dc1e77cc8047cb3b6385b96bf2', '08 April 2020 3:40:08 pm', 'admin', '1', 0),
(7, 'Naga Afandi ', '086798890000', 'Surabaya', 'superadmin@senimankoding.com', '550e1bafe077ff0b0b67f4e32f29d751', '16 April 2020 9:31:04 pm', 'super admin', '0', 0),
(8, 'Doni Afandi', '085780956487', 'Surabaya', 'admin@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '16 April 2020 9:32:06 pm', 'admin', '1', 0),
(12, 'Kurir Pusat Budi', '082299878989', 'Kediri jln pahlawan', 'kurir@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '18 August 2021 5:21:01 pm', 'kurir', '1', 0),
(13, 'Rinto', '08229908789', 'Surabaya Jawa Timur', 'kurir2@senimankoding.com', 'bccb26dc1e77cc8047cb3b6385b96bf2', '19 August 2021 5:53:02 pm', 'kurir', '1', 0),
(14, 'Pak Sucripto', '08229978909', 'Surabaya Jawa Timur Indonesia', 'kurir3@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '21 August 2021 10:38:10 am', 'kurir', '1', 0),
(15, 'Kasir', '087654567809', 'Surabaya', 'kasir@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '04 September 2021 1:31:34 pm', 'kasir', '1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `barang_sn`
--
ALTER TABLE `barang_sn`
  ADD PRIMARY KEY (`barang_sn_id`);

--
-- Indexes for table `channel_pembayaran`
--
ALTER TABLE `channel_pembayaran`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  ADD PRIMARY KEY (`ekspedisi_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indexes for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  ADD PRIMARY KEY (`hl_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  ADD PRIMARY KEY (`invoice_pembelian_id`);

--
-- Indexes for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  ADD PRIMARY KEY (`invoice_pembelian_number_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_draft`
--
ALTER TABLE `keranjang_draft`
  ADD PRIMARY KEY (`keranjang_draf_id`);

--
-- Indexes for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  ADD PRIMARY KEY (`keranjang_transfer_id`);

--
-- Indexes for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  ADD PRIMARY KEY (`lb_id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`pembelian_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indexes for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `stock_opname`
--
ALTER TABLE `stock_opname`
  ADD PRIMARY KEY (`stock_opname_id`);

--
-- Indexes for table `stock_opname_hasil`
--
ALTER TABLE `stock_opname_hasil`
  ADD PRIMARY KEY (`soh_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `terlaris`
--
ALTER TABLE `terlaris`
  ADD PRIMARY KEY (`terlaris_id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`toko_id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  ADD PRIMARY KEY (`tpk_id`);

--
-- Indexes for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  ADD PRIMARY KEY (`tpm_id`);

--
-- Indexes for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  ADD PRIMARY KEY (`tsc_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `barang_sn`
--
ALTER TABLE `barang_sn`
  MODIFY `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `channel_pembayaran`
--
ALTER TABLE `channel_pembayaran`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  MODIFY `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  MODIFY `hl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  MODIFY `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  MODIFY `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keranjang_draft`
--
ALTER TABLE `keranjang_draft`
  MODIFY `keranjang_draf_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  MODIFY `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  MODIFY `lb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `piutang`
--
ALTER TABLE `piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `retur`
--
ALTER TABLE `retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `satuan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stock_opname`
--
ALTER TABLE `stock_opname`
  MODIFY `stock_opname_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `stock_opname_hasil`
--
ALTER TABLE `stock_opname_hasil`
  MODIFY `soh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `terlaris`
--
ALTER TABLE `terlaris`
  MODIFY `terlaris_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;
--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `toko_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  MODIFY `tpk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  MODIFY `tpm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  MODIFY `tsc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
