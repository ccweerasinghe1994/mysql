

-- * THIS IS CALLED EXPLICIT JOIN

-- ? GET ALL THE DATA WHERE B.ROOM_ID  = R.ID
SELECT *
FROM bookings B
         JOIN rooms r on B.room_id = r.id;


-- ? WHEN SELECTING ACROSS MULTIPLE DATABASES USE THERE NAMES
SELECT *
FROM armyoftheload.bookings B
         JOIN sakila.address r on B.room_id = r.id;


-- * THIS IS CALLED IMPLICIT JOIN

SELECT *
FROM bookings b,romms r
WHERE b.room_id = r.id;



-- ! LEFT AND RIGHT JOIN
-- ? GETT ALL THE RIGHT TABLE DATA WHEATHER THE CONDITION TRUE OR NOT
SELECT *
FROM bookings
         RIGHT JOIN rooms r on bookings.room_id = r.id;
-- ? GETT ALL THE LEFT TABLE DATA WHEATHER THE CONDITION TRUE OR NOT
SELECT *
FROM bookings
         LEFT JOIN rooms r on bookings.room_id = r.id;



-- ! CROSS JOIN
--? THIS WILL PRODUCE MULTIPLICATION OF EVERY COMBINATION OF EACH ROW
SELECT *
FROM mg_properties mg
         CROSS JOIN mg_properties;

-- * THIS CAN BE TYPE AS IMPLICITE WAY TO 