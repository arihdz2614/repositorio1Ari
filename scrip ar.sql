-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Tienda
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Tienda` ;

-- -----------------------------------------------------
-- Schema Tienda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Tienda` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `Tienda` ;

-- -----------------------------------------------------
-- Table `Tienda`.`Clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tienda`.`Clientes` ;

CREATE TABLE IF NOT EXISTS `Tienda`.`Clientes` (
  `rfc` VARCHAR(13) NOT NULL,
  `nombres` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  PRIMARY KEY (`rfc`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish_ci;


-- -----------------------------------------------------
-- Table `Tienda`.`provedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tienda`.`provedores` ;

CREATE TABLE IF NOT EXISTS `Tienda`.`provedores` (
  `RFC` VARCHAR(13) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`RFC`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish_ci;


-- -----------------------------------------------------
-- Table `Tienda`.`productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tienda`.`productos` ;

CREATE TABLE IF NOT EXISTS `Tienda`.`productos` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` DECIMAL NOT NULL,
  `provedores_RFC` VARCHAR(13) NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_productos_provedores_idx` (`provedores_RFC` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish_ci;


-- -----------------------------------------------------
-- Table `Tienda`.`Compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tienda`.`Compra` ;

CREATE TABLE IF NOT EXISTS `Tienda`.`Compra` (
  `Folio` INT NOT NULL AUTO_INCREMENT,
  `Clientes_rfc` VARCHAR(13) NOT NULL,
  `productos_codigo` INT NOT NULL,
  PRIMARY KEY (`Folio`),
  INDEX `fk_Clientes_has_productos_productos1_idx` (`productos_codigo` ASC) VISIBLE,
  INDEX `fk_Clientes_has_productos_Clientes1_idx` (`Clientes_rfc` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
DESCRIBE clientes;
DESCRIBE provedores;
DESCRIBE compra;
DESCRIBE productos;
SHOW tables;
INSERT INTO clientes
VALUES ('SDRETGYU45362','Ariana','Hernandez','1990-08-16');
SELECT * FROM clientes;
INSERT INTO provedores
VALUES ('JUYHCFRE43567','Totonacas mz68 lt 27 Coyoacan','Hugo Cesar');
SELECT * FROM provedores;
INSERT INTO productos
VALUES ('1','Papel',10.5,'JHYTGFRED8905');
SELECT * FROM productos;
INSERT INTO productos
