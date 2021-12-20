/** Sélectionner le titre d'un film, le cinéma ou il sera diffuser , la séance la salle ou il est diffuser
 et le nombre de places disponible dans chaque salle **/

SELECT movies.title,movies.duration,seances.date AS date ,seances.time as time,cinemas.name AS cinema,cinemas.city,
halls.name AS hall,halls.number_places AS Nbr_chairs, COUNT(places.id) AS places_booked,(number_places-(COUNT(places.id)))
AS available FROM places JOIN booking ON places.id_booking = booking.id RIGHT JOIN seances ON booking.id_seance = seances.id
JOIN halls ON seances.id_hall = halls.id JOIN cinemas ON halls.id_cinema = cinemas.id JOIN movies ON seances.id_movie = movies.id
GROUP BY id_seance

/** Sélectionner les infos d'un client avec sa reservation et le nombre de places qu'il a pris ainsi que 
le total prix et si c'est payé ou pas **/

SELECT customers.first_name AS first_name,customers.last_name AS last_name,customers.email AS email ,
customers.tel_number AS tel,COUNT(places.id) AS Nbr_places, GROUP_CONCAT(prices.type_price,'') AS type,
GROUP_CONCAT(prices.price,'') AS prices ,SUM(prices.price) AS total_pay , booking.is_payed
from places JOIN booking ON places.id_booking = booking.id JOIN prices ON
places.id_price = prices.id JOIN customers ON booking.id_customer = customers.id GROUP BY booking.id