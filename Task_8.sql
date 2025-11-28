
CREATE TABLE `Attendance` (
  -- Surrogate key????     Do we need to change it to a "BIGINT"
  `FlightID` VARCHAR(25) UNSIGNED NOT NULL AUTO_INCREMENT,

  `PartyID` VARCHAR(25) NOT NULL,
  `Date` DATE NOT NULL,
  `Time` TIME NOT NULL,
  `Status` ENUM('Booked','Completed','Cancelled') NOT NULL

  PRIMARY KEY (`FlightID`),

  CONSTRAINT `fk_attend_party`
    FOREIGN KEY (`PartyID`) REFERENCES `Party` (`PartyID`)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  
  ) ENGINE = InnoDB COMMENT='Attendance table';




CREATE TABLE `PleasureFlight` (
  `FlightID` VARCHAR(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  
  `FlightID` VARCHAR(25) NOT NULL,
  `PartyID` VARCHAR(25) NOT NULL,

  PRIMARY KEY (`flightID`),

  CONSTRAINT `fk_pleasure_party`
    FOREIGN KEY (`PartyID`) REFERENCES `Party` (`PartyID`)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  
  ) ENGINE = InnoDB COMMENT='Pleasure flight table';



CREATE TABLE `Pilot` (
  `PilotID` VARCHAR(25) UNSIGNED NOT NULL AUTO_INCEMENT,
  
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  -- "Role" is a reserved word    need to change it to something else
  `Role` ENUM('Captain','Chief Officer','Officer','') NOT NULL,

  PRIMARY KEY (`pilotID`),
  
  ) ENGINE = InnoDB;

