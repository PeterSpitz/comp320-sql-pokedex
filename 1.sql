SELECT LOWER(p.identifier) AS pokemon, 
       ps.base_stat AS base_stat FROM pokemon p
JOIN pokemon_stats ps ON p.id = ps.pokemon_id
JOIN stats s ON ps.stat_id = s.id

WHERE s.identifier = 'speed'
AND ps.base_stat = (SELECT MAX(ps2.base_stat) FROM pokemon_stats ps2
                    JOIN stats s2 ON ps2.stat_id = s2.id
                    WHERE s2.identifier = 'speed');


-- pokemon->pokemon_stats->stats