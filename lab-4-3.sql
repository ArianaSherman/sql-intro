-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT teams.name,players.first_name,players.last_name,stats.home_runs
FROM stats
    LEFT JOIN players on players.id=stats.player_id
    LEFT JOIN teams on teams.id=stats.team_id
WHERE year=2019
ORDER BY home_runs DESC
LIMIT 1;
