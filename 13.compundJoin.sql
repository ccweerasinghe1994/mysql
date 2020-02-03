
-- ? THIS IS USED WHEN THERE IS MULTIPLE COLUMNS INVOLVED
SELECT *
FROM bookings b
         INNER JOIN rooms r on b.room_id = r.id
    AND b.ota_reservation_id = r.id