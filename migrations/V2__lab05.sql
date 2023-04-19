DELETE FROM data.driver_rate WHERE id > 0;
DROP TABLE data.driver_rate;
CREATE TABLE data.driver_rate(
    id serial PRIMARY KEY,
    skills int NOT NULL ,
    vehicle_condition int NOT NULL,
    law_obeying int NOT NULL


);
INSERT INTO data.driver_rate
(skills, vehicle_condition, law_obeying)
VALUES
(3,4,5),
(5,5,5),
(5,2,3),
(4,5,4),
(5,5,4);

ALTER TABLE data.passenger
    ADD COLUMN user_data_id INT;
ALTER TABLE data.passenger
    ADD CONSTRAINT id_user_data
    FOREIGN KEY (user_data_id)
    REFERENCES data.user_data(id);

ALTER TABLE data.passenger
    ADD COLUMN preferred_payment_type_id INT;
ALTER TABLE data.passenger
    ADD CONSTRAINT preferred_payment_type_id
    FOREIGN KEY (preferred_payment_type_id)
    REFERENCES data.payment_type(id);

ALTER TABLE data.passenger_rate
    ADD COLUMN passenger_id INT ;
ALTER TABLE data.passenger_rate
    ADD CONSTRAINT passenger_id
    FOREIGN KEY (passenger_id)
    REFERENCES data.passenger(id);

ALTER TABLE data.passenger_rate
    ADD COLUMN ride_id INT;
ALTER TABLE data.passenger_rate
ADD CONSTRAINT ride_id
FOREIGN KEY (ride_id)
REFERENCES data.ride(id);

ALTER TABLE data.driver_rate
    ADD COLUMN driver_id INT;
ALTER TABLE data.driver_rate
    ADD CONSTRAINT driver_id
    FOREIGN KEY (driver_id)
    REFERENCES data.driver(id);

ALTER TABLE data.driver_rate
    ADD COLUMN ride_id INT;
ALTER TABLE data.driver_rate
ADD CONSTRAINT ride_id
FOREIGN KEY (ride_id)
REFERENCES data.ride(id);

ALTER TABLE data.driver
    ADD COLUMN user_data_id INT;
ALTER TABLE data.driver
    ADD CONSTRAINT id_user_data
    FOREIGN KEY (user_data_id)
    REFERENCES data.user_data(id);

ALTER TABLE data.driver_vehicle
    ADD COLUMN vehicle_id INT;
ALTER TABLE data.driver_vehicle
    ADD CONSTRAINT vehicle_id
    FOREIGN KEY (vehicle_id)
    REFERENCES data.vehicle(id);

ALTER TABLE data.driver_vehicle
    ADD COLUMN driver_id INT;
ALTER TABLE data.driver_vehicle
    ADD CONSTRAINT driver_id
    FOREIGN KEY (driver_id)
    REFERENCES data.driver(id);

ALTER TABLE data.vehicle
    ADD COLUMN vehicle_type_id INT;
ALTER TABLE data.vehicle
    ADD CONSTRAINT vehicle_type_id
    FOREIGN KEY (vehicle_type_id)
    REFERENCES data.vehicle_type(id);

ALTER TABLE data.ride
    ADD COLUMN driver_id INT;
ALTER TABLE data.ride
    ADD CONSTRAINT driver_id
    FOREIGN KEY (driver_id)
    REFERENCES data.driver(id);

ALTER TABLE data.ride
    ADD COLUMN passenger_id INT ;
ALTER TABLE data.ride
    ADD CONSTRAINT passenger_id
    FOREIGN KEY (passenger_id)
    REFERENCES data.passenger(id);

ALTER TABLE data.ride
    ADD COLUMN payment_id INT UNIQUE;
ALTER TABLE data.ride
    ADD CONSTRAINT payment_id
    FOREIGN KEY (payment_id)
    REFERENCES data.payment(id);

ALTER TABLE data.ride
    ADD COLUMN pick_up_address_id INT;
ALTER TABLE data.ride
    ADD CONSTRAINT pick_up_address_id
    FOREIGN KEY (pick_up_address_id)
    REFERENCES data.address(id);

ALTER TABLE data.ride
    ADD COLUMN destination_address_id INT;
ALTER TABLE data.ride
    ADD CONSTRAINT destination_address_id
    FOREIGN KEY (destination_address_id)
    REFERENCES data.address(id);

ALTER TABLE data.payment
    ADD COLUMN payment_type_id INT;
ALTER TABLE data.payment
    ADD CONSTRAINT payment_type_id
    FOREIGN KEY (payment_type_id)
    REFERENCES data.payment_type(id);

