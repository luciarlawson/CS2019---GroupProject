
CREATE TABLE `Attendance` (
  `FlightID` BIGINT(25) NOT NULL,
  `PartyID` VARCHAR(25) NOT NULL,
  `AttendanceStatus` ENUM('Booked','Completed','Cancelled') NOT NULL
  
  );


CREATE TABLE `Flight` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Duration` ENUM('30mins','1hour','2hours','12hours') NOT NULL ,
  `Date` DATE NOT NULL ,
  `Time` TIME NOT NULL ,
  `Route` ENUM('Costal','Sunset','Overseas','Night-time') NOT NULL ,
  `FlightStatus` ENUM('Completed','In-progress','Cancelled') NOT NULL ,

  PRIMARY KEY (`FlightID`)

  );


CREATE TABLE `PleasureFlight` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PartyID` VARCHAR(25) NOT NULL,

  PRIMARY KEY (`FlightID`)
  
  );


CREATE TABLE `Crew` (
  `PilotID` BIGINT(25) NOT NULL,
  `FLightID` BIGINT(25) NOT NULL

);


CREATE TABLE `Pilot` (
  `PilotID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT, 
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  `Role` ENUM('Captain','Chief Officer','Officer','') NOT NULL,

  PRIMARY KEY (`pilotID`)
  
  );


CREATE TABLE `Party` (
  `PartyID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NoOfMembers` INT(1) NOT NULL,
  `ContactNo` VARCHAR(35) NOT NULL,

  PRIMARY KEY (`PartyID`)

);


CREATE TABLE `Instructor` (
  `InstructorID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,

  PRIMARY KEY (`InstructorID`)

);


CREATE TABLE `Passenger` (
  `PassengerID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PartyID` BIGINT(25) NOT NULL,
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  `Adult` BOOLEAN, 
  `PhoneNo` VARCHAR(11) NOT NULL,

  PRIMARY KEY (`PassengerID`)

);


CREATE TABLE `Training Flight` (
  `FlightID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TraineeID` BIGINT(25) NOT NULL,
  `Instructor` BIGINT(25) NOT NULL,

  PRIMARY KEY (`FlightID`)

);


CREATE TABLE `Trainee Offier` (
  `TraineeID` BIGINT(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,

  PRIMARY KEY (`TraineeID`)

);


