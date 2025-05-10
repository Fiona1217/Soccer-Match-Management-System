-- Description: Test data for a soccer match system. This data populates all the tables.

-- Insert data into Teams table
INSERT INTO Teams (ID, Name, Coach_Name)
VALUES (1, 'Team A', 'Bob'),
(2, 'Team B', 'Pip'),
(3, 'Team C', 'Mac');

-- Insert data into Position table
INSERT INTO Position (ID, Name)
VALUES (1, 'Forward'),
(2, 'Defender'),
(3, 'Midfielder'),
(4, 'Goalkeeper');

-- Insert data into Players table
INSERT INTO Players (ID, Name, Position_ID, Team_ID)
VALUES (1, 'Bobo', 1, 1),
(2, 'Dodo', 2, 1),
(3, 'Popo', 3, 2),
(4, 'Momo', 4, 2),
(5, 'Toto', 1, 3),
(6, 'Yoyo', 2, 3);

-- Insert data into Matches table
INSERT INTO Matches (ID, Match_Date, Team_1_ID, Team_2_ID)
VALUES (1, '2024-11-01', 1, 2),
(2, '2024-11-02', 2, 3),
(3, '2024-11-03', 1, 3);

-- Insert data into Results table
INSERT INTO Results (Match_ID, Score_Team_1, Score_Team_2, Winner_Team_ID)
VALUES (1, 0, 2, 2),
(2, 1, 1, NULL),
(3, 3, 2, 1);
