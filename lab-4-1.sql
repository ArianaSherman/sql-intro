-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935
SELECT SUM(hits) as "Lifetime Hits"
FROM stats 
LEFT JOIN players on stats.player_id = players.id 
WHERE players.first_name = 'Barry' 
AND players.last_name = 'Bonds';
