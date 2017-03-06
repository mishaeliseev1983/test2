delete from city;
delete from car;
delete from owner;
delete from users;

ALTER SEQUENCE global_seq RESTART WITH 44;

INSERT INTO city (name)VALUES ('Пермь');
INSERT INTO city (name)VALUES ('Москва');
INSERT INTO city (name)VALUES ('Саратов');
INSERT INTO city (name)VALUES ('Кемеров');
INSERT INTO city (name)VALUES ('Новосибирск');
INSERT INTO city (name)VALUES ('Екатеринбург');
INSERT INTO city (name)VALUES ('Астана');
INSERT INTO city (name)VALUES ('Самара');
INSERT INTO city (name)VALUES ('Тольятти');
INSERT INTO city (name)VALUES ('Тула');
INSERT INTO city (name)VALUES ('Нижневартовск');


INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Виктор', 'Олегов', 'Романович' , 44);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Михаил', 'Романов', 'Семенович' , 45);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Кирилл', 'Жук', 'Витальевич' , 46);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Виктор', 'Жуков', 'Романович' , 47);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Виктор', 'Орлов', 'Семенович' , 48);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Виктор', 'Романов', 'Романович' , 49);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Антон', 'Орлов', 'Семенович' , 50);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Закир', 'Олегов', 'Витальевич' , 51);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Зураб', 'Комар', 'Семенович' , 51);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Абдурахмон', 'Рамаманов', 'Семенович' , 51);
INSERT INTO owner (name, surname, patronymic, id_city) VALUES ('Виктор', 'Жов', 'Семенович' , 51);



INSERT INTO car (number, model, id_owner) VALUES ('С456УР', 'KIA CEED', 55);
INSERT INTO car (number, model, id_owner) VALUES ('С456УУ', 'KIA RIO', 58);
INSERT INTO car (number, model, id_owner) VALUES ('О456УО', 'BMW X3', 59);
INSERT INTO car (number, model, id_owner) VALUES ('О456ОУ', 'LADA PRIORA', 55);
INSERT INTO car (number, model, id_owner) VALUES ('С456УУ', 'LADA GRANTA', 55);
INSERT INTO car (number, model, id_owner) VALUES ('С456ТУ', 'VW POLO', 55);
INSERT INTO car (number, model, id_owner) VALUES ('О446УУ', 'VW JETTA', 55);
INSERT INTO car (number, model, id_owner) VALUES ('С556УУ', 'NISSAN TEANA', 55);
INSERT INTO car (number, model, id_owner) VALUES ('С466УУ', 'AUDI A6', 55);
INSERT INTO car (number, model, id_owner) VALUES ('С663УУ', 'MAZDA CX-5', 55);
INSERT INTO car (number, model, id_owner) VALUES ('О116УУ', 'KIA CEED', 55);
INSERT INTO car (number, model, id_owner) VALUES ('С456УУ', 'KIA CEED', 55);


INSERT INTO users (id, username, password) VALUES (1, 'u1', 'u1');
INSERT INTO users (id, username, password) VALUES (2, 'u', 'u');
INSERT INTO users (id, username, password) VALUES (3, 'q', 'q');
INSERT INTO users (id, username, password) VALUES (4, 'u3', 'u3');


COMMIT;