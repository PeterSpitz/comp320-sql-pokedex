SELECT LOWER(a.identifier) AS pokemon FROM pokemon a
WHERE a.identifier IN (SELECT LOWER(p.identifier) AS pokemon FROM pokemon p
                    JOIN pokemon_types pt ON p.id = pt.pokemon_id
                    JOIN types t ON pt.type_id = t.id
                    WHERE t.identifier IN ('fighting')
AND a.identifier IN (SELECT LOWER(p2.identifier) AS pokemon FROM pokemon p2
                    JOIN pokemon_types pt2 ON p2.id = pt2.pokemon_id
                    JOIN types t2 ON pt2.type_id = t2.id
                    WHERE t2.identifier IN ('flying')))
GROUP BY a.identifier;