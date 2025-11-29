
  CREATE TABLE `Flight` (
  `FlightID` VARCHAR(25) NOT NULL,
  `Duration` ENUM('30mins','1hour','2hours','12hours') NOT NULL,
  `Date` DATE NOT NULL,
  `Time` TIME NOT NULL,
  `Route` ENUM('Coastal','Sunset','Overseas','Night-time') NOT NULL,
  `FlightStatus` ENUM('Completed','In-progress','Cancelled') NOT NULL,

  PRIMARY KEY (`FlightID`)
);


CREATE TABLE `Party` (
  `PartyID` VARCHAR(25) NOT NULL ,
  `NoOfMembers` INT(1) NOT NULL,
  `ContactNo` VARCHAR(35) NOT NULL,

  PRIMARY KEY (`PartyID`)

);


CREATE TABLE `Trainee_Officer` (
  `TraineeID` VARCHAR(25) NOT NULL ,
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,

  PRIMARY KEY (`TraineeID`)

);


CREATE TABLE `Pilot` (
  `PilotID` VARCHAR(25) NOT NULL , 
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  `Role` ENUM('Captain','Chief Officer','Officer','') NOT NULL,

  PRIMARY KEY (`pilotID`)
  
  );


CREATE TABLE `Instructor` (
  `InstructorID` VARCHAR(25) NOT NULL ,

  PRIMARY KEY (`InstructorID`)

);


CREATE TABLE `Attendance` (
  `FlightID` VARCHAR(25) NOT NULL,
  `PartyID` VARCHAR(25) NOT NULL,
  `AttendanceStatus` ENUM('Booked','Completed','Cancelled') NOT NULL,

  CONSTRAINT `fk_attendance_flight`
    FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`)
    ON DELETE RESTRICT ON UPDATE CASCADE,

  CONSTRAINT `fk_attendance_party`
    FOREIGN KEY (`PartyID`) REFERENCES `Party` (`PartyID`)
    ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE `PleasureFlight` (
  `FlightID` VARCHAR(25) NOT NULL ,
  `PartyID` VARCHAR(25) NOT NULL,

  PRIMARY KEY (`FlightID`),
  
  CONSTRAINT `fk_pleasure_flight`
    FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`)
    ON DELETE RESTRICT ON UPDATE CASCADE
  );


CREATE TABLE `Crew` (
  `PilotID` VARCHAR(25) NOT NULL,
  `FLightID` VARCHAR(25) NOT NULL,

  CONSTRAINT `fk_crew_flight`
    FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`)
    ON DELETE RESTRICT ON UPDATE CASCADE,

  CONSTRAINT `fk_crew_pilot`
    FOREIGN KEY (`PilotID`) REFERENCES `Pilot` (`PilotID`)
    ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE `Passenger` (
  `PassengerID` VARCHAR(25) NOT NULL ,
  `PartyID` VARCHAR(25) NOT NULL,
  `Fname` VARCHAR(35) NOT NULL,
  `Lname` VARCHAR(35) NOT NULL,
  `Adult` BOOLEAN, 
  `PhoneNo` VARCHAR(11) NOT NULL,

  PRIMARY KEY (`PassengerID`),

  CONSTRAINT `fk_passenger_party`
    FOREIGN KEY (`PartyID`) REFERENCES `Party` (`PartyID`)
    ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE `Training_Flight` (
  `FlightID` VARCHAR(25) NOT NULL ,
  `TraineeID` VARCHAR(25) NOT NULL,
  `InstructorID` VARCHAR(25) NOT NULL,

  PRIMARY KEY (`FlightID`),

  CONSTRAINT `fk_training_flight`
    FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`)
    ON DELETE RESTRICT ON UPDATE CASCADE,

  CONSTRAINT `fk_training_trainee`
    FOREIGN KEY (`TraineeID`) REFERENCES `Trainee_Officer` (`TraineeID`)
    ON DELETE RESTRICT ON UPDATE CASCADE,

  CONSTRAINT `fk_training_instructor`
    FOREIGN KEY (`InstructorID`) REFERENCES `Instructor` (`InstructorID`)
    ON DELETE RESTRICT ON UPDATE CASCADE

);