ALTER TABLE data.address
    ADD COLUMN area_id INT;
ALTER TABLE data.address
    ADD CONSTRAINT area_id
    FOREIGN KEY (area_id)
    REFERENCES data.area(id);


insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Monterey', '662', '804', '62150', 'Putrajaya', 'Malaysia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Londonderry', '49', '43946', null, 'Citatah Kaler', 'Indonesia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Golden Leaf', '51259', '41531', null, 'Wakaseko', 'Indonesia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Summerview', '3651', '7', null, 'Mapiri', 'Bolivia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Redwing', '12090', '639', null, 'Yong’an', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Old Gate', '89146', '3', null, 'Kawm Umbū', 'Egypt');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Lakewood Gardens', '72', '646', '5708', 'Alice', 'South Africa');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Truax', '18', '185', 'T4J', 'Ponoka', 'Canada');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Lindbergh', '45030', '2', '057869', 'Turbo', 'Colombia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Talmadge', '9', '47', null, 'Hangchuan', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Sachtjen', '55650', '1925', '23860-000', 'Mangaratiba', 'Brazil');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Ridgeway', '182', '39678', null, 'Zhouhe', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Valley Edge', '98201', '5506', '549 01', 'Přibyslav', 'Czech Republic');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Debra', '6370', '95', '680011', 'Bucaramanga', 'Colombia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Sachtjen', '5367', '01426', '701 86', 'Örebro', 'Sweden');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Bunker Hill', '532', '65', null, 'Urzuf', 'Ukraine');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Scofield', '36', '1', null, 'Bishan', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Bartelt', '21', '9946', '422396', 'Tetyushi', 'Russia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Morningstar', '6217', '35221', null, 'Naran-mandokhu Somon', 'Mongolia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Darwin', '54', '835', '33715', 'Saint Petersburg', 'United States');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Lien', '6704', '972', '606800', 'Uren’', 'Russia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Sullivan', '572', '21989', '94224 CEDEX', 'Charenton-le-Pont', 'France');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Valley Edge', '056', '7', null, 'Qinglin', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Mayer', '56589', '5', '7407', 'Kajatian', 'Philippines');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Iowa', '1', '77', '102042', 'Priupskiy', 'Russia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Florence', '48187', '64996', null, 'Owando', 'Republic of the Congo');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Tony', '313', '0169', null, 'Yishi', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Michigan', '8', '77', null, 'Puzi', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Clemons', '86453', '30040', null, 'Baturyn', 'Ukraine');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Express', '7', '8', '445550', 'Obsharovka', 'Russia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Little Fleur', '3', '57289', null, 'Geshan', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Emmet', '89', '419', null, 'Ganta', 'Liberia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Upham', '263', '30', '6714', 'San Sebastian', 'Philippines');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Porter', '24148', '30', '357239', 'Nagutskoye', 'Russia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Katie', '30839', '04', '8004', 'Zürich', 'Switzerland');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Leroy', '4246', '670', '413138', 'Privolzhskiy', 'Russia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Marquette', '9', '188', '442-0889', 'Kozakai-chō', 'Japan');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Burrows', '281', '1725', '94154', 'San Francisco', 'United States');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Division', '36', '6948', '4625-604', 'Lourido', 'Portugal');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Harbort', '67147', '354', null, 'Huangbei', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Eggendart', '2925', '89218', null, 'Bozhou', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Menomonie', '8', '34016', null, 'Fenghuangshan', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Warrior', '2199', '5', 'P7L', 'Neebing', 'Canada');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Crownhardt', '6', '01', '6030-006', 'Vila Velha de Ródão', 'Portugal');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Erie', '83890', '5684', null, 'Chama', 'Zambia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Daystar', '0', '5', null, 'Jayawangi', 'Indonesia');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Aberg', '13528', '67', null, 'Beidong', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Dwight', '264', '3', '72140', 'Si Prachan', 'Thailand');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Kensington', '1', '9', null, 'Guancangping', 'China');
insert into data.address (street, house_number, apartment_number, zip_code, city, country) values ('Autumn Leaf', '6', '97024', '33600-000', 'Pedro Leopoldo', 'Brazil');


