DROP SCHEMA IF EXISTS booking;
CREATE SCHEMA IF NOT EXISTS booking CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;

CREATE TABLE booking.customers (
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL  ,
    first_name VARCHAR(30) NOT NULL ,
    last_name VARCHAR(30) NOT NULL ,
    email VARCHAR(100) NOT NULL UNIQUE ,
    password VARCHAR(60) NOT NULL ,
    birth_day DATE NOT NULL ,
    tel_number VARCHAR(15)
)   ENGINE=InnoDB;

CREATE TABLE booking.cinemas(
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    name VARCHAR(30) NOT NULL ,
    adress VARCHAR(200) NOT NULL ,
    postal_code VARCHAR(5) NOT NULL ,
    city VARCHAR(30) NOT NULL ,
    tel_number VARCHAR(15) NOT NULL ,
    halls_number INT(11) NOT NULL
)   ENGINE=InnoDB;

CREATE TABLE booking.users(
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    user_name VARCHAR(30) NOT NULL UNIQUE ,
    password VARCHAR(60) NOT NULL,
    role_id VARCHAR(11) NOT NULL,
    id_cinema INT(11),
    FOREIGN KEY (id_cinema) REFERENCES cinemas(id)
)   ENGINE=InnoDB;

CREATE TABLE booking.roles(
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    name VARCHAR(30) NOT NULL
)   ENGINE=InnoDB;

CREATE TABLE booking.halls(
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL ,
    number_places INT(11) NOT NULL ,
    id_cinema INT(11) NOT NULL ,
    PRIMARY KEY (id,id_cinema),
    FOREIGN KEY (id_cinema) REFERENCES cinemas(id) ON DELETE CASCADE

)   ENGINE=InnoDB;

CREATE TABLE booking.movies(
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    title VARCHAR(30) NOT NULL ,
    duration VARCHAR(30) NOT NULL ,
    gender VARCHAR(30) NOT NULL ,
    director VARCHAR(30) NOT NULL ,
    description TEXT NOT NULL
)   ENGINE=InnoDB;

CREATE TABLE booking.seances (
    id INT(11) AUTO_INCREMENT NOT NULL ,
    date DATE NOT NULL ,
    time TIME NOT NULL ,
    id_hall INT(11) NOT NULL ,
    id_movie INT(11) NOT NULL ,
    PRIMARY KEY (id,id_movie),
    FOREIGN KEY (id_hall) REFERENCES halls(id),
    FOREIGN KEY (id_movie) REFERENCES movies(id) ON DELETE CASCADE
)   ENGINE=InnoDB;

CREATE TABLE booking.booking(
    id INT(11) AUTO_INCREMENT NOT NULL ,
    date DATETIME NOT NULL DEFAULT NOW(),
    is_payed TINYINT(1) NOT NULL,
    id_customer INT(11) NOT NULL ,
    id_seance INT(11) NOT NULL ,
    PRIMARY KEY (id,id_customer),
    FOREIGN KEY (id_customer) REFERENCES customers(id) ON DELETE CASCADE ,
    FOREIGN KEY (id_seance) REFERENCES seances(id)
)   ENGINE=InnoDB;

CREATE TABLE booking.prices(
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    type_price VARCHAR(30) NOT NULL ,
    price DECIMAL(10,2) NOT NULL
)   ENGINE=InnoDB;

CREATE TABLE booking.places(
    id INT(11) AUTO_INCREMENT NOT NULL ,
    code CHAR(10) NOT NULL ,
    id_price INT(11) NOT NULL ,
    id_booking INT(11) NOT NULL ,
    PRIMARY KEY (id,id_booking),
    FOREIGN KEY (id_price) REFERENCES prices(id),
    FOREIGN KEY (id_booking) REFERENCES booking(id) ON DELETE CASCADE
)   ENGINE=InnoDB;