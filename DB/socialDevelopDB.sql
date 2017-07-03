-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema socialDevelop
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `socialDevelop` ;

-- -----------------------------------------------------
-- Schema socialDevelop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `socialDevelop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `socialDevelop` ;

-- -----------------------------------------------------
-- Table `socialDevelop`.`tblLocations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblLocations` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblLocations` (
  `idLocation` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(80) NOT NULL,
  `city` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`idLocation`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblUsers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblUsers` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblUsers` (
  `idUser` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `nickname` VARCHAR(45) NOT NULL,
  `phoneNumber` VARCHAR(15) NULL,
  `curriculum` VARCHAR(45) NULL,
  `profilePhoto` VARCHAR(45) NULL,
  `gender` VARCHAR(10) NULL,
  `aboutMe` VARCHAR(500) NULL,
  `bornDate` DATE NOT NULL,
  `address` VARCHAR(100) NULL,
  `idLocation` INT NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC),
  INDEX `fk_tblUsers_tblLocations_idx` (`idLocation` ASC),
  CONSTRAINT `fk_tblUsers_tblLocations`
    FOREIGN KEY (`idLocation`)
    REFERENCES `socialDevelop`.`tblLocations` (`idLocation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = big5;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblProjects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblProjects` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblProjects` (
  `idProject` INT NOT NULL AUTO_INCREMENT,
  `projectName` VARCHAR(45) NULL,
  `description` VARCHAR(500) NULL,
  `datePublish` VARCHAR(45) NULL,
  `status` VARCHAR(10) NULL,
  `picture` VARCHAR(45) NULL,
  PRIMARY KEY (`idProject`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblType` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblType` (
  `idType` INT NOT NULL AUTO_INCREMENT,
  `typeName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idType`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblTasks`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblTasks` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblTasks` (
  `idTask` INT NOT NULL AUTO_INCREMENT,
  `taskName` VARCHAR(45) NOT NULL,
  `description` VARCHAR(500) NULL,
  `status` VARCHAR(15) NOT NULL,
  `collaboratorsNum` INT NOT NULL,
  `idType` INT NOT NULL,
  `idProject` INT NOT NULL,
  `startDate` DATE NOT NULL,
  `dueDate` DATE NOT NULL,
  PRIMARY KEY (`idTask`, `idProject`),
  INDEX `fk_tblTasks_tblType1_idx` (`idType` ASC),
  INDEX `fk_tblTasks_tblProjects1_idx` (`idProject` ASC),
  CONSTRAINT `fk_tblTasks_tblType1`
    FOREIGN KEY (`idType`)
    REFERENCES `socialDevelop`.`tblType` (`idType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblTasks_tblProjects1`
    FOREIGN KEY (`idProject`)
    REFERENCES `socialDevelop`.`tblProjects` (`idProject`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblMessages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblMessages` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblMessages` (
  `idMessage` INT NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(500) NOT NULL,
  `dateMessage` DATE NULL,
  `idProject` INT NULL,
  `idTask` INT NULL,
  `privacity` VARCHAR(15) NULL,
  PRIMARY KEY (`idMessage`),
  INDEX `fk_tblMessages_tblProjects1_idx` (`idProject` ASC),
  INDEX `fk_tblMessages_tblTasks1_idx` (`idTask` ASC),
  CONSTRAINT `fk_tblMessages_tblProjects1`
    FOREIGN KEY (`idProject`)
    REFERENCES `socialDevelop`.`tblProjects` (`idProject`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblMessages_tblTasks1`
    FOREIGN KEY (`idTask`)
    REFERENCES `socialDevelop`.`tblTasks` (`idTask`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblSkills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblSkills` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblSkills` (
  `idSkill` INT NOT NULL AUTO_INCREMENT,
  `skillName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSkill`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblSkillsUsers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblSkillsUsers` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblSkillsUsers` (
  `idUser` INT NOT NULL,
  `idSkill` INT NOT NULL,
  INDEX `fk_tblSkillsUsers_tblUsers1_idx` (`idUser` ASC),
  INDEX `fk_tblSkillsUsers_tblSkills1_idx` (`idSkill` ASC),
  CONSTRAINT `fk_tblSkillsUsers_tblUsers1`
    FOREIGN KEY (`idUser`)
    REFERENCES `socialDevelop`.`tblUsers` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblSkillsUsers_tblSkills1`
    FOREIGN KEY (`idSkill`)
    REFERENCES `socialDevelop`.`tblSkills` (`idSkill`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblTasksSkillsLevel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblTasksSkillsLevel` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblTasksSkillsLevel` (
  `idSkill` INT NOT NULL,
  `idTask` INT NOT NULL,
  `level` INT NULL,
  INDEX `fk_tblTasksSkillsLevel_tblSkills1_idx` (`idSkill` ASC),
  INDEX `fk_tblTasksSkillsLevel_tblTasks1_idx` (`idTask` ASC),
  CONSTRAINT `fk_tblTasksSkillsLevel_tblSkills1`
    FOREIGN KEY (`idSkill`)
    REFERENCES `socialDevelop`.`tblSkills` (`idSkill`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblTasksSkillsLevel_tblTasks1`
    FOREIGN KEY (`idTask`)
    REFERENCES `socialDevelop`.`tblTasks` (`idTask`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblTypeSkills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblTypeSkills` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblTypeSkills` (
  `idSkill` INT NOT NULL,
  `idType` INT NOT NULL,
  INDEX `fk_tblTypeSkills_tblSkills1_idx` (`idSkill` ASC),
  INDEX `fk_tblTypeSkills_tblType1_idx` (`idType` ASC),
  CONSTRAINT `fk_tblTypeSkills_tblSkills1`
    FOREIGN KEY (`idSkill`)
    REFERENCES `socialDevelop`.`tblSkills` (`idSkill`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblTypeSkills_tblType1`
    FOREIGN KEY (`idType`)
    REFERENCES `socialDevelop`.`tblType` (`idType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblTasksDevelopers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblTasksDevelopers` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblTasksDevelopers` (
  `idUser` INT NOT NULL,
  `idTask` INT NOT NULL,
  `reference` VARCHAR(25) NULL,
  `rating` INT NULL,
  INDEX `fk_tblDeveloper_tblUsers1_idx` (`idUser` ASC),
  INDEX `fk_tblDeveloper_tblTasks1_idx` (`idTask` ASC),
  CONSTRAINT `fk_tblDeveloper_tblUsers1`
    FOREIGN KEY (`idUser`)
    REFERENCES `socialDevelop`.`tblUsers` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblDeveloper_tblTasks1`
    FOREIGN KEY (`idTask`)
    REFERENCES `socialDevelop`.`tblTasks` (`idTask`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblCollaborationsDocs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblCollaborationsDocs` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblCollaborationsDocs` (
  `idTask` INT NOT NULL,
  `idProject` INT NOT NULL,
  `idUserReciver` INT NOT NULL,
  `tblUserSender` INT NOT NULL,
  `status` VARCHAR(10) NOT NULL,
  `deadLine` DATE NOT NULL,
  `submissionDate` DATE NOT NULL,
  INDEX `fk_tblCollaborationsDocs_tblTasks1_idx` (`idTask` ASC, `idProject` ASC),
  INDEX `fk_tblCollaborationsDocs_tblUsers1_idx` (`idUserReciver` ASC),
  INDEX `fk_tblCollaborationsDocs_tblUsers2_idx` (`tblUserSender` ASC),
  CONSTRAINT `fk_tblCollaborationsDocs_tblTasks1`
    FOREIGN KEY (`idTask` , `idProject`)
    REFERENCES `socialDevelop`.`tblTasks` (`idTask` , `idProject`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblCollaborationsDocs_tblUsers1`
    FOREIGN KEY (`idUserReciver`)
    REFERENCES `socialDevelop`.`tblUsers` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblCollaborationsDocs_tblUsers2`
    FOREIGN KEY (`tblUserSender`)
    REFERENCES `socialDevelop`.`tblUsers` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblRoles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblRoles` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblRoles` (
  `idRole` INT NOT NULL AUTO_INCREMENT,
  `roleName` VARCHAR(45) NULL,
  PRIMARY KEY (`idRole`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `socialDevelop`.`tblUsersProjects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `socialDevelop`.`tblUsersProjects` ;

CREATE TABLE IF NOT EXISTS `socialDevelop`.`tblUsersProjects` (
  `idUser` INT NOT NULL,
  `idProject` INT NOT NULL,
  `idRole` INT NOT NULL,
  INDEX `fk_tblUsersProjects_tblUsers1_idx` (`idUser` ASC),
  INDEX `fk_tblUsersProjects_tblProjects1_idx` (`idProject` ASC),
  INDEX `fk_tblUsersProjects_tblRoles1_idx` (`idRole` ASC),
  CONSTRAINT `fk_tblUsersProjects_tblUsers1`
    FOREIGN KEY (`idUser`)
    REFERENCES `socialDevelop`.`tblUsers` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblUsersProjects_tblProjects1`
    FOREIGN KEY (`idProject`)
    REFERENCES `socialDevelop`.`tblProjects` (`idProject`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblUsersProjects_tblRoles1`
    FOREIGN KEY (`idRole`)
    REFERENCES `socialDevelop`.`tblRoles` (`idRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