insert into data.area (name) values ('Jiaoyuan');
insert into data.area (name) values ('Geshan');
insert into data.area (name) values ('Cikulahan');
insert into data.area (name) values ('Tianqian');
insert into data.area (name) values ('Batulawang');
insert into data.area (name) values ('Banes');
insert into data.area (name) values ('Nizhnedevitsk');
insert into data.area (name) values ('Pokrov');
insert into data.area (name) values ('Wakkanai');
insert into data.area (name) values ('Kebon');
insert into data.area (name) values ('Momanalu');
insert into data.area (name) values ('Keluke');
insert into data.area (name) values ('Nglorogan');
insert into data.area (name) values ('New York City');
insert into data.area (name) values ('Wola Sernicka');
insert into data.area (name) values ('Seixas do Douro');
insert into data.area (name) values ('Huibu');
insert into data.area (name) values ('Vynohradove');
insert into data.area (name) values ('Vila Fria');
insert into data.area (name) values ('El Hermel');
insert into data.area (name) values ('Budapest');
insert into data.area (name) values ('Quanzhou');
insert into data.area (name) values ('Amieira do Tejo');
insert into data.area (name) values ('Hanna');
insert into data.area (name) values ('Zhangcun');
insert into data.area (name) values ('Santa Rosa');
insert into data.area (name) values ('Clermont-Ferrand');
insert into data.area (name) values ('Göteborg');
insert into data.area (name) values ('Oslo');
insert into data.area (name) values ('Kragan');
insert into data.area (name) values ('At Tibnī');
insert into data.area (name) values ('Hovtamej');
insert into data.area (name) values ('Теарце');
insert into data.area (name) values ('Rio Negro');
insert into data.area (name) values ('Novopavlovsk');
insert into data.area (name) values ('Tongyu');
insert into data.area (name) values ('Ewirgol');
insert into data.area (name) values ('Langarūd');
insert into data.area (name) values ('Rozivka');
insert into data.area (name) values ('Viamão');
insert into data.area (name) values ('Primorka');
insert into data.area (name) values ('Dueñas');
insert into data.area (name) values ('Gramaços');
insert into data.area (name) values ('Hengxi');
insert into data.area (name) values ('Trelleborg');
insert into data.area (name) values ('Pangnirtung');
insert into data.area (name) values ('Cacaopera');
insert into data.area (name) values ('Yixin');
insert into data.area (name) values ('Dana');
insert into data.area (name) values ('Sabhā');


insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 3, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 3, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 3, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 3, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 5, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 3, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 5, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 1, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 4, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 1, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 3, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 4, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 5, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 4, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 3, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (5, 3, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 1, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 5, 4);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 3, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 5, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 1, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (5, 4, 4);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (5, 4, 4);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 1, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 2, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 3, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (5, 4, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 1, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (5, 3, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 2, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 5, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 4, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 2, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (3, 1, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (5, 5, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 4, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 2, 4);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 2, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 5, 4);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 2, 1);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (5, 3, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 4, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 2, 2);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 1, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 5, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (1, 3, 3);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 2, 5);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 1, 4);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (4, 1, 4);
insert into data.driver_rate (skills, vehicle_condition, law_obeying) values (2, 2, 2);

