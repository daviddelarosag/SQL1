-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tiendadeinformatica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `fabricante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fabricante` (
  `codigo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `producto` (
  `codigo` INT NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `precio` DOUBLE UNSIGNED NOT NULL,
  `fabricante_codigo` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_producto_fabricante_idx` (`fabricante_codigo` ASC) VISIBLE,
  CONSTRAINT `fk_producto_fabricante`
    FOREIGN KEY (`fabricante_codigo`)
    REFERENCES `fabricante` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

describe fabricante;
describe producto;
INSERT INTO fabricante
VALUES (null, 'Asus');
SELECT * FROM fabricante;
INSERT INTO fabricante
VALUES (null, 'Lenovo');
INSERT INTO fabricante
VALUES (null,'Hewlett-packard');
INSERT INTO fabricante
VALUES (null,'Samsung');
INSERT INTO fabricante
VALUES (null,'Seagate');
INSERT INTO fabricante
VALUES (null,'Crucial');
INSERT INTO fabricante
VALUES (null, 'Gigabyte');
INSERT INTO fabricante
VALUES (null, 'Huawei');
INSERT INTO fabricante
VALUES (null, 'Xiaomi');
SELECT * FROM fabricante;
INSERT INTO producto
VALUES (null,'Disco duro SATA3 1TB', 86.99,5);
SELECT * FROM producto;
INSERT INTO producto
VALUES (null, 'Memoria RAM DDR4 8GB', 120, 3);
INSERT INTO producto
VALUES (null, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto
VALUES (null, 'GeForce GTX 105Ti', 185, 7);
INSERT INTO producto
VALUES (null, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto
VALUES (null, 'Monitor 24 LED Full HD', 202,1);
INSERT INTO producto
VALUES (null, 'Monitor 27 LED Full HD', 245.99,1);
INSERT INTO producto
VALUES (null, 'Portatil Yoga 520', 559, 2);
INSERT INTO producto
VALUES (null, 'Portatil Ideapd 320', 444, 2);
INSERT INTO producto
VALUES (null, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto
VALUES (null, 'Impresora HP LaserJet Pro M26nw', 180, 3); 
