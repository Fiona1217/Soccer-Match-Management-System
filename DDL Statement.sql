-- Description: DDL statements for a soccer match system. It includes tables for teams, players, matches, and scores, with primary keys, foreign keys, and constraints specific to soccer.

-- Create Teams table
CREATE TABLE Teams(
	ID INT PRIMARY KEY,
	Name VARCHAR(50) UNIQUE NOT NULL,
	Coach_Name VARCHAR(50) NOT NULL
);

-- Create Positions table
CREATE TABLE Position(
	ID INT PRIMARY KEY,
	Name VARCHAR(30) UNIQUE NOT NULL
);

-- Create Players table
CREATE TABLE Players(
	ID INT PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Position_ID INT,
	Team_ID INT NOT NULL,
	FOREIGN KEY (Team_ID) REFERENCES Teams(ID),
	FOREIGN KEY (Position_ID) REFERENCES Position(ID)
);

-- Create Matches table
CREATE TABLE Matches(
	ID INT PRIMARY KEY,
	Match_Date DATE NOT NULL,
	Team_1_ID INT NOT NULL,
	Team_2_ID INT NOT NULL,
	FOREIGN KEY (Team_1_ID) REFERENCES Teams(ID),
	FOREIGN KEY (Team_2_ID) REFERENCES Teams(ID),
	CONSTRAINT team_not_equal CHECK (Team_1_ID != Team_2_ID)
);

-- Create Results table
CREATE TABLE Results(
	Match_ID INT NOT NULL,
	Score_Team_1 INT NOT NULL DEFAULT 0,
	Score_Team_2 INT NOT NULL DEFAULT 0,
	Winner_Team_ID INT NULL,
	PRIMARY KEY (Match_ID),
	FOREIGN KEY (Match_ID) REFERENCES Matches(ID),
	FOREIGN KEY (Winner_Team_ID) REFERENCES Teams(ID),
	CONSTRAINT valid_score CHECK (Score_Team_1 >= 0 AND Score_Team_2 >= 0)
);
