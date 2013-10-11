/*
Navicat MySQL Data Transfer

Source Server         : server
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : dbtoko

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-10-07 07:28:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tblakunkas`
-- ----------------------------
DROP TABLE IF EXISTS `tblakunkas`;
CREATE TABLE `tblakunkas` (
  `KodeAkun` varchar(20) NOT NULL,
  `NamaAkun` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KodeAkun`),
  CONSTRAINT `FK_Akun_Kas_Masuk` FOREIGN KEY (`KodeAkun`) REFERENCES `tblkaskeluarmasuk` (`KodeAkun`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblakunkas
-- ----------------------------

-- ----------------------------
-- Table structure for `tbldummyorder`
-- ----------------------------
DROP TABLE IF EXISTS `tbldummyorder`;
CREATE TABLE `tbldummyorder` (
  `NoItem` varchar(20) DEFAULT NULL,
  `MinimalOrder` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbldummyorder
-- ----------------------------

-- ----------------------------
-- Table structure for `tblhpik`
-- ----------------------------
DROP TABLE IF EXISTS `tblhpik`;
CREATE TABLE `tblhpik` (
  `IDTable` varchar(50) NOT NULL,
  `NoTransaksi` varchar(50) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `TipeIK` varchar(5) DEFAULT NULL,
  `KodeItem` varchar(40) DEFAULT NULL,
  `Jumlah` double DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  PRIMARY KEY (`IDTable`,`NoTransaksi`),
  KEY `IDTable` (`IDTable`),
  KEY `KodeItem` (`KodeItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblhpik
-- ----------------------------

-- ----------------------------
-- Table structure for `tblhpim`
-- ----------------------------
DROP TABLE IF EXISTS `tblhpim`;
CREATE TABLE `tblhpim` (
  `IDTable` varchar(50) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoTransaksi` varchar(50) DEFAULT NULL,
  `TipeIM` varchar(5) DEFAULT NULL,
  `RefID` varchar(50) DEFAULT NULL,
  `KodeItem` varchar(40) DEFAULT NULL,
  `Jumlah` double DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `ReturM` double DEFAULT NULL,
  `Keluar` double DEFAULT NULL,
  `ReturK` double DEFAULT NULL,
  `Sisa` double DEFAULT NULL,
  PRIMARY KEY (`IDTable`),
  KEY `KodeItem` (`KodeItem`),
  CONSTRAINT `FK_HPIM` FOREIGN KEY (`IDTable`) REFERENCES `tblhpik` (`IDTable`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblhpim
-- ----------------------------

-- ----------------------------
-- Table structure for `tblhutangdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblhutangdetail`;
CREATE TABLE `tblhutangdetail` (
  `NoTransaksi` varchar(20) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoPembelian` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `JumlahHutang` double DEFAULT NULL,
  `JumlahBayar` double DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`,`NoBaris`),
  KEY `NoTransaksi` (`NoTransaksi`),
  KEY `FK_NoPembelian_Hutang_Detail` (`NoPembelian`),
  CONSTRAINT `FK_NoPembelian_Hutang_Detail` FOREIGN KEY (`NoPembelian`) REFERENCES `tblpembelianheader` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblhutangdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblhutangheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblhutangheader`;
CREATE TABLE `tblhutangheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoSupplier` varchar(20) DEFAULT NULL,
  `Note` varchar(50) DEFAULT NULL,
  `TotalBayar` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `IDTabel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  KEY `NoSupplier` (`NoSupplier`),
  CONSTRAINT `FK_Hutang_Header` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblhutangdetail` (`NoTransaksi`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblhutangheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblinfodb`
-- ----------------------------
DROP TABLE IF EXISTS `tblinfodb`;
CREATE TABLE `tblinfodb` (
  `VersiDB` varchar(20) NOT NULL,
  `VersiUpdate` varchar(10) NOT NULL,
  PRIMARY KEY (`VersiDB`,`VersiUpdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblinfodb
-- ----------------------------
INSERT INTO `tblinfodb` VALUES ('IPOS-3.3', '0002');

-- ----------------------------
-- Table structure for `tblitem`
-- ----------------------------
DROP TABLE IF EXISTS `tblitem`;
CREATE TABLE `tblitem` (
  `NoItem` varchar(40) NOT NULL,
  `KodeBarCode` varchar(40) DEFAULT NULL,
  `NamaItem` varchar(100) DEFAULT NULL,
  `Jenis` varchar(10) DEFAULT NULL,
  `Satuan` varchar(10) DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `HargaJual` double DEFAULT NULL,
  `TotalPokok` double DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `StokMin` double DEFAULT NULL,
  `StatusItem` smallint(6) DEFAULT '0',
  `Supplier` varchar(20) DEFAULT NULL,
  `Supplier2` varchar(20) DEFAULT NULL,
  `Supplier3` varchar(20) DEFAULT NULL,
  `StatusProduk` smallint(6) DEFAULT '0',
  `Gambar` varchar(100) DEFAULT NULL,
  `Note` mediumtext,
  `DiskonP` double DEFAULT NULL,
  `DiskonN` double DEFAULT NULL,
  `PerDis1` datetime DEFAULT NULL,
  `PerDis2` datetime DEFAULT NULL,
  `HPUpdate` double DEFAULT NULL,
  `PrHargaL1` double DEFAULT NULL,
  `PrHargaL2` double DEFAULT NULL,
  `PrHargaL3` double DEFAULT NULL,
  `HargaPokok2` double DEFAULT NULL,
  `SupplierAkhir` varchar(20) DEFAULT NULL,
  `TanggalAkhir` datetime DEFAULT NULL,
  `Inv_IdAwal` varchar(50) DEFAULT NULL,
  `Inv_JmlAwal` double DEFAULT NULL,
  `Inv_HrgAwal` double DEFAULT NULL,
  `Inv_TglAwal` datetime DEFAULT NULL,
  `SistemHJ` smallint(1) DEFAULT '0',
  `QtyDari2` double DEFAULT NULL,
  `QtyDari3` double DEFAULT NULL,
  `QtySampai1` double DEFAULT NULL,
  `QtySampai2` double DEFAULT NULL,
  `Proc1` double DEFAULT NULL,
  `Proc2` double DEFAULT NULL,
  `Proc3` double DEFAULT NULL,
  `HargaL1` double DEFAULT NULL,
  `HargaL2` double DEFAULT NULL,
  `HargaL3` double DEFAULT NULL,
  `HargaJual2` double DEFAULT NULL,
  `HargaJual3` double DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NoItem`),
  KEY `Jenis` (`Jenis`),
  KEY `FK_Item_Satuan` (`Satuan`),
  CONSTRAINT `FK_HPIK_Item` FOREIGN KEY (`NoItem`) REFERENCES `tblhpik` (`KodeItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_HPIM_Item` FOREIGN KEY (`NoItem`) REFERENCES `tblhpim` (`KodeItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Kasir_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblkasirdetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_KDetail` FOREIGN KEY (`NoItem`) REFERENCES `tblitemkdetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_MDetail` FOREIGN KEY (`NoItem`) REFERENCES `tblitemmdetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Order_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblorderdetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Order_Jual_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblorderjualdetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Pembelian_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblpembeliandetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Penjualan_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblpenjualandetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Retur_Beli_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblreturbelidetail` (`NoItem`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Retur_Jual_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblreturjualdetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Item_Satuan` FOREIGN KEY (`Satuan`) REFERENCES `tblitemsatuan` (`Satuan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Jenis` FOREIGN KEY (`Jenis`) REFERENCES `tblitemjenis` (`Jenis`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitem
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemjenis`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemjenis`;
CREATE TABLE `tblitemjenis` (
  `Jenis` varchar(10) NOT NULL,
  `NamaJenis` varchar(50) DEFAULT NULL,
  `DefPilihan` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemjenis
-- ----------------------------
INSERT INTO `tblitemjenis` VALUES ('JSA', 'JASA', null);
INSERT INTO `tblitemjenis` VALUES ('MKN', 'MAKANAN', null);
INSERT INTO `tblitemjenis` VALUES ('MNM', 'MINUMAN', null);

-- ----------------------------
-- Table structure for `tblitemkdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemkdetail`;
CREATE TABLE `tblitemkdetail` (
  `NoTransaksi` varchar(50) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `TypeTr` varchar(20) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Note` mediumtext,
  PRIMARY KEY (`NoTransaksi`,`NoBaris`),
  KEY `NoItem` (`NoItem`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemkdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemkheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemkheader`;
CREATE TABLE `tblitemkheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `TotalQty` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Note` mediumtext,
  `User` varchar(20) DEFAULT NULL,
  `IDTabel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  CONSTRAINT `FK_Item_KHeader` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblitemkdetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemkheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemmdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemmdetail`;
CREATE TABLE `tblitemmdetail` (
  `NoTransaksi` varchar(50) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `TypeTr` varchar(20) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Note` mediumtext,
  PRIMARY KEY (`NoTransaksi`,`NoBaris`),
  KEY `NoItem` (`NoItem`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemmdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemmheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemmheader`;
CREATE TABLE `tblitemmheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `TotalQty` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Note` mediumtext,
  `User` varchar(20) DEFAULT NULL,
  `IDTabel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  CONSTRAINT `FK_Item_MHeader` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblitemmdetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemmheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemrekap`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemrekap`;
CREATE TABLE `tblitemrekap` (
  `Periode` varchar(50) NOT NULL,
  `NoItem` varchar(40) NOT NULL,
  `QtyAwal` double DEFAULT NULL,
  `QtyMasuk` double DEFAULT NULL,
  `QtyKeluar` double DEFAULT NULL,
  `TotAwal` double DEFAULT NULL,
  `TotMasuk` double DEFAULT NULL,
  `TotKeluar` double DEFAULT NULL,
  PRIMARY KEY (`Periode`,`NoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemrekap
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemsa`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemsa`;
CREATE TABLE `tblitemsa` (
  `NoTransaksi` varchar(20) NOT NULL,
  `NoItem` varchar(40) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `Jumlah` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`,`NoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemsa
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemsatuan`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemsatuan`;
CREATE TABLE `tblitemsatuan` (
  `Satuan` varchar(10) NOT NULL,
  `NamaSatuan` varchar(50) DEFAULT NULL,
  `DefPilihan` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Satuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemsatuan
-- ----------------------------
INSERT INTO `tblitemsatuan` VALUES ('BOX', 'BOX', null);
INSERT INTO `tblitemsatuan` VALUES ('DUS', 'DUS', null);
INSERT INTO `tblitemsatuan` VALUES ('KG', 'KG', null);
INSERT INTO `tblitemsatuan` VALUES ('METER', 'METER', null);
INSERT INTO `tblitemsatuan` VALUES ('PCS', 'PCS', null);

-- ----------------------------
-- Table structure for `tblitemstok`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemstok`;
CREATE TABLE `tblitemstok` (
  `NoUrut` double NOT NULL,
  `NoItem` varchar(40) NOT NULL,
  `TglUpdate` datetime DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Stok` double DEFAULT NULL,
  `Keluar` double DEFAULT NULL,
  `Sisa` double DEFAULT NULL,
  PRIMARY KEY (`NoUrut`,`NoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemstok
-- ----------------------------

-- ----------------------------
-- Table structure for `tblkasirdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblkasirdetail`;
CREATE TABLE `tblkasirdetail` (
  `NoTransaksi` varchar(20) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `HargaJual` double DEFAULT NULL,
  `Potongan` double DEFAULT NULL,
  `HargaSP` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `QtyRetur` double DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`,`NoBaris`),
  KEY `NoItem` (`NoItem`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblkasirdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblkasirheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblkasirheader`;
CREATE TABLE `tblkasirheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `Note` mediumtext,
  `TotalQty` double DEFAULT NULL,
  `TotalJual` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `TotalDiskon` double DEFAULT NULL,
  `Pajak` double DEFAULT NULL,
  `TotalPajak` double DEFAULT NULL,
  `TotalAkhir` double DEFAULT NULL,
  `Pembayaran` double DEFAULT NULL,
  `SisaPembayaran` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `TotalRetur` double DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  CONSTRAINT `FK_Kasier_Header` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblkasirdetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblkasirheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblkaskeluarmasuk`
-- ----------------------------
DROP TABLE IF EXISTS `tblkaskeluarmasuk`;
CREATE TABLE `tblkaskeluarmasuk` (
  `KodeKM` varchar(20) NOT NULL,
  `NoBukti` varchar(30) NOT NULL,
  `KodeAkun` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `Uraian` varchar(50) DEFAULT NULL,
  `Masuk` double DEFAULT NULL,
  `Keluar` double DEFAULT NULL,
  `Jenis` varchar(10) DEFAULT NULL,
  `Trans` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`KodeKM`,`NoBukti`,`KodeAkun`),
  KEY `KodeAkun` (`KodeAkun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblkaskeluarmasuk
-- ----------------------------

-- ----------------------------
-- Table structure for `tblopnamedetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblopnamedetail`;
CREATE TABLE `tblopnamedetail` (
  `NoOpname` varchar(50) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `QtySekarang` double DEFAULT NULL,
  `QtySelisih` double DEFAULT NULL,
  PRIMARY KEY (`NoOpname`,`NoBaris`),
  KEY `NoOpname` (`NoOpname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblopnamedetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblopnameheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblopnameheader`;
CREATE TABLE `tblopnameheader` (
  `NoOpname` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `Note` mediumtext,
  `User` varchar(20) DEFAULT NULL,
  `IDTabel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoOpname`),
  CONSTRAINT `FK_Opname_Header` FOREIGN KEY (`NoOpname`) REFERENCES `tblopnamedetail` (`NoOpname`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblopnameheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblorderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblorderdetail`;
CREATE TABLE `tblorderdetail` (
  `NoOrder` varchar(20) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `Quantity` float DEFAULT NULL,
  `QtyTerima` float DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  PRIMARY KEY (`NoOrder`,`NoBaris`),
  KEY `NoItem` (`NoItem`),
  KEY `NoOrder` (`NoOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblorderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblorderheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblorderheader`;
CREATE TABLE `tblorderheader` (
  `NoOrder` varchar(20) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `TglKirim` datetime DEFAULT NULL,
  `NoSupplier` varchar(20) DEFAULT NULL,
  `Note` mediumtext,
  `TotalQty` float DEFAULT NULL,
  `TotalTerima` float DEFAULT NULL,
  `TotalOrder` double DEFAULT NULL,
  `User` varchar(20) DEFAULT NULL,
  `IDTabel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoOrder`),
  KEY `NoSupplier` (`NoSupplier`),
  CONSTRAINT `FK_Order_Detail` FOREIGN KEY (`NoOrder`) REFERENCES `tblorderdetail` (`NoOrder`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Order_Pembelian_Header` FOREIGN KEY (`NoOrder`) REFERENCES `tblpembelianheader` (`NoOrder`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblorderheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblorderjualdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblorderjualdetail`;
CREATE TABLE `tblorderjualdetail` (
  `NoOrder` varchar(20) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `QtyTerima` double DEFAULT NULL,
  `HargaJual` double DEFAULT NULL,
  `Potongan` double DEFAULT NULL,
  `HargaSP` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  PRIMARY KEY (`NoOrder`,`NoBaris`),
  KEY `NoItem` (`NoItem`),
  KEY `NoOrder` (`NoOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblorderjualdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblorderjualheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblorderjualheader`;
CREATE TABLE `tblorderjualheader` (
  `NoOrder` varchar(20) NOT NULL DEFAULT '',
  `Status` varchar(10) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoSales` varchar(10) DEFAULT NULL,
  `NoPelanggan` varchar(20) DEFAULT NULL,
  `Note` mediumtext,
  `TotalQty` double DEFAULT NULL,
  `TotalTerima` double DEFAULT NULL,
  `TotalJual` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `TotalDiskon` double DEFAULT NULL,
  `Pajak` double DEFAULT NULL,
  `TotalPajak` double DEFAULT NULL,
  `TotalAkhir` double DEFAULT NULL,
  `Pembayaran` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `IDTabel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NoOrder`),
  KEY `NoSales` (`NoSales`),
  KEY `NoPelanggan` (`NoPelanggan`),
  CONSTRAINT `FK_Order_Jual_Detail` FOREIGN KEY (`NoOrder`) REFERENCES `tblorderjualdetail` (`NoOrder`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Penjualan_Header` FOREIGN KEY (`NoOrder`) REFERENCES `tblpenjualanheader` (`NoOrder`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblorderjualheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpelanggan`
-- ----------------------------
DROP TABLE IF EXISTS `tblpelanggan`;
CREATE TABLE `tblpelanggan` (
  `NoPelanggan` varchar(20) NOT NULL,
  `NamaPelanggan` varchar(100) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Kota` varchar(50) DEFAULT NULL,
  `Propinsi` varchar(50) DEFAULT NULL,
  `KodePost` varchar(20) DEFAULT NULL,
  `Negara` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `KontakPerson` varchar(50) DEFAULT NULL,
  `Note` mediumtext,
  `Potongan` double DEFAULT NULL,
  `TipePot` varchar(2) DEFAULT NULL,
  `LavelHarga` varchar(10) DEFAULT NULL,
  `KGrup` varchar(10) DEFAULT NULL,
  `LimitPiutang` double DEFAULT NULL,
  PRIMARY KEY (`NoPelanggan`),
  KEY `KGrup` (`KGrup`),
  CONSTRAINT `FK_Order_Jual_Header` FOREIGN KEY (`NoPelanggan`) REFERENCES `tblorderjualheader` (`NoPelanggan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Pelanggan_Jual_Header` FOREIGN KEY (`NoPelanggan`) REFERENCES `tblpenjualanheader` (`NoPelanggan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Pelanggan_SA` FOREIGN KEY (`NoPelanggan`) REFERENCES `tblpelanggansa` (`NoPelanggan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Piutang_Header` FOREIGN KEY (`NoPelanggan`) REFERENCES `tblpiutangheader` (`NoPelanggan`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpelanggangrup`
-- ----------------------------
DROP TABLE IF EXISTS `tblpelanggangrup`;
CREATE TABLE `tblpelanggangrup` (
  `KGrup` varchar(10) NOT NULL,
  `Grup` varchar(50) DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  PRIMARY KEY (`KGrup`),
  CONSTRAINT `FK_PelangganGroup` FOREIGN KEY (`KGrup`) REFERENCES `tblpelanggan` (`KGrup`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpelanggangrup
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpelanggansa`
-- ----------------------------
DROP TABLE IF EXISTS `tblpelanggansa`;
CREATE TABLE `tblpelanggansa` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `TanggalJT` datetime DEFAULT NULL,
  `Jumlah` double DEFAULT NULL,
  `Bayar` double DEFAULT NULL,
  `NoPelanggan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  KEY `NoPelanggan` (`NoPelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpelanggansa
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpembeliandetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblpembeliandetail`;
CREATE TABLE `tblpembeliandetail` (
  `NoTransaksi` varchar(20) DEFAULT NULL,
  `NoBaris` int(11) DEFAULT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `QtyOrder` double DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `QtyRetur` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Potongan` double DEFAULT NULL,
  `HargaSP` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `StsOrder` bit(1) DEFAULT NULL,
  `IDInv` varchar(50) DEFAULT NULL,
  KEY `NoItem` (`NoItem`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpembeliandetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpembelianheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblpembelianheader`;
CREATE TABLE `tblpembelianheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `CaraBayar` varchar(10) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoOrder` varchar(20) DEFAULT NULL,
  `TanggalOrder` datetime DEFAULT NULL,
  `NoSupplier` varchar(20) DEFAULT NULL,
  `Note` mediumtext,
  `TotalQtyOrder` double DEFAULT NULL,
  `TotalQty` double DEFAULT NULL,
  `TotalBeli` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `TotalDiskon` double DEFAULT NULL,
  `Pajak` double DEFAULT NULL,
  `TotalPajak` double DEFAULT NULL,
  `TotalAkhir` double DEFAULT NULL,
  `TotalRetur` double DEFAULT NULL,
  `Pembayaran` double DEFAULT NULL,
  `TanggalJT` datetime DEFAULT NULL,
  `TanggalLunas` datetime DEFAULT NULL,
  `JumlahBayar` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `IDTabel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  KEY `NoOrder` (`NoOrder`),
  KEY `NoSupplier` (`NoSupplier`),
  CONSTRAINT `FK_NoTransaksi_Beli_Header` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblpembeliandetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpembelianheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpenjualandetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblpenjualandetail`;
CREATE TABLE `tblpenjualandetail` (
  `NoTransaksi` varchar(20) DEFAULT NULL,
  `NoBaris` int(11) DEFAULT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `QtyOrder` double DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `QtyRetur` double DEFAULT NULL,
  `HargaJual` double DEFAULT NULL,
  `Potongan` double DEFAULT NULL,
  `HargaSP` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `StsOrder` bit(1) DEFAULT NULL,
  KEY `NoItem` (`NoItem`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpenjualandetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpenjualanheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblpenjualanheader`;
CREATE TABLE `tblpenjualanheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `CaraBayar` varchar(30) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoOrder` varchar(20) DEFAULT NULL,
  `TanggalOrder` datetime DEFAULT NULL,
  `NoSales` varchar(10) DEFAULT NULL,
  `NoPelanggan` varchar(20) DEFAULT NULL,
  `Note` mediumtext,
  `TotalQty` double DEFAULT NULL,
  `TotalQtyOrder` double DEFAULT NULL,
  `TotalJual` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `TotalDiskon` double DEFAULT NULL,
  `Pajak` double DEFAULT NULL,
  `TotalPajak` double DEFAULT NULL,
  `BiayaLain` double DEFAULT NULL,
  `TotalAkhir` double DEFAULT NULL,
  `TotalRetur` double DEFAULT NULL,
  `Pembayaran` double DEFAULT NULL,
  `TanggalJT` datetime DEFAULT NULL,
  `TanggalLunas` datetime DEFAULT NULL,
  `JumlahBayar` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `IDTabel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  KEY `NoSales` (`NoSales`),
  KEY `NoOrder` (`NoOrder`),
  KEY `NoPelanggan` (`NoPelanggan`),
  CONSTRAINT `FK_NoTransaksi_Jual_Header` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblpenjualandetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpenjualanheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblperusahaan`
-- ----------------------------
DROP TABLE IF EXISTS `tblperusahaan`;
CREATE TABLE `tblperusahaan` (
  `Nama` varchar(50) DEFAULT NULL,
  `Alamat` varchar(70) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Logo` varchar(200) DEFAULT NULL,
  `FileData` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblperusahaan
-- ----------------------------
INSERT INTO `tblperusahaan` VALUES ('PROGRAM TOKO 3.3', 'Jl. Nusa Indah Gg II No 11A Denpasar-Bali', '0361-3086044', '-', null, null);

-- ----------------------------
-- Table structure for `tblpiutangdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblpiutangdetail`;
CREATE TABLE `tblpiutangdetail` (
  `NoTransaksi` varchar(20) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoPenjualan` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `JumlahPiutang` double DEFAULT NULL,
  `JumlahBayar` double DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`,`NoBaris`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpiutangdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpiutangheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblpiutangheader`;
CREATE TABLE `tblpiutangheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoPelanggan` varchar(20) DEFAULT NULL,
  `Note` mediumtext,
  `TotalBayar` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `IDTabel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  KEY `NoPelanggan` (`NoPelanggan`),
  CONSTRAINT `FK_NoTransaksi_Piutang_Header` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblpiutangdetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblpiutangheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblrekap`
-- ----------------------------
DROP TABLE IF EXISTS `tblrekap`;
CREATE TABLE `tblrekap` (
  `PeriodeRekap` varchar(20) NOT NULL,
  `KodeAkun` varchar(20) NOT NULL,
  `SaldoAwal` double DEFAULT NULL,
  `Debet` double DEFAULT NULL,
  `Kredit` double DEFAULT NULL,
  `SaldoAkhir` double DEFAULT NULL,
  PRIMARY KEY (`PeriodeRekap`,`KodeAkun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblrekap
-- ----------------------------

-- ----------------------------
-- Table structure for `tblreturbelidetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblreturbelidetail`;
CREATE TABLE `tblreturbelidetail` (
  `NoTransaksi` varchar(20) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `Potongan` double DEFAULT NULL,
  `HargaSP` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`,`NoBaris`),
  KEY `NoItem` (`NoItem`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblreturbelidetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblreturbeliheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblreturbeliheader`;
CREATE TABLE `tblreturbeliheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoBeli` varchar(20) DEFAULT NULL,
  `NoSupplier` varchar(20) DEFAULT NULL,
  `Note` mediumtext,
  `TotalQty` double DEFAULT NULL,
  `TotalBeli` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `TotalDiskon` double DEFAULT NULL,
  `Pajak` double DEFAULT NULL,
  `TotalPajak` double DEFAULT NULL,
  `TotalAkhir` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `IDTabel` varchar(20) DEFAULT NULL,
  `CatatDiKas` int(11) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  KEY `NoSupplier` (`NoSupplier`),
  CONSTRAINT `FK_NoTransaksi_Retur_Beli_Header` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblreturbelidetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblreturbeliheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblreturjualdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tblreturjualdetail`;
CREATE TABLE `tblreturjualdetail` (
  `NoTransaksi` varchar(20) NOT NULL,
  `NoBaris` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `HargaPokok` double DEFAULT NULL,
  `HargaJual` double DEFAULT NULL,
  `Potongan` double DEFAULT NULL,
  `HargaSP` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`,`NoBaris`),
  KEY `NoTransaksi` (`NoTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblreturjualdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tblreturjualheader`
-- ----------------------------
DROP TABLE IF EXISTS `tblreturjualheader`;
CREATE TABLE `tblreturjualheader` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoJual` varchar(20) DEFAULT NULL,
  `NoSales` varchar(10) DEFAULT NULL,
  `NoPelanggan` varchar(20) DEFAULT NULL,
  `Note` mediumtext,
  `TotalQty` double DEFAULT NULL,
  `TotalJual` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `TotalDiskon` double DEFAULT NULL,
  `Pajak` double DEFAULT NULL,
  `TotalPajak` double DEFAULT NULL,
  `TotalAkhir` double DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `IDTabel` varchar(50) DEFAULT NULL,
  `JenisJual` varchar(3) DEFAULT NULL,
  `CatatDiKas` int(11) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`),
  KEY `NoSales` (`NoSales`),
  CONSTRAINT `FK_NoTransaksi_Retur_Jual_Header` FOREIGN KEY (`NoTransaksi`) REFERENCES `tblreturjualdetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblreturjualheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tblsales`
-- ----------------------------
DROP TABLE IF EXISTS `tblsales`;
CREATE TABLE `tblsales` (
  `NoSales` varchar(10) NOT NULL,
  `NamaSales` varchar(50) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Kota` varchar(100) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `KomisiJual` double DEFAULT NULL,
  `DefPilihan` bit(1) DEFAULT NULL,
  `KomisiNominal` double DEFAULT NULL,
  `OpPilHitung` varchar(3) DEFAULT NULL,
  `OpPilSistemKomisi` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`NoSales`),
  CONSTRAINT `FK_Sales_Order` FOREIGN KEY (`NoSales`) REFERENCES `tblorderjualheader` (`NoSales`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Sales_Penjualan_Header` FOREIGN KEY (`NoSales`) REFERENCES `tblpenjualanheader` (`NoSales`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Sales_Retur_Jual_Header` FOREIGN KEY (`NoSales`) REFERENCES `tblreturjualheader` (`NoSales`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblsales
-- ----------------------------

-- ----------------------------
-- Table structure for `tblsetting`
-- ----------------------------
DROP TABLE IF EXISTS `tblsetting`;
CREATE TABLE `tblsetting` (
  `JTPembayaran` smallint(6) DEFAULT NULL,
  `AkunKasBeli` varchar(20) DEFAULT NULL,
  `AkunKasRBeli` varchar(20) DEFAULT NULL,
  `AkunKasHutang` varchar(20) DEFAULT NULL,
  `AkunKasJual` varchar(20) DEFAULT NULL,
  `AkunKasRJual` varchar(20) DEFAULT NULL,
  `AkunKasPiutang` varchar(20) DEFAULT NULL,
  `AkunKasKasir` varchar(20) DEFAULT NULL,
  `AkunBiayaOp` varchar(20) DEFAULT NULL,
  `PengingatHP` bit(1) DEFAULT NULL,
  `SistemHargaPokok` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblsetting
-- ----------------------------
INSERT INTO `tblsetting` VALUES ('10', 'KAS1', 'KAS1', 'KAS1', 'KAS1', 'KAS1', 'KAS1', 'KAS1', 'KAS2', '', '2');

-- ----------------------------
-- Table structure for `tblsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `tblsupplier`;
CREATE TABLE `tblsupplier` (
  `NoSupplier` varchar(20) NOT NULL,
  `NamaSupplier` varchar(100) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Kota` varchar(50) DEFAULT NULL,
  `Propinsi` varchar(50) DEFAULT NULL,
  `KodePost` varchar(20) DEFAULT NULL,
  `Negara` varchar(50) DEFAULT NULL,
  `Telephone` varchar(60) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `NamaBank` varchar(60) DEFAULT NULL,
  `NoAccount` varchar(40) DEFAULT NULL,
  `AtasNama` varchar(50) DEFAULT NULL,
  `KontakPerson` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Note` mediumtext,
  PRIMARY KEY (`NoSupplier`),
  CONSTRAINT `FK_Supplier` FOREIGN KEY (`NoSupplier`) REFERENCES `tblsuppliersa` (`NoSupplier`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Supplier_Beli_Header` FOREIGN KEY (`NoSupplier`) REFERENCES `tblpembelianheader` (`NoSupplier`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Supplier_Hutang_Header` FOREIGN KEY (`NoSupplier`) REFERENCES `tblhutangheader` (`NoSupplier`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Supplier_Order_Header` FOREIGN KEY (`NoSupplier`) REFERENCES `tblorderheader` (`NoSupplier`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_Supplier_Retur_Beli_Header` FOREIGN KEY (`NoSupplier`) REFERENCES `tblreturbeliheader` (`NoSupplier`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblsupplier
-- ----------------------------

-- ----------------------------
-- Table structure for `tblsuppliersa`
-- ----------------------------
DROP TABLE IF EXISTS `tblsuppliersa`;
CREATE TABLE `tblsuppliersa` (
  `NoTransaksi` varchar(20) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `TanggalJT` datetime DEFAULT NULL,
  `Jumlah` double DEFAULT NULL,
  `Bayar` double DEFAULT NULL,
  `NoSupplier` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NoTransaksi`,`Tanggal`),
  KEY `NoSupplier` (`NoSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblsuppliersa
-- ----------------------------

-- ----------------------------
-- Table structure for `tbltmpitemrekapdt`
-- ----------------------------
DROP TABLE IF EXISTS `tbltmpitemrekapdt`;
CREATE TABLE `tbltmpitemrekapdt` (
  `KodePeriode` varchar(10) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `NoItem` varchar(40) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `NoTransaksi` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `Masuk` double DEFAULT NULL,
  `Keluar` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `UserCreate` varchar(20) DEFAULT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Sts` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`KodePeriode`,`NoUrut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbltmpitemrekapdt
-- ----------------------------
INSERT INTO `tbltmpitemrekapdt` VALUES ('201001', '1', '003', null, '-', 'Saldo Awal', '0', '0', '5', 'admin', null, 'SA');

-- ----------------------------
-- Table structure for `tbltmpitemrekaphd`
-- ----------------------------
DROP TABLE IF EXISTS `tbltmpitemrekaphd`;
CREATE TABLE `tbltmpitemrekaphd` (
  `KodePeriode` varchar(10) NOT NULL,
  `NoItem` varchar(40) NOT NULL,
  `HargaPokok` double DEFAULT NULL,
  `SaldoAwal` double DEFAULT NULL,
  `TotalMasuk` double DEFAULT NULL,
  `TotalKeluar` double DEFAULT NULL,
  `SaldoAkhir` double DEFAULT NULL,
  `UserCreate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KodePeriode`,`NoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbltmpitemrekaphd
-- ----------------------------
INSERT INTO `tbltmpitemrekaphd` VALUES ('200807', '002', '900', '0', '10', '2', '8', 'cokeka');
INSERT INTO `tbltmpitemrekaphd` VALUES ('201001', '003', '460', '5', '0', '0', '5', 'admin');

-- ----------------------------
-- Table structure for `tbltmpkasrekap`
-- ----------------------------
DROP TABLE IF EXISTS `tbltmpkasrekap`;
CREATE TABLE `tbltmpkasrekap` (
  `KodePeriode` varchar(10) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `KodeAkun` varchar(20) NOT NULL,
  `NoBukti` varchar(50) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `Debet` double DEFAULT NULL,
  `Kredit` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `UserCreate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KodePeriode`,`NoUrut`,`KodeAkun`,`NoBukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbltmpkasrekap
-- ----------------------------
INSERT INTO `tbltmpkasrekap` VALUES ('201001', '1', 'KAS1', '10000000001', '2010-01-12 00:32:22', 'Penjualan Kasir', '27220', '0', '0', 'admin');
INSERT INTO `tbltmpkasrekap` VALUES ('201001', '1', 'KAS1', 'BL10000000001', '2010-01-11 00:00:00', 'Pembelian Tunai', '0', '101485.71', '0', 'admin');
INSERT INTO `tbltmpkasrekap` VALUES ('201001', '1', 'KAS1', 'BL10000000002', '2010-01-12 00:00:00', 'Pembelian Tunai', '0', '24000', '0', 'admin');
INSERT INTO `tbltmpkasrekap` VALUES ('201001', '1', 'KAS1', 'PJ10000000001', '2010-01-11 22:57:16', 'Penjualan Tunai', '32221', '0', '0', 'admin');
INSERT INTO `tbltmpkasrekap` VALUES ('201001', '1', 'KAS2', '-', null, 'Dari Saldo Periode Sebelumnya', '0', '0', '0', 'admin');
INSERT INTO `tbltmpkasrekap` VALUES ('201001', '2', 'KAS2', 'PJ10000000001', '2010-01-11 22:57:16', 'Biaya Lain Transaksi', '0', '20000', '-20000', 'admin');
INSERT INTO `tbltmpkasrekap` VALUES ('201001', '3', 'KAS2', 'PJ10000000002', '2010-01-11 23:57:49', 'Biaya Lain Transaksi', '0', '5000', '-25000', 'admin');

-- ----------------------------
-- Table structure for `tbluser`
-- ----------------------------
DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE `tbluser` (
  `UserID` varchar(20) NOT NULL,
  `NamaUser` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `HakAkses` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  CONSTRAINT `FK_User_Akses` FOREIGN KEY (`UserID`) REFERENCES `tbluserakses` (`UserID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbluser
-- ----------------------------
INSERT INTO `tbluser` VALUES ('admin', 'administrator', 'admin', 'Admin');

-- ----------------------------
-- Table structure for `tbluserakses`
-- ----------------------------
DROP TABLE IF EXISTS `tbluserakses`;
CREATE TABLE `tbluserakses` (
  `UserID` varchar(20) NOT NULL,
  `AksesID` varchar(20) NOT NULL,
  `mOpen` bit(1) DEFAULT NULL,
  `mNew` bit(1) DEFAULT NULL,
  `mEdit` bit(1) DEFAULT NULL,
  `mDel` bit(1) DEFAULT NULL,
  PRIMARY KEY (`UserID`,`AksesID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbluserakses
-- ----------------------------
INSERT INTO `tbluserakses` VALUES ('admin', 'mBackupRestore', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mBeli', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mDataPerusahaan', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mHapusDB', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mHargaJual', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mHutang', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mIKeluar', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mIMasuk', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mImportData', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mItem', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mJual', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mKas', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mKasir', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mKasirPot', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mKasKM', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mLapHutangPiutang', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mLapLaba', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mLapMaster', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mLapPembelian', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mLapPenjualan', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mLapPersediaan', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mLinkDatabase', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mOpname', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mOrder', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mOrderJ', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mPelanggan', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mPerbaikanSaldo', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mPiutang', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mReturBeli', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mReturJual', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mSales', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mSettingProgram', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mShowHP', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mShowHPIM', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mSupplier', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mTampilKasir', '', '', '', '');
INSERT INTO `tbluserakses` VALUES ('admin', 'mUser', '', '', '', '');

-- ----------------------------
-- View structure for `vgrfjualbulan`
-- ----------------------------
DROP VIEW IF EXISTS `vgrfjualbulan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgrfjualbulan` AS select `tblpenjualanheader`.`Tanggal` AS `Tanggal`,sum(`tblpenjualanheader`.`TotalAkhir`) AS `TotalAkhir` from `tblpenjualanheader` where ((date_format(`tblpenjualanheader`.`Tanggal`,'yyyy') = '2008') and (`tblpenjualanheader`.`Status` = 'Penjualan')) group by `tblpenjualanheader`.`Tanggal` union select `tblkasirheader`.`Tanggal` AS `Tanggal`,sum(`tblkasirheader`.`TotalAkhir`) AS `TotalAkhir` from `tblkasirheader` where (date_format(`tblkasirheader`.`Tanggal`,'yyyy') = '2008') group by `tblkasirheader`.`Tanggal` ;

-- ----------------------------
-- View structure for `vgrfjualhari`
-- ----------------------------
DROP VIEW IF EXISTS `vgrfjualhari`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgrfjualhari` AS select dayofmonth(`tblpenjualanheader`.`Tanggal`) AS `Tgl`,sum(`tblpenjualanheader`.`TotalAkhir`) AS `TotalAkhir` from `tblpenjualanheader` where ((date_format(`tblpenjualanheader`.`Tanggal`,'yyyymm') = '200806') and (`tblpenjualanheader`.`Status` = 'Penjualan')) group by dayofmonth(`tblpenjualanheader`.`Tanggal`) union select dayofmonth(`tblkasirheader`.`Tanggal`) AS `Tgl`,sum(`tblkasirheader`.`TotalAkhir`) AS `TotalAkhir` from `tblkasirheader` where (date_format(`tblkasirheader`.`Tanggal`,'yyyymm') = '200806') group by dayofmonth(`tblkasirheader`.`Tanggal`) ;

-- ----------------------------
-- View structure for `vgrfjualjam`
-- ----------------------------
DROP VIEW IF EXISTS `vgrfjualjam`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgrfjualjam` AS select hour(`tblpenjualanheader`.`Tanggal`) AS `Jam`,count(`tblpenjualanheader`.`NoTransaksi`) AS `Total` from `tblpenjualanheader` where (date_format(`tblpenjualanheader`.`Tanggal`,'YYYYMM') = '200806') group by hour(`tblpenjualanheader`.`Tanggal`) union select hour(`tblkasirheader`.`Tanggal`) AS `Jam`,count(`tblkasirheader`.`NoTransaksi`) AS `Total` from `tblkasirheader` where (date_format(`tblkasirheader`.`Tanggal`,'YYYYMM') = '200806') group by hour(`tblkasirheader`.`Tanggal`) ;

-- ----------------------------
-- View structure for `vsisafifo`
-- ----------------------------
DROP VIEW IF EXISTS `vsisafifo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vsisafifo` AS select `tblhpim`.`KodeItem` AS `KodeItem`,`tblhpim`.`Sisa` AS `Sisa`,`tblhpim`.`Harga` AS `Harga` from `tblhpim` where (`tblhpim`.`Sisa` > 0) ;

-- ----------------------------
-- Procedure structure for `sp_insert_Item`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insert_Item`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_Item`(IN NoItem_ Varchar(40),IN KodeBarCode_ Varchar(40), IN NamaItem_ Varchar(100), IN Jenis_ Varchar(10), IN Satuan_ Varchar(10),IN HargaPokok_ Double, In HargaJual_ Double, In TotalPokok_ Double, IN Quantity_ DOuble, IN StokMin_ Double, IN StatusItem_ Smallint, IN Supplier_ Varchar(20), IN Supplier2_ Varchar(20), In Supplier3_ Varchar(20), IN StatusProduk_ Smallint, IN Gambar_ Varchar(100), IN Note_ mediumText, IN DiskonP_ Double, IN DiskonN_ Double, IN PerDis1_ Double, IN PerDis2_ Double, IN HPUpdate_ Double, IN PrHargaL1_ Double, IN PrHargaL2_ Double, IN PrHargaL3_ Double, IN HargaPokok2_ Double, IN SupplierAkhir_ Varchar(20), IN TanggalAkhir_ Date, IN Inv_IdAwal_ Varchar(40), IN Inv_JmlAwal_ Double, IN Inv_HrgAwal_ Double, IN Inv_TglAwal_ Date, IN SistemHJ_ Smallint, IN QtyDari2_ Double, IN QtyDari3_ Double, IN QtySampai1_ Double, IN QtySampai2_ Double, IN Proc1_ Double, IN Proc2_ Double, IN Proc3_ Double, IN HargaL1_ Double, IN HargaL2_ Double, IN HargaL3_ Double, IN HargaJual2_ Double, IN HargaJual3_ Double, INKeterangan Varchar(100), in Stat_ smallint)
BEGIN
	#Create Tgl 05 October 2013
  #by Afes Oktavianus
  #Tujuan untuk menyimpan data kedalam table Item

  # Stat_  = 1 artinya Tambah Data 
  # Stat_	 = 2 artinya Update Data
  If Stat_ = 1 THEN
     Insert into tblitem(NoItem,KodeBarCode,NamaItem,Jenis,Satuan,HargaPokok,HargaJual,
                         TotalPokok, Quantity, StokMin, StatusItem, Supplier, Supplier2,
                         Supplier3, StatusProduk, Gambar, Note, DiskonP, DiskonN, PerDis1,
												 PerDis2, HPUpdate, PrHargaL1, PrHargaL2, PrHargaL3, HargaPokok2,
                         SupplierAkhir, TanggalAkhir, Inv_IdAwal, Inv_JmlAwal, Inv_HrgAwal,
                         Inv_TglAwal, SistemHJ, QtyDari2, QtyDari3, QtySampai1, QtySampai2,
                         Proc1, Proc2, Proc3, HargaL1, HargaL2, HargaL3, HargaJual2, HargaJual3,
												 Keterangan) VALUES
												 (NoItem_,KodeBarCode_,NamaItem_,Jenis_,Satuan_,HargaPokok_,HargaJual_,
                         TotalPokok_, Quantity_, StokMin_, StatusItem_, Supplier_, Supplier2_,
                         Supplier3_, StatusProduk_, Gambar_, Note_, DiskonP_, DiskonN_, PerDis1_,
												 PerDis2_, HPUpdate_, PrHargaL1_, PrHargaL2_, PrHargaL3_, HargaPokok2_,
                         SupplierAkhir_, TanggalAkhir_, Inv_IdAwal_, Inv_JmlAwal_, Inv_HrgAwal_,
                         Inv_TglAwal_, SistemHJ_, QtyDari2_, QtyDari3_, QtySampai1_, QtySampai2_,
                         Proc1_, Proc2_, Proc3_, HargaL1_, HargaL2_, HargaL3_, HargaJual2_, HargaJual3_,
												 Keterangan_);	
	End If;
  if Stat_ = 2 THEN
     Update tblitem SET  KodeBarCode=KodeBarCode_, NamaItem=NamaItem_, Jenis=Jenis_, Satuan=Satuan_, 
                         HargaPokok=HargaPokok_, HargaJual=HargaJual_, TotalPokok=TotalPokok_, Quantity =Quantity_,
                         StokMin=StokMin_, StatusItem=StatusItem_, Supplier=Supplier_, Supplier2=Supplier2_,
                         Supplier3=Supplier3_, StatusProduk=StatusProduk_, Gambar=Gambar_, Note=NOTe_, DiskonP=DiskonP_, 
                         DiskonN=DiskonN_, PerDis1=PerDis1_, PerDis2=PerDis2_, HPUpdate=HPUpdate_, PrHargaL1=PrHargaL1_, 
                         PrHargaL2=PrHargaL2_, PrHargaL3=PrHargaL3_, HargaPokok2=HargaPokok_, TanggalAkhir=TanggalAkhir_, 
                         Inv_IdAwal=Inv_IdAwal_, Inv_JmlAwal=Inv_JmlAwal_, Inv_HrgAwal=Inv_HrgAwal_, Inv_TglAwal=Inv_TglAwal_, 
                         SistemHJ=SistemHJ_, QtyDari2=QtyDari2_, QtyDari3=QtyDari3_, QtySampai1=QtySampai1_, QtySampai2=QtySampai2_,
                         Proc1=Proc1_, Proc2=Proc2_, Proc3=Proc3_, HargaL1=HargaL1_, HargaL2=HargaL2_, HargaL3=HargaL3_, HargaJual2=HargaJual2_, 
                         HargaJual3=HargaJual3_, Keterangan=Keterangan_ Where NoItem=NoItem_;
	End If;

END
;;
DELIMITER ;
