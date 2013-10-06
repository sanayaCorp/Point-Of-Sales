/*
Navicat MySQL Data Transfer

Source Server         : server
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : dbtoko

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-10-03 23:49:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tblitemjenis`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemjenis`;
CREATE TABLE `tblitemjenis` (
  `Jenis` varchar(10) NOT NULL,
  `NamaJenis` varchar(50) DEFAULT NULL,
  `DefPilihan` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Jenis`),
  CONSTRAINT `FK_Jenis` FOREIGN KEY (`Jenis`) REFERENCES `tblitem` (`Jenis`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemjenis
-- ----------------------------

-- ----------------------------
-- Table structure for `tblitemsatuan`
-- ----------------------------
DROP TABLE IF EXISTS `tblitemsatuan`;
CREATE TABLE `tblitemsatuan` (
  `Satuan` varchar(10) NOT NULL,
  `NamaSatuan` varchar(50) DEFAULT NULL,
  `DefPilihan` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Satuan`),
  CONSTRAINT `FK_Satuan` FOREIGN KEY (`Satuan`) REFERENCES `tblitem` (`Satuan`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblitemsatuan
-- ----------------------------
