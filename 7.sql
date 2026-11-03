SELECT LOWER(p.identifier) AS pokemon, COUNT(*) FROM pokemon p
JOIN pokemon_species pspec ON p.species_id = pspec.id
JOIN pokemon_evolution pe ON p.id = pe.evolved_species_id

GROUP BY p.identifier
HAVING COUNT(*) > 1
ORDER BY p.identifier