insert into data.driver_vehicle (registration_number, color) values (16147, 'Violet');
insert into data.driver_vehicle (registration_number, color) values (84277, 'Aquamarine');
insert into data.driver_vehicle (registration_number, color) values (41747, 'Puce');
insert into data.driver_vehicle (registration_number, color) values (64278, 'Mauv');
insert into data.driver_vehicle (registration_number, color) values (69092, 'Puce');
insert into data.driver_vehicle (registration_number, color) values (49546, 'Crimson');
insert into data.driver_vehicle (registration_number, color) values (47741, 'Pink');
insert into data.driver_vehicle (registration_number, color) values (25491, 'Yellow');
insert into data.driver_vehicle (registration_number, color) values (36403, 'Teal');
insert into data.driver_vehicle (registration_number, color) values (87330, 'Goldenrod');
insert into data.driver_vehicle (registration_number, color) values (2322, 'Fuscia');
insert into data.driver_vehicle (registration_number, color) values (96840, 'Turquoise');
insert into data.driver_vehicle (registration_number, color) values (90923, 'Indigo');
insert into data.driver_vehicle (registration_number, color) values (86355, 'Yellow');
insert into data.driver_vehicle (registration_number, color) values (7511, 'Goldenrod');
insert into data.driver_vehicle (registration_number, color) values (13909, 'Yellow');
insert into data.driver_vehicle (registration_number, color) values (16917, 'Fuscia');
insert into data.driver_vehicle (registration_number, color) values (17739, 'Indigo');
insert into data.driver_vehicle (registration_number, color) values (97904, 'Blue');
insert into data.driver_vehicle (registration_number, color) values (53849, 'Fuscia');
insert into data.driver_vehicle (registration_number, color) values (81113, 'Red');
insert into data.driver_vehicle (registration_number, color) values (45692, 'Purple');
insert into data.driver_vehicle (registration_number, color) values (67201, 'Fuscia');
insert into data.driver_vehicle (registration_number, color) values (69058, 'Aquamarine');
insert into data.driver_vehicle (registration_number, color) values (22830, 'Goldenrod');
insert into data.driver_vehicle (registration_number, color) values (64478, 'Orange');
insert into data.driver_vehicle (registration_number, color) values (97164, 'Blue');
insert into data.driver_vehicle (registration_number, color) values (10286, 'Puce');
insert into data.driver_vehicle (registration_number, color) values (69335, 'Yellow');
insert into data.driver_vehicle (registration_number, color) values (95352, 'Blue');
insert into data.driver_vehicle (registration_number, color) values (59210, 'Goldenrod');
insert into data.driver_vehicle (registration_number, color) values (9511, 'Orange');
insert into data.driver_vehicle (registration_number, color) values (90059, 'Khaki');
insert into data.driver_vehicle (registration_number, color) values (23099, 'Purple');
insert into data.driver_vehicle (registration_number, color) values (14360, 'Goldenrod');
insert into data.driver_vehicle (registration_number, color) values (71174, 'Aquamarine');
insert into data.driver_vehicle (registration_number, color) values (51741, 'Yellow');
insert into data.driver_vehicle (registration_number, color) values (42371, 'Aquamarine');
insert into data.driver_vehicle (registration_number, color) values (41070, 'Aquamarine');
insert into data.driver_vehicle (registration_number, color) values (63515, 'Khaki');
insert into data.driver_vehicle (registration_number, color) values (31826, 'Violet');
insert into data.driver_vehicle (registration_number, color) values (42132, 'Red');
insert into data.driver_vehicle (registration_number, color) values (39137, 'Khaki');
insert into data.driver_vehicle (registration_number, color) values (2140, 'Fuscia');
insert into data.driver_vehicle (registration_number, color) values (93112, 'Crimson');
insert into data.driver_vehicle (registration_number, color) values (67248, 'Khaki');
insert into data.driver_vehicle (registration_number, color) values (30202, 'Goldenrod');
insert into data.driver_vehicle (registration_number, color) values (8249, 'Puce');
insert into data.driver_vehicle (registration_number, color) values (71253, 'Crimson');
insert into data.driver_vehicle (registration_number, color) values (43253, 'Puce');


insert into data.passenger_rate (behavior, punctuality) values (1, 5);
insert into data.passenger_rate (behavior, punctuality) values (3, 2);
insert into data.passenger_rate (behavior, punctuality) values (5, 1);
insert into data.passenger_rate (behavior, punctuality) values (2, 4);
insert into data.passenger_rate (behavior, punctuality) values (2, 2);
insert into data.passenger_rate (behavior, punctuality) values (5, 3);
insert into data.passenger_rate (behavior, punctuality) values (4, 1);
insert into data.passenger_rate (behavior, punctuality) values (4, 3);
insert into data.passenger_rate (behavior, punctuality) values (5, 3);
insert into data.passenger_rate (behavior, punctuality) values (5, 2);
insert into data.passenger_rate (behavior, punctuality) values (5, 1);
insert into data.passenger_rate (behavior, punctuality) values (4, 3);
insert into data.passenger_rate (behavior, punctuality) values (2, 3);
insert into data.passenger_rate (behavior, punctuality) values (2, 1);
insert into data.passenger_rate (behavior, punctuality) values (5, 2);
insert into data.passenger_rate (behavior, punctuality) values (5, 5);
insert into data.passenger_rate (behavior, punctuality) values (5, 4);
insert into data.passenger_rate (behavior, punctuality) values (5, 1);
insert into data.passenger_rate (behavior, punctuality) values (4, 5);
insert into data.passenger_rate (behavior, punctuality) values (2, 1);
insert into data.passenger_rate (behavior, punctuality) values (5, 3);
insert into data.passenger_rate (behavior, punctuality) values (5, 1);
insert into data.passenger_rate (behavior, punctuality) values (3, 3);
insert into data.passenger_rate (behavior, punctuality) values (4, 3);
insert into data.passenger_rate (behavior, punctuality) values (3, 2);
insert into data.passenger_rate (behavior, punctuality) values (3, 1);
insert into data.passenger_rate (behavior, punctuality) values (3, 4);
insert into data.passenger_rate (behavior, punctuality) values (4, 5);
insert into data.passenger_rate (behavior, punctuality) values (1, 1);
insert into data.passenger_rate (behavior, punctuality) values (4, 3);
insert into data.passenger_rate (behavior, punctuality) values (5, 3);
insert into data.passenger_rate (behavior, punctuality) values (1, 2);
insert into data.passenger_rate (behavior, punctuality) values (4, 5);
insert into data.passenger_rate (behavior, punctuality) values (5, 5);
insert into data.passenger_rate (behavior, punctuality) values (5, 2);
insert into data.passenger_rate (behavior, punctuality) values (1, 4);
insert into data.passenger_rate (behavior, punctuality) values (5, 3);
insert into data.passenger_rate (behavior, punctuality) values (5, 1);
insert into data.passenger_rate (behavior, punctuality) values (2, 2);
insert into data.passenger_rate (behavior, punctuality) values (2, 5);
insert into data.passenger_rate (behavior, punctuality) values (2, 3);
insert into data.passenger_rate (behavior, punctuality) values (5, 1);
insert into data.passenger_rate (behavior, punctuality) values (1, 5);
insert into data.passenger_rate (behavior, punctuality) values (2, 1);
insert into data.passenger_rate (behavior, punctuality) values (1, 5);
insert into data.passenger_rate (behavior, punctuality) values (3, 5);
insert into data.passenger_rate (behavior, punctuality) values (2, 5);
insert into data.passenger_rate (behavior, punctuality) values (3, 3);
insert into data.passenger_rate (behavior, punctuality) values (1, 5);
insert into data.passenger_rate (behavior, punctuality) values (4, 3);


