SELECT LOWER(p.identifier) AS pokemon, 
       ps.base_stat AS base_stat FROM pokemon p
JOIN pokemon_stats ps ON p.id = ps.pokemon_id
JOIN stats s ON ps.stat_id = s.id
JOIN pokemon_species pspec ON p.species_id = pspec.id
JOIN generations g ON pspec.generation_id = g.id

WHERE s.identifier = 'attack'
AND p.is_default = 1
AND ps.base_stat = (SELECT MAX(ps2.base_stat) FROM pokemon_stats ps2
                    JOIN pokemon p2 ON ps2.pokemon_id = p2.id
                    JOIN pokemon_species pspec2 ON p2.species_id = pspec2.id
                    JOIN generations g2 ON pspec2.generation_id = g2.id
                    JOIN stats s2 ON ps2.stat_id = s2.id
                    WHERE s2.identifier = 'attack'
                    AND p2.is_default = 1
                    AND g2.identifier = 'generation-i')
AND g.identifier = 'generation-i';