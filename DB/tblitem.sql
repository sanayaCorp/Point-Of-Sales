/*
Navicat MySQL Data Transfer

Source Server         : server
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : dbtoko

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-10-03 23:49:45
*/

Create Database dbToko;
Use dbToko;

SET FOREIGN_KEY_CHECKS=0;

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
  `StatusItem` varchar(20) DEFAULT NULL,
  `Supplier` varchar(20) DEFAULT NULL,
  `Supplier2` varchar(20) DEFAULT NULL,
  `Supplier3` varchar(20) DEFAULT NULL,
  `StatusProduk` varchar(20) DEFAULT NULL,
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
  `SistemHJ` varchar(1) DEFAULT NULL,
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
  PRIMARY KEY (`NoItem`),
  KEY `FK_Satuan` (`Satuan`),
  KEY `Jenis` (`Jenis`)
  /*
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
  CONSTRAINT `FK_Item_Retur_Jual_Detail` FOREIGN KEY (`NoItem`) REFERENCES `tblreturjualdetail` (`NoTransaksi`) ON DELETE NO ACTION ON UPDATE CASCADE
  */
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitem
-- ----------------------------
