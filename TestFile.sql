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


  CREATE TABLE `Flight` (
  `FlightID` VARCHAR(25) NOT NULL,
  `Duration` ENUM('30mins','1hour','2hours','12hours') NOT NULL,
  `Date` DATE NOT NULL,
  `Time` TIME NOT NULL,
  `Route` ENUM('Costal','Sunset','Overseas','Night-time') NOT NULL,
  `FlightStatus` ENUM('Completed','In-progress','Cancelled') NOT NULL,
  PRIMARY KEY (`FlightID`)
);


CREATE TABLE `Attendance` (
  `FlightID` VARCHAR(25) NOT NULL,
  `PartyID` VARCHAR(25) NOT NULL,
  `AttendanceStatus` ENUM('Booked','Completed','Cancelled') NOT NULL,

  CONSTRAINT `fk_attendance_flight`
    FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

