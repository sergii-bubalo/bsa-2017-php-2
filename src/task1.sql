SELECT u.*
FROM `users` as u
  JOIN `bookings` as b
    ON b.user_id = u.id
  JOIN `tickets` as t
    ON t.id = b.ticket_id
WHERE u.age > 25
GROUP BY u.id
HAVING SUM(t.price) > 400;