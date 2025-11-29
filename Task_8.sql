
CREATE TABLE `u02ll24_Project`.`Attendance` (
  `FlightID` BIGINT(25) NOT NULL,
  `PartyID` VARCHAR(25) NOT NULL,
  `AttendanceStatus` ENUM('Booked','Completed','Cancelled') NOT NULL
  
  ) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Flight` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Duration` ENUM('30mins','1hour','2hours','12hours') NOT NULL ,
  `Date` DATE NOT NULL ,
  `Time` TIME NOT NULL ,
  `Route` ENUM('Costal','Sunset','Overseas','Night-time') NOT NULL ,
  `FlightStatus` ENUM('Completed','In-progress','Cancelled') NOT NULL ,
  PRIMARY KEY (`FlightID`)

  ) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`PleasureFlight` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PartyID` VARCHAR(25) NOT NULL,

  PRIMARY KEY (`flightID`)
  
  ) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Crew` (
  `PilotID` BIGINT(25) NOT NULL,
  `FLightID` BIGINT(25) NOT NULL

) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Pilot` (
  `PilotID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT, 
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  `Role` ENUM('Captain','Chief Officer','Officer','') NOT NULL,

  PRIMARY KEY (`pilotID`)
  
  ) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Party` (
  `PartyID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NoOfMembers` INT(1) NOT NULL,
  `ContactNo` VARCHAR(35) NOT NULL,

  PRIMARY KEY (`PartyID`)

) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Instructor` (
  `InstructorID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,

  PRIMARY KEY (`InstructorID`)

) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Passenger` (
  `PassengerID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PartyID` BIGINT(25) NOT NULL,
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  `Adult` BOOLEAN, 
  `PhoneNo` VARCHAR(11) NOT NULL,

  PRIMARY KEY (`PassengerID`)

) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Training Flight` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TraineeID` BIGINT(25) NOT NULL,
  `Instructor` BIGINT(25) NOT NULL,

  PRIMARY KEY (`FlightID`)

) ENGINE = InnoDB;


CREATE TABLE `u02ll24_Project`.`Trainee Offier` (
  `TraineeID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,

  PRIMARY KEY (`TraineeID`)

) ENGINE = InnoDB;