insert into data.payment (amount) values (846.6);
insert into data.payment (amount) values (96.05);
insert into data.payment (amount) values (540.54);
insert into data.payment (amount) values (612.38);
insert into data.payment (amount) values (194.1);
insert into data.payment (amount) values (461.99);
insert into data.payment (amount) values (623.04);
insert into data.payment (amount) values (249.41);
insert into data.payment (amount) values (734.75);
insert into data.payment (amount) values (95.21);
insert into data.payment (amount) values (608.86);
insert into data.payment (amount) values (156.62);
insert into data.payment (amount) values (947.27);
insert into data.payment (amount) values (293.98);
insert into data.payment (amount) values (244.76);
insert into data.payment (amount) values (308.34);
insert into data.payment (amount) values (62.75);
insert into data.payment (amount) values (372.6);
insert into data.payment (amount) values (216.03);
insert into data.payment (amount) values (866.14);
insert into data.payment (amount) values (607.55);
insert into data.payment (amount) values (646.55);
insert into data.payment (amount) values (112.3);
insert into data.payment (amount) values (889.82);
insert into data.payment (amount) values (17.42);
insert into data.payment (amount) values (825.0);
insert into data.payment (amount) values (254.41);
insert into data.payment (amount) values (510.78);
insert into data.payment (amount) values (334.23);
insert into data.payment (amount) values (126.31);
insert into data.payment (amount) values (957.23);
insert into data.payment (amount) values (765.43);
insert into data.payment (amount) values (43.36);
insert into data.payment (amount) values (640.65);
insert into data.payment (amount) values (847.86);
insert into data.payment (amount) values (886.39);
insert into data.payment (amount) values (693.34);
insert into data.payment (amount) values (205.7);
insert into data.payment (amount) values (115.1);
insert into data.payment (amount) values (50.28);
insert into data.payment (amount) values (340.7);
insert into data.payment (amount) values (976.8);
insert into data.payment (amount) values (666.42);
insert into data.payment (amount) values (634.87);
insert into data.payment (amount) values (532.83);
insert into data.payment (amount) values (489.89);
insert into data.payment (amount) values (380.03);
insert into data.payment (amount) values (759.19);
insert into data.payment (amount) values (438.27);
insert into data.payment (amount) values (324.22);


