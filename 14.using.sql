--? if column name is exactly same in to tables we can use "USE" keyword

SELECT *
FROM bookings
         join bookings_guest bg USING (ota_reservation_id);


-- * we can use this with both left and right joins