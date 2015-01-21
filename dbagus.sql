-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 22, 2015 at 01:39 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `dbagus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbadmin`
--

CREATE TABLE IF NOT EXISTS `tbadmin` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadmin`
--

INSERT INTO `tbadmin` (`id`, `username`, `password`, `nama`) VALUES
(1000, 'admin', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbbarang`
--

CREATE TABLE IF NOT EXISTS `tbbarang` (
  `kd_barang` int(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_toko` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tgl_masukbarang` date NOT NULL,
  `tgl_keluarbarang` date NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL,
  PRIMARY KEY  (`kd_barang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbarang`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbkurir`
--

CREATE TABLE IF NOT EXISTS `tbkurir` (
  `kd_kurir` int(50) NOT NULL,
  `nama_kurir` varchar(50) NOT NULL,
  `paket` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  PRIMARY KEY  (`kd_kurir`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbkurir`
--


-- --------------------------------------------------------

--
-- Table structure for table `tblokasi`
--

CREATE TABLE IF NOT EXISTS `tblokasi` (
  `kd_lokasi` int(50) NOT NULL,
  `nama_lokasi` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  PRIMARY KEY  (`kd_lokasi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblokasi`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbpengiriman`
--

CREATE TABLE IF NOT EXISTS `tbpengiriman` (
  `kd_transaksi` int(50) NOT NULL,
  `kd_kurir` varchar(50) NOT NULL,
  `kd_lokasi` varchar(50) NOT NULL,
  `tot_harga` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpengiriman`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbtoko`
--

CREATE TABLE IF NOT EXISTS `tbtoko` (
  `kd_toko` int(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_lokasi` varchar(50) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY  (`kd_toko`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbtoko`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbtransaksi`
--

CREATE TABLE IF NOT EXISTS `tbtransaksi` (
  `kd_transaksi` int(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_toko` varchar(50) NOT NULL,
  `kd_barang` varchar(50) NOT NULL,
  `jmlh_barang` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `sub_totharga` varchar(50) NOT NULL,
  PRIMARY KEY  (`kd_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbtransaksi`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE IF NOT EXISTS `tbuser` (
  `kd_user` int(50) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(50) NOT NULL,
  PRIMARY KEY  (`kd_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10004 ;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`kd_user`, `username`, `nama`, `alamat`, `email`, `password`, `tgl_lahir`, `jk`) VALUES
(10001, 'agus', 'Agus Hermawan', 'JL.Kapten Asmud Lubis', 'pbs.Zoestho@gmail.com', 'agus', '1993-08-10', 'Laki-laki'),
(10003, 'abc', 'abc', 'abc', 'abc', 'abc', '1992-01-01', 'laki-laki');
