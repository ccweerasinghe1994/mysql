

-- ? END WITH A N
SELECT *
FROM mg_properties
WHERE name LIKE '%N';
-- ? HAS "name" AT THE BEGINING
SELECT *
FROM mg_properties
WHERE name LIKE 'name%';
-- ? NAME IN ANYWARE
SELECT *
FROM mg_properties
WHERE name LIKE '%name%';
-- ? HAS A FIXED LENTH END WITH A "N"
SELECT *
FROM mg_properties
WHERE name LIKE '_____________N';
-- ? HAS A FIXED LENTH START WITH A "y"
SELECT *
FROM mg_properties
WHERE name LIKE 'y__';
-- ? HAS A FIXED LENTH HAS A "j" IN THE MIDLLE
SELECT *
FROM mg_properties
WHERE name LIKE '__j__';