insert into data.ride (distance) values (88.77);
insert into data.ride (distance) values (309.49);
insert into data.ride (distance) values (379.83);
insert into data.ride (distance) values (149.17);
insert into data.ride (distance) values (75.2);
insert into data.ride (distance) values (169.63);
insert into data.ride (distance) values (135.22);
insert into data.ride (distance) values (21.12);
insert into data.ride (distance) values (342.07);
insert into data.ride (distance) values (209.0);
insert into data.ride (distance) values (86.56);
insert into data.ride (distance) values (142.95);
insert into data.ride (distance) values (333.87);
insert into data.ride (distance) values (2.38);
insert into data.ride (distance) values (69.05);
insert into data.ride (distance) values (222.21);
insert into data.ride (distance) values (79.78);
insert into data.ride (distance) values (9.15);
insert into data.ride (distance) values (107.58);
insert into data.ride (distance) values (385.64);
insert into data.ride (distance) values (289.42);
insert into data.ride (distance) values (32.39);
insert into data.ride (distance) values (353.9);
insert into data.ride (distance) values (70.23);
insert into data.ride (distance) values (296.0);
insert into data.ride (distance) values (45.3);
insert into data.ride (distance) values (203.5);
insert into data.ride (distance) values (191.8);
insert into data.ride (distance) values (376.06);
insert into data.ride (distance) values (396.97);
insert into data.ride (distance) values (250.37);
insert into data.ride (distance) values (231.95);
insert into data.ride (distance) values (163.43);
insert into data.ride (distance) values (208.58);
insert into data.ride (distance) values (25.58);
insert into data.ride (distance) values (99.14);
insert into data.ride (distance) values (307.46);
insert into data.ride (distance) values (230.66);
insert into data.ride (distance) values (387.63);
insert into data.ride (distance) values (225.4);
insert into data.ride (distance) values (380.94);
insert into data.ride (distance) values (312.52);
insert into data.ride (distance) values (31.47);
insert into data.ride (distance) values (149.42);
insert into data.ride (distance) values (330.72);
insert into data.ride (distance) values (371.33);
insert into data.ride (distance) values (295.91);
insert into data.ride (distance) values (301.95);
insert into data.ride (distance) values (117.76);
insert into data.ride (distance) values (347.11);


