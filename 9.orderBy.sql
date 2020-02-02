
-- ? can use multiple colums and aliases and diffrent orders 

SELECT guest_name, 23 AS test, room_id, ota_reservation_id
FROM bookings
ORDER BY test, room_id ASC, ota_reservation_id DESC;

