-- ! SELECT STUDY

--  ** SELECT ALL THE COLUMN FROM THE TABLE
SELECT * FROM mg_properties;

--? when selecting mathematical operations can be performed on the select options

SELECT 

property_id,
property_id+1

 FROM mg_properties;


-- ! Alias
-- ? "AS" is used give aliases to columns 
 SELECT id, id + 12 AS newId
FROM rooms;
-- * IF SPACES NEEDED IN THE ALIASE "" CAN BE USED
-- EXAMPLE 
 SELECT id, id + 12 AS "new id"
FROM rooms;