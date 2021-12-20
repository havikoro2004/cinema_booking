/** Creation de l'user "Maddy_11" qui a le rôle manager avec Tous les droits sur la base de donnée **/
CREATE USER 'Maddy11'@'localhost' IDENTIFIED BY '$2y$10$PSdPi3vgnGjF5tYk71hqq.5iQ9hsN3e0KHZ5aJQhtkhfT6ftUX8Bi';
GRANT ALL
    ON booking.*
    TO 'Maddy11'@'localhost';

/** Creation de l'user Jenine02 qui a le rôle de Lecture seul des tables suivantes movies,seances,cinemas,halls **/
CREATE USER 'Jenine02'@'localhost' IDENTIFIED BY '$2y$10$9Mqq.W/fSYlL4wVuYWmqb.TbF2pQDvk1HwEfcYZD59DRiLLNzmkla';
GRANT SELECT
    ON booking.movies
    TO 'Jenine02'@'localhost';
GRANT SELECT
    ON booking.seances
    TO 'Jenine02'@'localhost';
GRANT SELECT
    ON booking.cinemas
    TO 'Jenine02'@'localhost';
GRANT SELECT
    ON booking.halls
    TO 'Jenine02'@'localhost';
