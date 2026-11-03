SELECT LOWER(p.identifier) AS pokemon, COUNT(*) FROM pokemon p
JOIN pokemon_species pspec ON p.species_id = pspec.id
JOIN generations g ON pspec.generation_id = g.id
JOIN pokemon_evolution pe ON p.id = pe.evolved_species_id

WHERE g.identifier = 'generation-i'
AND p.identifier IN (SELECT p2.identifier FROM pokemon p2
               JOIN pokemon_species pspec2 ON p2.species_id = pspec2.id
               JOIN generations g2 ON pspec2.generation_id = g2.id
               JOIN pokemon_evolution pe2 ON p2.id = pe2.evolved_species_id
               WHERE g2.identifier = 'generation-i'
               GROUP BY p2.identifier
               HAVING COUNT(*) > 1)

GROUP BY p.identifier;