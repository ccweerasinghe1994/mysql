

SELECT a.reference, b.ota_reservation_id
FROM bookings b
         JOIN bookings a ON a.reference = b.ota_reservation_id;