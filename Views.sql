-- Description: Views for a soccer match system. It includes a view that shows teams that have a coach named Bob and ends with an A, and a view that shows the number of defenders that have a position id of 2.

-- Query 4 -> View: A view that displays a subset of columns of teams table with a multi-clause (predicate) WHERE statement using AND/OR 
CREATE VIEW bob_team_A AS
SELECT name AS team_name
FROM teams 
WHERE coach_name = 'Bob' AND name LIKE '%A';

-- Query 9 -> View: A view that performs an aggregate (count, min, max, sum, avg, etc.) with joining of 3 tables i.e. teams, matches & results by using a GROUP BY and a HAVING clause. 
CREATE VIEW defender_number AS
SELECT
	position_id AS Defender,
	COUNT(*) AS Number_of_Players
FROM players
GROUP BY position_id
HAVING position_id = 2;
