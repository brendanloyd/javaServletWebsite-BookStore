/***********************************************************
* Create the database named hw5, its tables, and a database user
************************************************************/

DROP DATABASE IF EXISTS hw5;

CREATE DATABASE hw5;

USE hw5;

CREATE TABLE User (
  UserID INT NOT NULL AUTO_INCREMENT,
  Email VARCHAR(50),
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Password VARCHAR(50),
  
  PRIMARY KEY(UserID) 
);

INSERT INTO User 
  (Email, FirstName, LastName, Password)
VALUES 
  ('bat@gmail.com', 'Bat', 'Man', 'bat'),
  ('spider@gmail.com', 'Spider', 'Man', 'spider'), 
  ('super@gmail.com', 'Super', 'Man', 'super');

 
 -- Create student and grant privileges

DELIMITER //
CREATE PROCEDURE drop_user_if_exists()
BEGIN
    DECLARE userCount BIGINT DEFAULT 0 ;

    SELECT COUNT(*) INTO userCount FROM mysql.user
    WHERE User = 'student' and  Host = 'localhost';

    IF userCount > 0 THEN
        DROP USER student@localhost;
    END IF;
END ; //
DELIMITER ;

CALL drop_user_if_exists() ;

CREATE USER student@localhost IDENTIFIED BY 'sesame';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
ON hw5.*
TO student@localhost;

  
USE hw5;