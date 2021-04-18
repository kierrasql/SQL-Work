-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Animals
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Animals` ;

-- -----------------------------------------------------
-- Schema Animals
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Animals` DEFAULT CHARACTER SET utf8 ;
USE `Animals` ;

-- -----------------------------------------------------
-- Table `Animals`.`owner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Animals`.`owner` ;

CREATE TABLE IF NOT EXISTS `Animals`.`owner` (
  `idowner` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  PRIMARY KEY (`idowner`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Animals`.`pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Animals`.`pet` ;

CREATE TABLE IF NOT EXISTS `Animals`.`pet` (
  `idpet` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `animaltype` VARCHAR(45) NULL,
  `age` INT NULL,
  `Notes` VARCHAR(45) NULL,
  `owner_idowner` INT NOT NULL,
  PRIMARY KEY (`idpet`),
  INDEX `fk_pet_owner_idx` (`owner_idowner` ASC),
  CONSTRAINT `fk_pet_owner`
    FOREIGN KEY (`owner_idowner`)
    REFERENCES `Animals`.`owner` (`idowner`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
