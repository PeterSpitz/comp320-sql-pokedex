SELECT LOWER(ps1.identifier) AS 'gen 1', LOWER(ps2.identifier) AS parent
FROM pokemon_species AS ps1
JOIN generations AS g1 ON ps1.generation_id = g1.id
JOIN pokemon_species AS ps2 ON ps1.evolves_from_species_id = ps2.id
JOIN generations AS g2 ON ps2.generation_id = g2.id
WHERE g1.identifier = 'generation-i'
AND g2.identifier <> 'generation-i'