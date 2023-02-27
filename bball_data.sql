# Breakdown of the # of NBA players born in each state
-- SELECT State, COUNT(State) AS 'Number of Players'
-- FROM nba_players.curr_players_csv
-- GROUP BY State
-- ORDER BY 'Number of Players';

# Breakdown of the # of NBA players born out of the US 
SELECT Country, COUNT(Country) AS 'Number of Players'
FROM nba_players.curr_players_csv
WHERE Country!="United States"
GROUP BY Country
ORDER BY 'Number of Players';

# Which team is the most diverse in terms of nationality
-- SELECT COUNT(DISTINCT Nationality) AS 'Unique Nationalities', Team
-- FROM nba_players.curr_players_csv
-- GROUP BY Team;

# Update all empty countries for US players with United States]
-- UPDATE nba_players.curr_players_csv
-- SET Country="United States"
-- WHERE Country='';

# How many international players went to play American college basketball
--  SELECT * 
--  FROM nba_players.curr_players_csv
--  WHERE Country!="United States" AND College!=""

# Selecting all the players with special characters in their name
-- SELECT Player
-- FROM nba_players.curr_players_csv
-- WHERE Player LIKE '%[0-1]%';

# Updating all 'R' values in the Exp tab to 0, for same data-type purposes.
-- UPDATE nba_players.curr_players_csv
-- SET Exp=0
-- WHERE Exp='R';

# Sorting countries and states by population
-- SELECT State, COUNT(State) AS 'Number of Players'
-- FROM nba_players.curr_players_csv
-- WHERE State!=''
-- GROUP BY State
-- ORDER BY COUNT(State) DESC;

-- SELECT Country, COUNT(Country) AS 'Number of Players'
-- FROM nba_players.curr_players_csv
-- GROUP BY Country
-- ORDER BY COUNT(Country) DESC; 
