-- MySQL Workbench Synchronization
-- Generated: 2016-03-15 06:43
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: diego

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `tapequeno`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(35) NOT NULL,
  `create_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `tapequeno`.`product` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` LONGBLOB NOT NULL,
  `price` DECIMAL NOT NULL DEFAULT 0,
  `views` INT(11) NOT NULL DEFAULT 0,
  `phone` VARCHAR(20) NOT NULL,
  `qualification` DECIMAL NOT NULL DEFAULT 0,
  `id_user` INT(11) NOT NULL,
  `status` VARCHAR(45) NOT NULL DEFAULT 'ATIVO',
  `create_time` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `product_fk1_idx` (`id_user` ASC),
  CONSTRAINT `product_fk1`
    FOREIGN KEY (`id_user`)
    REFERENCES `tapequeno`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `tapequeno`.`images` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `id_product` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `images_fk1_idx` (`id_product` ASC),
  CONSTRAINT `images_fk1`
    FOREIGN KEY (`id_product`)
    REFERENCES `tapequeno`.`product` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
