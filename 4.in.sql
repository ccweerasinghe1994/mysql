
-- ? TO CHECK MULTIPLE VALUES WE CAN USE IN OPERATOR

SELECT *
FROM mg_properties
WHERE rooms_count IN (13, 4);


SELECT *
FROM mg_properties
WHERE rooms_count NOT IN (13, 4);