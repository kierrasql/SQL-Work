DROP SCHEMA IF EXISTS `business` ;

-- -----------------------------------------------------
-- Schema business
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `business` DEFAULT CHARACTER SET latin1 ;
USE `business` ;

-- -----------------------------------------------------
-- Table `2012_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `2012_data` ;

CREATE TABLE IF NOT EXISTS `2012_data` (
  `Month` INT(11) NULL DEFAULT NULL,
  `Country` TEXT NULL DEFAULT NULL,
  `Region` TEXT NULL DEFAULT NULL,
  `State` TEXT NULL DEFAULT NULL,
  `Product` TEXT NULL DEFAULT NULL,
  `PerUnitPrice` INT(11) NULL DEFAULT NULL,
  `Quantity` INT(11) NULL DEFAULT NULL,
  `OrderTotal` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `2013_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `2013_data` ;

CREATE TABLE IF NOT EXISTS `2013_data` (
  `Month` INT(11) NULL DEFAULT NULL,
  `Region` TEXT NULL DEFAULT NULL,
  `Customer_ID` INT(11) NULL DEFAULT NULL,
  `Product` TEXT NULL DEFAULT NULL,
  `PerUnitPrice` INT(11) NULL DEFAULT NULL,
  `Quantity1` INT(11) NULL DEFAULT NULL,
  `Quantity2` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `2014_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `2014_data` ;

CREATE TABLE IF NOT EXISTS `2014_data` (
  `Month` INT(11) NULL DEFAULT NULL,
  `Country` TEXT NULL DEFAULT NULL,
  `Region` TEXT NULL DEFAULT NULL,
  `State` TEXT NULL DEFAULT NULL,
  `Product` TEXT NULL DEFAULT NULL,
  `PerUnitPrice` INT(11) NULL DEFAULT NULL,
  `Quantity` INT(11) NULL DEFAULT NULL,
  `OrderSubtotal` INT(11) NULL DEFAULT NULL,
  `QuantityDiscount` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema business
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `business` ;

-- -----------------------------------------------------
-- Schema business
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `business` DEFAULT CHARACTER SET latin1 ;
USE `business` ;

-- -----------------------------------------------------
-- Table `2012_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `2012_data` ;

CREATE TABLE IF NOT EXISTS `2012_data` (
  `Month` INT(11) NULL DEFAULT NULL,
  `Country` TEXT NULL DEFAULT NULL,
  `Region` TEXT NULL DEFAULT NULL,
  `State` TEXT NULL DEFAULT NULL,
  `Product` TEXT NULL DEFAULT NULL,
  `PerUnitPrice` INT(11) NULL DEFAULT NULL,
  `Quantity` INT(11) NULL DEFAULT NULL,
  `OrderTotal` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `2013_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `2013_data` ;

CREATE TABLE IF NOT EXISTS `2013_data` (
  `Month` INT(11) NULL DEFAULT NULL,
  `Region` TEXT NULL DEFAULT NULL,
  `Customer_ID` INT(11) NULL DEFAULT NULL,
  `Product` TEXT NULL DEFAULT NULL,
  `PerUnitPrice` INT(11) NULL DEFAULT NULL,
  `Quantity1` INT(11) NULL DEFAULT NULL,
  `Quantity2` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `2014_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `2014_data` ;

CREATE TABLE IF NOT EXISTS `2014_data` (
  `Month` INT(11) NULL DEFAULT NULL,
  `Country` TEXT NULL DEFAULT NULL,
  `Region` TEXT NULL DEFAULT NULL,
  `State` TEXT NULL DEFAULT NULL,
  `Product` TEXT NULL DEFAULT NULL,
  `PerUnitPrice` INT(11) NULL DEFAULT NULL,
  `Quantity` INT(11) NULL DEFAULT NULL,
  `OrderSubtotal` INT(11) NULL DEFAULT NULL,
  `QuantityDiscount` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

DROP TABLE if exists business_unit ; 
DROP TABLE if exists product_BU ; 

-- A business unit is division of the company

CREATE TABLE Business_Unit (
BU_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
BU_Name VARCHAR(25),
BU_Designation VARCHAR(25)
);

-- Each product is assigned to one business unit for a given year

CREATE TABLE Product_BU (
Prod_BU_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
BU_Name VARCHAR(25),
Product_Name VARCHAR(25),
Prod_BU_Year INT(4)
);

