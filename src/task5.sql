SELECT * FROM `users` as u
WHERE u.id NOT IN
(SELECT b.user_id FROM `bookings` as b JOIN `tickets` as t ON t.id = b.ticket_id WHERE country = 'Aruba');