-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema workingplace
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `workingplace` ;

-- -----------------------------------------------------
-- Schema workingplace
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `workingplace` DEFAULT CHARACTER SET utf8 ;
USE `workingplace` ;

-- -----------------------------------------------------
-- Table `employees`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `employees` ;

CREATE TABLE IF NOT EXISTS `employees` (
  `idemployees` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Salary` VARCHAR(45) NULL,
  PRIMARY KEY (`idemployees`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
INSERT INTO `workingplace`.`employees` (`idemployees`, `FirstName`, `LastName`, `Salary`) VALUES ('1', 'Kierra', 'Kells', '60,000');
INSERT INTO `workingplace`.`employees` (`idemployees`, `FirstName`, `LastName`, `Salary`) VALUES ('2', 'Sam', 'Lace', '40,000');
INSERT INTO `workingplace`.`employees` (`idemployees`, `FirstName`, `LastName`, `Salary`) VALUES ('3', 'Sarah', 'Tee', '80,000');
INSERT INTO `workingplace`.`employees` (`idemployees`, `FirstName`, `LastName`, `Salary`) VALUES ('4', 'June', 'Jeese', '90,000');
INSERT INTO `workingplace`.`employees` (`idemployees`, `FirstName`, `LastName`, `Salary`) VALUES ('5', 'May ', 'Tom', '50,000');
SELECT (10* (COUNT(*) * SUM(salary)) MOD 999) as  checksum from employees;