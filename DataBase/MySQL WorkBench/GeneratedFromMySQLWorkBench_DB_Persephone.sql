-- MySQL Script generated by MySQL Workbench
-- Fri May 18 19:39:13 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema persephone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema persephone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `persephone` DEFAULT CHARACTER SET utf8 ;
USE `persephone` ;

-- -----------------------------------------------------
-- Table `persephone`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Usuarios` (
  `idUsuario` INT NOT NULL,
  `Login` VARCHAR(20) NOT NULL,
  `Password` VARCHAR(20) NOT NULL,
  `Correo` VARCHAR(20) NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `Apellidos` VARCHAR(20) NOT NULL,
  `Direccion` VARCHAR(50) NOT NULL,
  `Rol` TINYINT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `idUsuario_UNIQUE` (`idUsuario` ASC),
  UNIQUE INDEX `Login_UNIQUE` (`Login` ASC),
  UNIQUE INDEX `Correo_UNIQUE` (`Correo` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Tienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Tienda` (
  `idTienda` INT NOT NULL,
  `Nombre` VARCHAR(25) NOT NULL,
  `Direccion` VARCHAR(50) NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idTienda`),
  UNIQUE INDEX `idTienda_UNIQUE` (`idTienda` ASC),
  INDEX `fk_Tienda_Usuarios1_idx` (`idUsuario` ASC),
  CONSTRAINT `fk_Tienda_Usuarios1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `persephone`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Proveedores` (
  `idProveedor` INT NOT NULL,
  `Nombre` VARCHAR(50) NOT NULL,
  `Direccion` VARCHAR(50) NOT NULL,
  `Correo` VARCHAR(50) NOT NULL,
  `Telefono` INT NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE INDEX `idProveedor_UNIQUE` (`idProveedor` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Productos` (
  `idProducto` INT NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `Referencia` VARCHAR(20) NOT NULL,
  `Stock` INT NOT NULL,
  `PrecioUnidad` DECIMAL(10,0) NOT NULL,
  `Genero` VARCHAR(20) NOT NULL,
  `Imagen` LONGBLOB NOT NULL,
  `idProveedor` INT NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE INDEX `idProducto_UNIQUE` (`idProducto` ASC),
  INDEX `fk_Productos_Proveedores1_idx` (`idProveedor` ASC),
  CONSTRAINT `fk_Productos_Proveedores1`
    FOREIGN KEY (`idProveedor`)
    REFERENCES `persephone`.`Proveedores` (`idProveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Inventario` (
  `idInventario` INT NOT NULL,
  `PrecioUnidad` DECIMAL(10,0) NOT NULL,
  `Stock` INT NOT NULL,
  `Imagen` LONGBLOB NOT NULL,
  `idTienda` INT NOT NULL,
  `idProveedor` INT NOT NULL,
  `idProducto` INT NOT NULL,
  PRIMARY KEY (`idInventario`),
  UNIQUE INDEX `idInventario_UNIQUE` (`idInventario` ASC),
  INDEX `fk_Inventario_Tienda_idx` (`idTienda` ASC),
  INDEX `fk_Inventario_Proveedores1_idx` (`idProveedor` ASC),
  INDEX `fk_Inventario_Productos1_idx` (`idProducto` ASC),
  CONSTRAINT `fk_Inventario_Tienda`
    FOREIGN KEY (`idTienda`)
    REFERENCES `persephone`.`Tienda` (`idTienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inventario_Proveedores1`
    FOREIGN KEY (`idProveedor`)
    REFERENCES `persephone`.`Proveedores` (`idProveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inventario_Productos1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `persephone`.`Productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Promociones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Promociones` (
  `idPromocion` INT NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `FechaInicio` DATE NOT NULL,
  `FechaFinal` DATE NOT NULL,
  `Descripcion` VARCHAR(20) NOT NULL,
  `Descuento` INT NOT NULL,
  UNIQUE INDEX `idPromocion_UNIQUE` (`idPromocion` ASC),
  PRIMARY KEY (`idPromocion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Carrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Carrito` (
  `idCarrito` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  `Cantidad` INT NOT NULL,
  `ValorUnidad` DECIMAL(10,0) NOT NULL,
  `Talla` DOUBLE NOT NULL,
  `Color` VARCHAR(20) NOT NULL,
  `idUsuario` INT NOT NULL,
  `idProducto` INT NOT NULL,
  `idPromocion` INT NOT NULL,
  PRIMARY KEY (`idCarrito`),
  UNIQUE INDEX `idCarrito_UNIQUE` (`idCarrito` ASC),
  INDEX `fk_Carrito_Usuarios1_idx` (`idUsuario` ASC),
  INDEX `fk_Carrito_Productos1_idx` (`idProducto` ASC),
  INDEX `fk_Carrito_Promociones1_idx` (`idPromocion` ASC),
  CONSTRAINT `fk_Carrito_Usuarios1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `persephone`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carrito_Productos1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `persephone`.`Productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carrito_Promociones1`
    FOREIGN KEY (`idPromocion`)
    REFERENCES `persephone`.`Promociones` (`idPromocion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`MetodoPago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`MetodoPago` (
  `idMetodoPago` INT NOT NULL,
  `TipoPago` VARCHAR(20) NOT NULL,
  `Descripcion` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idMetodoPago`),
  UNIQUE INDEX `idMetodo Pago_UNIQUE` (`idMetodoPago` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Ventas` (
  `idVenta` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  `Cantidad` INT NOT NULL,
  `ValorUnidad` DECIMAL(10,0) NOT NULL,
  `idMetodoPago` INT NOT NULL,
  `idProducto` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idVenta`),
  UNIQUE INDEX `idVenta_UNIQUE` (`idVenta` ASC),
  INDEX `fk_Ventas_Metodo Pago1_idx` (`idMetodoPago` ASC),
  INDEX `fk_Ventas_Productos1_idx` (`idProducto` ASC),
  INDEX `fk_Ventas_Usuarios1_idx` (`idUsuario` ASC),
  CONSTRAINT `fk_Ventas_Metodo Pago1`
    FOREIGN KEY (`idMetodoPago`)
    REFERENCES `persephone`.`MetodoPago` (`idMetodoPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_Productos1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `persephone`.`Productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_Usuarios1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `persephone`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`Pedido` (
  `idPedido` INT NOT NULL,
  `FechaInicio` DATE NOT NULL,
  `FechaEstimada` DATE NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idPedido`),
  UNIQUE INDEX `idPedido_UNIQUE` (`idPedido` ASC),
  INDEX `fk_Pedido_Usuarios1_idx` (`idUsuario` ASC),
  CONSTRAINT `fk_Pedido_Usuarios1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `persephone`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `persephone`.`DetallePedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `persephone`.`DetallePedido` (
  `idDetallePedido` INT NOT NULL,
  `Cantidad` INT NOT NULL,
  `Talla` DECIMAL(10,0) NOT NULL,
  `Color` VARCHAR(20) NOT NULL,
  `idProducto` INT NOT NULL,
  `idPedido` INT NOT NULL,
  PRIMARY KEY (`idDetallePedido`),
  UNIQUE INDEX `idDetalle Pedido_UNIQUE` (`idDetallePedido` ASC),
  INDEX `fk_Detalle Pedido_Productos1_idx` (`idProducto` ASC),
  INDEX `fk_Detalle Pedido_Pedido1_idx` (`idPedido` ASC),
  CONSTRAINT `fk_Detalle Pedido_Productos1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `persephone`.`Productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Detalle Pedido_Pedido1`
    FOREIGN KEY (`idPedido`)
    REFERENCES `persephone`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
