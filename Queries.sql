-- Description: Queries for a soccer match system that demonstrates topics such as Clauses, Aggregates & Joins. 

-- A simple query that pulls all columns and rows from teams table
SELECT * FROM teams;

-- A query that displays a subset of columns of teams table.
SELECT id, name, coach_name
FROM teams;

-- A query that displays a subset of columns of teams table with a single clause (predicate) WHERE statement
SELECT name
FROM teams
WHERE coach_name = 'Pip';

-- A query that displays a subset of columns of teams table with a multi-clause (predicate) WHERE statement using AND/OR
SELECT name AS team_name
FROM teams
WHERE coach_name = 'Bob' AND name LIKE '%A';

-- A query that performs a single table join i.e. joining 2 tables (teams table & matches table).
SELECT players.name AS Player_Name, position.name AS Position 
FROM players
JOIN position ON players.position_id = position.id;

-- A query that performs a multi-table join i.e. joining 3 tables (teams , matches & results tables).
SELECT players.name, teams.name, position.name
FROM teams
JOIN players ON teams.id = players.team_id
JOIN position ON players.position_id = position.id;

-- A query that performs an aggregate (count, min, max, sum, avg, etc.).
SELECT COUNT(*) AS Team_1_Total_Players 
FROM players
WHERE team_id = 1;

-- A query that performs an aggregate (count, min, max, sum, avg, etc.) with a GROUP BY.
SELECT
	teams.name AS Team_Name, 
	COUNT(*) AS Total_Players_Each_Team 
FROM players
GROUP BY team_id;

-- A query that performs an aggregate (count, min, max, sum, avg, etc.). with a GROUP BY and a HAVING clause
SELECT
	position_id AS Defender,
	COUNT(*) AS Number_of_Players
FROM players
GROUP BY position_id
HAVING position_id = 2;

-- A query that performs a subquery either as part of the WHERE clause or as a derived/virtual table.
SELECT teams.name AS Team_Name, matches.match_date, results.winner_team_id
FROM matches
JOIN teams
ON teams.id = matches.id
JOIN results
ON matches.id = results.match_id
WHERE teams.id IN (
	SELECT id
	FROM matches
	WHERE match_date = '2024-11-02'
);

-- A query that performs an aggregate (COUNT) with a join and a group by with joining of 3 tables i.e. teams, matches & results.
SELECT
	teams.name AS Team_Name,
	COUNT(matches.id) AS Total_Matches 
FROM teams
JOIN matches 
ON teams.id = matches.team_1_id OR teams.id = matches.team_2_id
GROUP BY teams.name;
