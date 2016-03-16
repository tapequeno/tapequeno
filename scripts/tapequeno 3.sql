-- MySQL Workbench Synchronization
-- Generated: 2016-03-13 06:05
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: diego

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `tapequeno`.`user` 
ADD UNIQUE INDEX `email_UNIQUE` (`email` ASC);

ALTER TABLE `tapequeno`.`product` 
CHANGE COLUMN `price` `price` DECIMAL NOT NULL DEFAULT 0 ,
CHANGE COLUMN `qualification` `qualification` DECIMAL NOT NULL DEFAULT 0 ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
