
-- ! AND OPERTATOR
-- ? when using and it checked the both result and get the data 

SELECT *
FROM bookings
WHERE checkout = "2019-11-10"
  AND checkin > "2019-11-1";



-- ! OR OPERTATOR

-- ? get the data wich satisfies either of the conditions
SELECT *
FROM bookings
WHERE checkout = "2019-11-10"
  OR checkin > "2019-11-1";

-- ! AND has a grater presicence than or when using combination 
-- * it is good idea to use brackets