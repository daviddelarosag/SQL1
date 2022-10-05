-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tiendadeinformatica
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tiendadeinformatica` ;

-- -----------------------------------------------------
-- Schema tiendadeinformatica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tiendadeinformatica` DEFAULT CHARACTER SET utf8 ;
USE `tiendadeinformatica` ;

-- -----------------------------------------------------
-- Table `tiendadeinformatica`.`fabricante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tiendadeinformatica`.`fabricante` ;

CREATE TABLE IF NOT EXISTS `tiendadeinformatica`.`fabricante` (
  `codigo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `tiendadeinformatica`.`producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tiendadeinformatica`.`producto` ;

CREATE TABLE IF NOT EXISTS `tiendadeinformatica`.`producto` (
  `codigo` INT NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `precio` DOUBLE UNSIGNED NOT NULL,
  `fabricante_codigo` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_producto_fabricante_idx` (`fabricante_codigo` ASC) VISIBLE,
  CONSTRAINT `fk_producto_fabricante`
    FOREIGN KEY (`fabricante_codigo`)
    REFERENCES `tiendadeinformatica`.`fabricante` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
