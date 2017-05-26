SELECT DISTINCT u.*
FROM `users` as u
  JOIN `bookings` as b
    ON b.user_id = u.id;