SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE SCHEMA IF NOT EXISTS `php_projeto` DEFAULT CHARACTER SET utf8 ;
USE `php_projeto` ;
CREATE TABLE IF NOT EXISTS `php_projeto`.`Class` (`Class_Id` INT NOT NULL AUTO_INCREMENT,`Class_Course` VARCHAR(255) NOT NULL,`Start_Year` INT(4) NOT NULL,`End_Year` INT(4) NOT NULL,PRIMARY KEY (`Class_Id`),UNIQUE INDEX `Class_Id_UNIQUE` (`Class_Id` ASC) )ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `php_projeto`.`Student` (`Student_Id` INT NOT NULL AUTO_INCREMENT,`Student_FName` VARCHAR(255) NOT NULL,`Student_LName` VARCHAR(255) NOT NULL,`Student_Email` VARCHAR(255) NOT NULL,`Student_Address` VARCHAR(255) NOT NULL,`Class_Class_Id` INT NOT NULL,PRIMARY KEY (`Student_Id`, `Class_Class_Id`),UNIQUE INDEX `Student_Id_UNIQUE` (`Student_Id` ASC) ,INDEX `fk_Student_Class_idx` (`Class_Class_Id` ASC) ,CONSTRAINT `fk_Student_Class`FOREIGN KEY (`Class_Class_Id`)REFERENCES `php_projeto`.`Class` (`Class_Id`))ENGINE = InnoDB;
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;