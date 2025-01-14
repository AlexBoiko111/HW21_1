create database DZ27_1;

use DZ27_1;

create table car_brands (
id int unique auto_increment primary key, 
title varchar(256) not null
);

insert into car_brands (title)
values 
("Nissan"),
("Mazda"),
("Reno"),
("BMW"),
("Audi");

create table car_models (
id int unique auto_increment primary key, 
carBrandId int not null,
FOREIGN KEY (carBrandId) REFERENCES car_brands (id),
title varchar(256) not null
);

insert into car_models (carBrandId, title)
values 
(1, "Qashqai"),
(1, "X-Trail"),
(2, "CX-3"),
(2, "Axela"),
(3, "Kangoo"),
(3, "Clio"),
(4, "X5"),
(4, "M4"),
(5, "Q5"),
(5, "Sport");

create table users (
id int unique auto_increment primary key, 
firstName varchar(256) not null,
lastName varchar(256),
email varchar (256) not null unique,
passwords varchar(256) not null
);

insert into users (firstName, lastName, email, passwords)
values 
("Ivanov", "Ivan", "ivanovi@gmail.com", "qw12345"),
("Petrov", "Petr", "petrovp@gmail.com", "er23456"),
("Ustinov", "Fadei", "ustinovf@gmail.com", "ty34567"),
("Mazur", "Anna", "mazura@gmail.com", "ui45678"),
("Karp", "Semen", "karps@gmail.com", "op56789");

create table cars (
id int unique auto_increment primary key, 
userId int not null,
FOREIGN KEY (userId) REFERENCES users (id),
carBrandId int not null,
FOREIGN KEY (carBrandId) REFERENCES car_brands (id),
carModelId int not null,
FOREIGN KEY (carModelId) REFERENCES car_models (id),
mileage  int,
initialMilleage int
);

insert into cars (userId, carBrandId, carModelId, mileage, initialMilleage)
values 
(1, 1, 1, 10000, 25000),
(2, 2, 3, 7500, 50000),
(3, 3, 5, 2000, 75000),
(4, 4, 7, 15300, 100000),
(5, 5, 9, 8900, 125000);
