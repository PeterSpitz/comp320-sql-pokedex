SELECT LOWER(ps2.identifier) AS pokemon, COUNT(*) AS species_count
FROM pokemon_species ps1
JOIN pokemon_species ps2 ON ps1.evolves_from_species_id = ps2.id
GROUP BY ps2.identifier
HAVING COUNT(*) > 1
ORDER BY ps2.identifier