insert into data.user_data (name, second_name, email, phone_number) values ('Flynn', 'MacPhee', 'fmacphee0@addthis.com', '+1 513 180 5197');
insert into data.user_data (name, second_name, email, phone_number) values ('Malinda', 'Rimbault', 'mrimbault1@cargocollective.com', '+55 632 292 8895');
insert into data.user_data (name, second_name, email, phone_number) values ('Jarad', 'Kretschmer', 'jkretschmer2@goodreads.com', '+56 889 260 8874');
insert into data.user_data (name, second_name, email, phone_number) values ('Debbi', 'Grumbridge', 'dgrumbridge3@devhub.com', '+591 348 767 9531');
insert into data.user_data (name, second_name, email, phone_number) values ('Grace', 'Whelpton', 'gwhelpton4@tuttocitta.it', '+63 219 555 9896');
insert into data.user_data (name, second_name, email, phone_number) values ('Ashil', 'Anfosso', 'aanfosso5@bloomberg.com', '+66 608 570 4437');
insert into data.user_data (name, second_name, email, phone_number) values ('Ceil', 'Wickey', 'cwickey6@cocolog-nifty.com', '+359 449 947 2558');
insert into data.user_data (name, second_name, email, phone_number) values ('Bailie', 'Edward', 'bedward7@cisco.com', '+358 987 757 9875');
insert into data.user_data (name, second_name, email, phone_number) values ('Devy', 'Idney', 'didney8@un.org', '+7 233 757 2346');
insert into data.user_data (name, second_name, email, phone_number) values ('Dexter', 'Bruneau', 'dbruneau9@cnbc.com', '+48 635 663 0596');
insert into data.user_data (name, second_name, email, phone_number) values ('Cully', 'Sawrey', 'csawreya@wunderground.com', '+86 466 908 4749');
insert into data.user_data (name, second_name, email, phone_number) values ('Rubina', 'Elesander', 'relesanderb@businesswire.com', '+385 632 760 1316');
insert into data.user_data (name, second_name, email, phone_number) values ('Artemus', 'Paddeley', 'apaddeleyc@amazon.co.jp', '+7 838 731 7346');
insert into data.user_data (name, second_name, email, phone_number) values ('Tildi', 'Legate', 'tlegated@phoca.cz', '+57 754 753 2254');
insert into data.user_data (name, second_name, email, phone_number) values ('Jere', 'Hallatt', 'jhallatte@about.com', '+62 390 515 8951');
insert into data.user_data (name, second_name, email, phone_number) values ('Claudetta', 'Crawley', 'ccrawleyf@last.fm', '+54 586 126 4483');
insert into data.user_data (name, second_name, email, phone_number) values ('Aaron', 'Guirardin', 'aguirarding@yahoo.com', '+86 533 121 6401');
insert into data.user_data (name, second_name, email, phone_number) values ('Marcelline', 'Cluer', 'mcluerh@e-recht24.de', '+86 711 165 1970');
insert into data.user_data (name, second_name, email, phone_number) values ('Esther', 'Boyan', 'eboyani@arstechnica.com', '+86 217 703 9876');
insert into data.user_data (name, second_name, email, phone_number) values ('Oralla', 'Milsted', 'omilstedj@com.com', '+55 693 876 5757');
insert into data.user_data (name, second_name, email, phone_number) values ('Jo ann', 'Garrad', 'jgarradk@squidoo.com', '+62 407 763 0701');
insert into data.user_data (name, second_name, email, phone_number) values ('Brady', 'Skingley', 'bskingleyl@washington.edu', '+57 515 214 4928');
insert into data.user_data (name, second_name, email, phone_number) values ('Robinett', 'Pirot', 'rpirotm@sina.com.cn', '+62 366 539 7188');
insert into data.user_data (name, second_name, email, phone_number) values ('Arni', 'Goodered', 'agooderedn@mapy.cz', '+63 993 987 6191');
insert into data.user_data (name, second_name, email, phone_number) values ('Robinson', 'Yell', 'ryello@chronoengine.com', '+48 534 286 5064');
insert into data.user_data (name, second_name, email, phone_number) values ('Jarret', 'Clews', 'jclewsp@bloomberg.com', '+855 281 828 8453');
insert into data.user_data (name, second_name, email, phone_number) values ('Cosetta', 'Zarb', 'czarbq@altervista.org', '+33 956 746 1167');
insert into data.user_data (name, second_name, email, phone_number) values ('Bent', 'Vasilkov', 'bvasilkovr@samsung.com', '+375 952 404 4175');
insert into data.user_data (name, second_name, email, phone_number) values ('Lidia', 'MacRorie', 'lmacrories@google.it', '+48 251 847 4589');
insert into data.user_data (name, second_name, email, phone_number) values ('Kevyn', 'Randall', 'krandallt@businessweek.com', '+86 297 681 2137');
insert into data.user_data (name, second_name, email, phone_number) values ('Aurthur', 'Artist', 'aartistu@bizjournals.com', '+1 314 622 5684');
insert into data.user_data (name, second_name, email, phone_number) values ('Kris', 'Elderidge', 'kelderidgev@cnn.com', '+358 457 601 8520');
insert into data.user_data (name, second_name, email, phone_number) values ('Sutherland', 'Bonifant', 'sbonifantw@wsj.com', '+7 315 701 5840');
insert into data.user_data (name, second_name, email, phone_number) values ('Elisabeth', 'MacClancey', 'emacclanceyx@sina.com.cn', '+93 353 236 7376');
insert into data.user_data (name, second_name, email, phone_number) values ('Shane', 'Spurge', 'sspurgey@cocolog-nifty.com', '+30 224 208 2033');
insert into data.user_data (name, second_name, email, phone_number) values ('Stillman', 'Withur', 'swithurz@cam.ac.uk', '+63 388 632 6761');
insert into data.user_data (name, second_name, email, phone_number) values ('Augusta', 'Barwis', 'abarwis10@skype.com', '+48 112 403 5730');
insert into data.user_data (name, second_name, email, phone_number) values ('Jourdan', 'Stains', 'jstains11@sun.com', '+51 978 508 1546');
insert into data.user_data (name, second_name, email, phone_number) values ('Patrica', 'Croizier', 'pcroizier12@princeton.edu', '+7 499 950 6708');
insert into data.user_data (name, second_name, email, phone_number) values ('Nananne', 'Carcass', 'ncarcass13@nba.com', '+998 745 959 0201');
insert into data.user_data (name, second_name, email, phone_number) values ('Carroll', 'Meth', 'cmeth14@msn.com', '+54 983 146 3923');
insert into data.user_data (name, second_name, email, phone_number) values ('Eamon', 'MacAlpine', 'emacalpine15@ox.ac.uk', '+86 526 523 2122');
insert into data.user_data (name, second_name, email, phone_number) values ('Sherman', 'Charville', 'scharville16@hibu.com', '+63 449 922 4982');
insert into data.user_data (name, second_name, email, phone_number) values ('Charles', 'Oag', 'coag17@mail.ru', '+30 123 951 6359');
insert into data.user_data (name, second_name, email, phone_number) values ('Elvira', 'Cressy', 'ecressy18@squidoo.com', '+994 295 916 1057');
insert into data.user_data (name, second_name, email, phone_number) values ('Cullan', 'Willshire', 'cwillshire19@myspace.com', '+976 270 515 9778');
insert into data.user_data (name, second_name, email, phone_number) values ('Olivia', 'Cammack', 'ocammack1a@pen.io', '+86 650 777 0551');
insert into data.user_data (name, second_name, email, phone_number) values ('Kristy', 'Findon', 'kfindon1b@admin.ch', '+86 804 690 5469');
insert into data.user_data (name, second_name, email, phone_number) values ('Rachele', 'Butterfield', 'rbutterfield1c@mapquest.com', '+63 620 789 2900');
insert into data.user_data (name, second_name, email, phone_number) values ('Jennine', 'Leathard', 'jleathard1d@tumblr.com', '+33 410 835 2584');


