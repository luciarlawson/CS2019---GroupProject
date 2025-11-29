
CREATE TABLE `u02ll24_Project`.`Attendance` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PartyID` VARCHAR(25) NOT NULL,
  `Date` DATE NOT NULL,
  `Time` TIME NOT NULL,
  `Status` ENUM('Booked','Completed','Cancelled') NOT NULL,
  PRIMARY KEY (`FlightID`)
  
  ) ENGINE = InnoDB COMMENT='Attendance table';


CREATE TABLE `u02ll24_Project`.`Flight` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Duration` ENUM('30mins','1hour','2hours','12hours') NOT NULL ,
  `Date` DATE NOT NULL ,
  `Time` TIME NOT NULL ,
  PRIMARY KEY (`FlightID`)
  ) ENGINE = InnoDB;


CREATE TABLE `PleasureFlight` (
  `FlightID` VARCHAR(25) NOT NULL,
  `FlightID` VARCHAR(25) NOT NULL,
  `PartyID` VARCHAR(25) NOT NULL,

  PRIMARY KEY (`flightID`),

  CONSTRAINT `fk_pleasure_party`
    FOREIGN KEY (`PartyID`) REFERENCES `Party` (`PartyID`)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  
  ) ENGINE = InnoDB COMMENT='Pleasure flight table';


CREATE TABLE `Pilot` (
  `PilotID` VARCHAR(25) NOT NULL,
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  -- Is "Role" a reserved word?    might need to change it to something else
  `Role` ENUM('Captain','Chief Officer','Officer','') NOT NULL,

  PRIMARY KEY (`pilotID`),
  
  ) ENGINE = InnoDB COMMENT=`Pilot table`;

