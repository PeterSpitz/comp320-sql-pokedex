SELECT LOWER(p.identifier) AS pokemon, a.identifier AS ability FROM pokemon p
JOIN pokemon_abilities pa ON p.id = pa.pokemon_id
JOIN abilities a ON pa.ability_id = a.id

GROUP BY a.identifier
HAVING COUNT(*) = 1

ORDER BY p.identifier ASC;