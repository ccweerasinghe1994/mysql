
-- USING UNION WE JOIN MULTIPLE QUIRIES

SELECT id, name, status, "MG" AS type
FROM mg_properties
WHERE status = "Active"
UNION
SELECT id, name, status, "CM" AS type
FROM properties
WHERE status = 'ACTIVE'