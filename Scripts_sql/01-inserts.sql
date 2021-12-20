/** Insert into table customers **/
INSERT INTO customers (first_name, last_name, email, password, birth_day,tel_number) VALUES 
('Peterus', 'Abramovitz', 'ppembry0@phoca.cz', '$2y$10$7HeFCHLE8gmlYF6s/xSEfej0H9ZjrGxLsoJA2OzWapaWuV6VJPDtC', '1990-05-21','0674176789'),
('Janith', 'Demogeot', 'jdoley1@odnoklassniki.ru', '$2y$10$9m6xvrKpi6yh1.1hY.kTwOLLphFNmPN6wPqiCXFnBQpsgLsgGPyK.', '1982-11-02','0636221478'),
('Oliviero', 'McKague', 'omarjoribanks2@w3.org', '$2y$10$6mf6rGb1x9t.hsiDisWDae0hOixX/7UoHpbyeYEsMuuaOYpNLPvYi', '2000-12-31','0716475899'),
('Melinde', 'Murrow', 'mchrstine3@privacy.gov.au', '$2y$10$bKzTRj5DcZ89Ha9kt5DRqecXwj7.IuNbrbl0H965HhbNTHigQex92', '1982-08-16','0717642589');

/** Insert into table cinemas **/
INSERT INTO cinemas (name, adress, postal_code, city, tel_number, halls_number) VALUES 
('ciel bleu', '106 avenue des 4 cantons', '74000','Annemasse','0235469874', 7),
('Rivalee', '2012 syba 16 ', '75000','Thonon','' '0123525468', 5),
('Birk', 'socoma 1 N 1008', '70000','Ivetot', '0125468978', 8);

/** Insert into table roles **/
INSERT INTO roles (name) VALUES ('admin'),('manager');

/** Insert into table users (managers) **/
INSERT INTO users (user_name, password,role_id,id_cinema) VALUES 
('Flossy55', '$2y$10$9Mqq.W/fSYlL4wVuYWmqb.TbF2pQDvk1HwEfcYZD59DRiLLNzmkla',2,1),
('Jenine02', '$2y$10$tskSAHmapUdZQsk5YSYGTuXM/dBCykn.TNcRtyIh/ygAf9XOzucLm',2,2),
('Marie03', '$2y$10$tskSAHmapUdZQsk5YSYGTuX1445dsjklmNcRtyIh/ygAf9XOzucLm',2,3),
('Maddy11', '$2y$10$PSdPi3vgnGjF5tYk71hqq.5iQ9hsN3e0KHZ5aJQhtkhfT6ftUX8Bi',1,NULL);

/**Insert into table halls **/
INSERT INTO halls (name,number_places,id_cinema) VALUES 
('D200',200,1),
('D102',200,1),
('E013',100,1),
('D201',300,1),
('F016',200,1),
('G012',100,1),
('S015',100,2),
('B412',200,2),
('B916',100,2),
('D103',300,2),
('I105',200,2),
('D913',170,3),
('E654',200,3),
('Q123',100,3),
('F7S6',100,3);

/** Insert into table movies **/
INSERT INTO movies (title, duration, gender, director, description) VALUES 
('Blood Sport','2h30','Fiction','John Doe','ante elit. Suspendisse lacinia orci non bibendum cursus. 
Morbi at ipsum mi. Nulla quis interdum ipsum. Ut pharetra sodales elit, et volutpat metus tincidunt a. 
Nunc quis quam dolor. Pellentesque sem purus, bibendum sed semper ut, porttitor vitae lacus. Cras aliquet 
tellus et ante iaculis hendrerit.'),
('Moi et lui','1h30','Amour','Omar Sy',' et ante elit. Suspendisse lacinia orci non bibendum cursus. 
Morbi at ipsum mi. Nulla quis interdum ipsum. Ut pharetra sodales elit, et volutpat metus tincidunt a. 
Nunc quis quam dolor. Pellentesque sem purus, bibendum sed semper ut, porttitor vitae lacus. Cras 
aliquet tellus et ante iaculis hendrerit.'),
('Mon père','2h00','Drame','Eric Laure',' et ante elit. Suspendisse lacinia orci non bibendum cursus. 
Morbi at ipsum mi. Nulla quis interdum ipsum. Ut pharetra sodales elit, et volutpat metus tincidunt a. 
Nunc quis quam dolor. Pellentesque sem purus, bibendum sed semper ut, porttitor vitae lacus. Cras 
aliquet tellus et ante iaculis hendrerit.');

/** Insert into table seances **/
INSERT INTO seances (date,time,id_hall,id_movie) VALUES 
('2021-02-20','17:15:00',1,1),
('2021-07-20','18:15:00',7,2),
('2021-01-12','16:15:00',12,2),
('2021-03-03','19:15:00',3,3);

/** Insert into table prices **/
INSERT INTO prices (type_price,price) VALUES ('junior' ,'5.90'),('student','7.60'),('adult','9.20');

/** Insert into table booking **/
INSERT INTO booking (is_payed, id_customer, id_seance) VALUES (0,1,1),(1,2,2),(1,3,1),(1,4,4);

/** Insert into table places **/
INSERT INTO places (code, id_price, id_booking) VALUES ('0sldk54789',1,1),('0011223565',2,1),('5465213256',3,2),('sjd21d5s6q',3,4),('sj25475s6q',3,3)






