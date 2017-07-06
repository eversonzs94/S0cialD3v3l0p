ALTER TABLE `socialdevelop`.`tblusers` 
CHANGE COLUMN `bornDate` `birthDate` DATE NOT NULL ;

ALTER TABLE `socialdevelop`.`tblskillsusers` 
ADD COLUMN `skillLevel` INT NULL AFTER `idSkill`;

