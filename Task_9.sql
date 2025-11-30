INSERT INTO Passenger 
    (PassengerID, PartyID, Fname, Lname, Adult, PhoneNo)
VALUES
    ('PS0001', 'PY0001', 'Alex', 'Johnson', TRUE, '07457839221'),
    ('PS0002', 'PY0001', 'Mia', 'Baker', TRUE, '07982114530'),
    ('PS0003', 'PY0001', 'Marcel', 'Jasinski', FALSE, '07601773948'),
    ('PS0004', 'PY0002', 'Lucas', 'Rivera', TRUE, '07244596810'),
    ('PS0005', 'PY0002', 'Amelia', 'Robles', TRUE, '07938420157'),
    ('PS0006', 'PY0003', 'Noah', 'Hughes', FALSE, '07512668904'),
    ('PS0007', 'PY0003', 'Ava', 'Parker', FALSE, '07774201693'),
    ('PS0008', 'PY0003', 'Orla', 'Madden', TRUE, '07690355482'),
    ('PS0009', 'PY0004', 'Sofia', 'Flores', TRUE, '07881942760'),
    ('PS0010', 'PY0005', 'Liam', 'Bennet', TRUE, '07330578149'),
    ('PS0011', 'PY0006', 'Kaley', 'Smith', FALSE, '07353459490'),
    ('PS0012', 'PY0006', 'Elaine', 'Malgova', TRUE, '07144509253');


INSERT INTO Party
  ( PartyID, NoOfMembers, ContactNo )
VALUES
  ('PY0001', 3, '07982114530'), 
  ('PY0002', 2, '07244596810'), 
  ('PY0003', 3, '07690355482'),
  ('PY0004', 1, '07881942760'), 
  ('PY0005', 1, '07330578149'), 
  ('PY0006', 2, '07144509253');


INSERT INTO Attendance
    (FlightID, PartyID, AttendanceStatus)
VALUES
    ("FL0001", "PY0001", "Completed"),
    ("FL0005", "PY0002", "Completed"),
    ("FL0006", "PY0003", "Booked"),
    ("FL0007", "PY0004", "Booked"),
    ("FL0004", "PY0005", "Booked"),
    ("FL0004", "PY0006", "Booked");


INSERT INTO Flight 
(FlightID, Duration, Date, Time, Route, FlightStatus) 
VALUES 
    ('FL0001', '1hour', '2025-11-28', '11:00', 'Coastal', 'Completed'),
    ('FL0002', '12hours', '2025-11-28', '08:00', 'Overseas', 'Completed'), 
    ('FL0003', '30mins', '2025-11-29', '21:00', 'Night-time', 'Completed'), 
    ('FL0004', '30mins', '2025-11-30', '09:00', 'Coastal', 'In-Progress'),
    ('FL0005', '1hour', '2025-11-28', '20:00', 'Night-time', 'Completed'),
    ('FL0006', '1hour', '2025-11-29', '18:00', 'Sunset', 'In-Progress'), 
    ('FL0007', '2hours', '2025-11-30', '13:00', 'Overseas', 'In-Progress'),
    ('FL0008', '2hours', '2025-11-30', '20:00', 'Night-time', 'In-progress'),
    ('FL0009', '2hours', '2025-12-01', '16:00', 'Overseas', 'In-Progress'), 
    ('FL0010', '30mins', '2025-12-01', '19:00', 'Sunset', 'In-progress'),
    ('FL0011', '1hour', '2025-12-02', '19:00', 'Sunset', 'In-Progress');


INSERT INTO Crew 
    (PilotID, FlightID)
VALUES
    ('PL0004', 'FL0001'),
    ('PL0002', 'FL0001'),
    ('PL0005', 'FL0005'),
    ('PL0003', 'FL0005'),
    ('PL0006', 'FL0006'),
    ('PL0007', 'FL0006'),
    ('PL0008', 'FL0007'),
    ('PL0003', 'FL0007'),
    ('PL0002', 'FL0004'),
    ('PL0005', 'FL0004');


INSERT INTO Pilot
(PilotID, Fname, Lname, Role)
VALUES
    ('PL0001', 'Mark', 'Stratton', 'Chief Officer'),
    ('PL0002', 'Elena', 'Hawthorne', 'Captain'),
    ('PL0003', 'James', 'Atwood', 'Captain'),
    ('PL0004', 'Derek', 'Caldwell', 'Officer'),
    ('PL0005', 'Keira', 'Whyte', 'Officer'),
    ('PL0006', 'Tessa', 'Lockridge', 'Officer'),
    ('PL0007', 'Gavin', 'Marcer', 'Captain'),
    ('PL0008', 'Mercer', 'Hartford', 'Chief Officer');


INSERT INTO Training_Flight
    (FlightID, TraineeID, InstructorID)
VALUES
    ('FL0002', 'TR0001', 'IR0004'),
    ('FL0003', 'TR0002', 'IR0002'),
    ('FL0008', 'TR0003', 'IR0003'),
    ('FL0009', 'TR0004', 'IR0001'),
    ('FL0010', 'TR0005', 'IR0004'),
    ('FL0011', 'TR0004', 'IR0003');


INSERT INTO Trainee_Officer
    (TraineeID, Fname, Lname) 
VALUES
    ('TR0001', 'Lucia', 'Dawson'),
    ('TR0002', 'Jordan', 'Carter'),
    ('TR0003', 'Emily', 'Thompson'),
    ('TR0004', 'Victoria', 'Dimitrova'),
    ('TR0005', 'Ethan', 'Mitchell');


INSERT INTO Instructor 
    (InstructorID, Fname, Lname) 
VALUES
    ('IR0001', 'Charles', 'Mason'),
    ('IR0002', 'Karl', 'Stegmann'),
    ('IR0003', 'Morag', 'Stewart'),
    ('IR0004', 'Evangaline', 'Connor');


INSERT INTO Pleasure_Flight
    (FlightID, PassengerCount)
VALUES
    ('FL0001', 3),
    ('FL0005', 2),
    ('FL0006', 3),
    ('FL0007', 1),
    ('FL0004', 3);