insert into data.vehicle (brand, model) values ('Ford', 'Windstar');
insert into data.vehicle (brand, model) values ('Audi', 'A8');
insert into data.vehicle (brand, model) values ('Oldsmobile', 'Intrigue');
insert into data.vehicle (brand, model) values ('Volvo', '850');
insert into data.vehicle (brand, model) values ('Buick', 'Century');
insert into data.vehicle (brand, model) values ('Mercury', 'Grand Marquis');
insert into data.vehicle (brand, model) values ('Suzuki', 'Grand Vitara');
insert into data.vehicle (brand, model) values ('Infiniti', 'G');
insert into data.vehicle (brand, model) values ('Subaru', 'Tribeca');
insert into data.vehicle (brand, model) values ('Lotus', 'Elise');
insert into data.vehicle (brand, model) values ('Mitsubishi', 'Galant');
insert into data.vehicle (brand, model) values ('Lincoln', 'Mark VII');
insert into data.vehicle (brand, model) values ('Mazda', 'Mazda6');
insert into data.vehicle (brand, model) values ('BMW', 'M6');
insert into data.vehicle (brand, model) values ('Toyota', 'Camry');
insert into data.vehicle (brand, model) values ('BMW', '7 Series');
insert into data.vehicle (brand, model) values ('Dodge', 'Dakota Club');
insert into data.vehicle (brand, model) values ('Chevrolet', 'Blazer');
insert into data.vehicle (brand, model) values ('Volvo', 'V70');
insert into data.vehicle (brand, model) values ('Toyota', 'Supra');
insert into data.vehicle (brand, model) values ('Ford', 'Focus');
insert into data.vehicle (brand, model) values ('Porsche', 'Cayman');
insert into data.vehicle (brand, model) values ('Ford', 'Mustang');
insert into data.vehicle (brand, model) values ('Lamborghini', 'Diablo');
insert into data.vehicle (brand, model) values ('Volkswagen', 'Jetta');
insert into data.vehicle (brand, model) values ('Buick', 'Lucerne');
insert into data.vehicle (brand, model) values ('BMW', '5 Series');
insert into data.vehicle (brand, model) values ('Mitsubishi', 'Outlander');
insert into data.vehicle (brand, model) values ('Hyundai', 'Equus');
insert into data.vehicle (brand, model) values ('Jaguar', 'XJ');
insert into data.vehicle (brand, model) values ('Suzuki', 'Grand Vitara');
insert into data.vehicle (brand, model) values ('Nissan', 'Stanza');
insert into data.vehicle (brand, model) values ('Mitsubishi', '3000GT');
insert into data.vehicle (brand, model) values ('Bentley', 'Continental');
insert into data.vehicle (brand, model) values ('Honda', 'Pilot');
insert into data.vehicle (brand, model) values ('Suzuki', 'Daewoo Magnus');
insert into data.vehicle (brand, model) values ('Mercury', 'Tracer');
insert into data.vehicle (brand, model) values ('Toyota', 'Celica');
insert into data.vehicle (brand, model) values ('Pontiac', 'Grand Prix');
insert into data.vehicle (brand, model) values ('MINI', 'Cooper Clubman');
insert into data.vehicle (brand, model) values ('Chevrolet', 'Express 1500');
insert into data.vehicle (brand, model) values ('Audi', 'Quattro');
insert into data.vehicle (brand, model) values ('Nissan', 'Murano');
insert into data.vehicle (brand, model) values ('Land Rover', 'Discovery');
insert into data.vehicle (brand, model) values ('Suzuki', 'SJ');
insert into data.vehicle (brand, model) values ('Volkswagen', 'Jetta');
insert into data.vehicle (brand, model) values ('Ford', 'Taurus');
insert into data.vehicle (brand, model) values ('Mitsubishi', 'Diamante');
insert into data.vehicle (brand, model) values ('GMC', 'Yukon');
insert into data.vehicle (brand, model) values ('GMC', 'Sonoma Club Coupe');
