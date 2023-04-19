CREATE SCHEMA data;
CREATE TABLE data.user_data (
  id serial PRIMARY KEY,
  name varchar(100),
  second_name varchar(100),
  email varchar(100),
  phone_number varchar(100)
);
CREATE TABLE data.vehicle_type (
    id serial PRIMARY KEY,
    name varchar(50)
);
CREATE TABLE data.passenger(
    id serial PRIMARY KEY
);
CREATE TABLE data.passenger_rate(
    id serial PRIMARY KEY,
    behavior int NOT NULL,
    punctuality int NOT NULL
);
CREATE TABLE data.driver_rate(
    id serial PRIMARY KEY,
    skills int NOT NULL ,
    vehicle_condition int NOT NULL,
    law_obeying int NOT NULL

);
CREATE TABLE data.driver(
    id serial PRIMARY KEY,
    photo bytea
);
CREATE TABLE data.driver_vehicle (
    id serial PRIMARY KEY,
    registration_number varchar(25),
    color varchar(25)
);
CREATE TABLE data.vehicle (
    id serial PRIMARY KEY,
    brand varchar (100),
    model varchar (100)
);
CREATE TABLE data.ride(
    id serial PRIMARY KEY,
    distance decimal NOT NULL
);
CREATE TABLE data.payment_type (
    id serial PRIMARY KEY,
    name varchar (50) NOT NULL
);
CREATE TABLE data.payment (
    id serial PRIMARY KEY,
    amount money NOT NULL
);
CREATE TABLE data.address (
    id serial PRIMARY KEY,
    street  varchar (100) NOT NULL ,
    house_number varchar (25),
    apartment_number varchar (25),
    zip_code varchar (25),
    city varchar (25) NOT NULL ,
    country varchar (25) NOT NULL
);
CREATE TABLE data.area(
    id serial PRIMARY KEY,
    name varchar (255) NOT NULL
);
INSERT INTO data.user_data
(name, second_name, email, phone_number)
VALUES
('Adam','Pawlak','apaw@wp.pl','+48123321444'),
('Michał','Jokosz','pajok@gmail.com','+48409293871'),
('ATomek','Tomkowy','tt@o2.pl','+48456456456'),
('Romek','Romkowicz','romramrom@wp.pl','+48999999999'),
('Tytus','Tytusek','tystys@tys.pl','+48888888888');

INSERT INTO data.address
(street, house_number, apartment_number, zip_code, city, country)
VALUES
('Cieszyńskiego','5','4','80-766','Gdańsk','Polska'),
('Podmiejska','2','7','70-766','Gdańsk','Polska'),
('Szpitalna','4','9','19-200','Grajewo','Polska'),
('Ekologiczna','10','1','19-200','Grajewo','Polska'),
('Wojska Polskiego','50','3','19-200','Grajewo','Polska');

INSERT INTO data.area
(name)
VALUES
('Grajewo Północ'),
('Grajewo Południe'),
('Gdańsk Orunia'),
('Gdańsk Chełm'),
('Gdańsk Śródmieście');

INSERT INTO  data.driver_rate
(skills, vehicle_condition, law_obeying)
VALUES
(3,4,5),
(5,5,5),
(5,2,3),
(4,5,4),
(5,5,4);

INSERT INTO data.driver_vehicle
(registration_number, color)
VALUES
('BGR43412','Czarny'),
('GD77621','Fioletowy'),
('BGR12312','Biały'),
('GD890001','Zielony'),
('Gd33344','Szary');

INSERT INTO data.passenger_rate
(behavior, punctuality)
VALUES
(5,5),
(5,4),
(3,2),
(1,3),
(2,5);

INSERT INTO data.payment
(amount)
VALUES
(123.22),
(32.33),
(11.34),
(312.99),
(79.01);

INSERT INTO data.payment_type
(name)
VALUES
('Gotówka'),
('BLIK'),
('Przelew'),
('Karta płatnicza'),
('Tazosy');

INSERT INTO data.ride
(distance)
VALUES
(30.1),
(6.2),
(1.9),
(80.22),
(21);

INSERT INTO data.vehicle
(brand, model)
VALUES
('Opel','Astra'),
('Opel','Corsa'),
('Audi','A5'),
('BMW','5'),
('Alfa','159');

INSERT INTO data.vehicle_type
(name)
VALUES
('Sedan'),
('SUV'),
('MiniVan'),
('Coupe'),
('Cabrio');

SELECT * FROM data.address;
SELECT * FROM data.area;
SELECT * FROM data.driver;
SELECT * FROM data.driver_vehicle;
SELECT * FROM data.passenger;
SELECT * FROM data.driver_rate;
SELECT * FROM data.passenger_rate;
SELECT * FROM data.payment;
SELECT * FROM data.payment_type;
SELECT * FROM data.ride;
SELECT * FROM data.user_data;
SELECT * FROM data.vehicle;
SELECT * FROM data.vehicle_type;






