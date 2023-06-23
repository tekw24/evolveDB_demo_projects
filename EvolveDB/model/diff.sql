USE classicmodels2;

-- Creates an history table for deleted and updated values
CREATE TABLE IF NOT EXISTS `classicmodels2`.`mdde_history` (
  `DB_ID` BIGINT NOT NULL AUTO_INCREMENT,
  `TABLENAME` VARCHAR(255) NOT NULL,
  `COLUMN_DB_ID` BIGINT NOT NULL,
  `COLUMN_NAME` VARCHAR(255) NOT NULL,
  `VALUE` BLOB NULL,
  `CHANGEDATE` DATETIME NOT NULL,
  PRIMARY KEY (`DB_ID`));
-- Add the new column ADRESSLINE3 in Table offices
ALTER TABLE `offices` 
ADD COLUMN `ADRESSLINE3` VARCHAR(255)   
 ;
-- Change column type of comments 
ALTER TABLE `orders` CHANGE COLUMN `comments` `comments` LONGTEXT NULL  ;
-- Drop column in employees			
ALTER TABLE `employees` 
DROP COLUMN `email`;
-- If executing the script fails, we suggest a rollback.
