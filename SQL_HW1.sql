--Таблица employees
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
id serial primary key,
employee_name Varchar(50) not null
);

INSERT INTO employees (employee_name)
VALUES
  ('Tate Acosta'),
  ('Ella Vazquez'),
  ('Quail Mclean'),
  ('Erin Ratliff'),
  ('Xanthus Collier'),
  ('Tara O''donnell'),
  ('Nigel Wilcox'),
  ('Zane Dillard'),
  ('Shaeleigh Humphrey'),
  ('Howard Porter'),
  ('Fletcher Carlson'),
  ('TaShya Hatfield'),
  ('Zena Mendoza'),
  ('Lyle Kinney'),
  ('Josiah Atkinson'),
  ('Madeline Kinney'),
  ('Robin Trujillo'),
  ('Erin Barnes'),
  ('Oliver Harvey'),
  ('Finn Walsh'),
  ('Ronan Poole'),
  ('Eric Marsh'),
  ('Wayne Nguyen'),
  ('Troy Meadows'),
  ('Elaine Kirkland'),
  ('Jorden Everett'),
  ('Chloe Mayo'),
  ('Thomas Mckinney'),
  ('Shellie Tanner'),
  ('Demetrius Winters'),
  ('Kenyon Oneil'),
  ('Zachary Walsh'),
  ('Jelani Bowman'),
  ('Lucy Hooper'),
  ('Chastity Hopper'),
  ('Kareem Owen'),
  ('Astra Pacheco'),
  ('Rhonda Herrera'),
  ('Ryder Winters'),
  ('Shaeleigh Guerrero'),
  ('Mason Burke'),
  ('Yen Browning'),
  ('Lance Huff'),
  ('Jane Preston'),
  ('Hamish Harding'),
  ('Rigel Mosley'),
  ('Gannon Holmes'),
  ('Brynn Brown'),
  ('Renee Lynch'),
  ('Petra Dale'),
  ('Patricia Rosa'),
  ('Declan Glover'),
  ('Finn Townsend'),
  ('Keaton Porter'),
  ('Cleo Greene'),
  ('Signe Faulkner'),
  ('Matthew Robbins'),
  ('Xena Keller'),
  ('Diana Kidd'),
  ('Maggy Sexton'),
  ('Cedric Clarke'),
  ('Chancellor Murray'),
  ('Logan Payne'),
  ('Talon Huff'),
  ('Quin Barnett'),
  ('Rhonda Byrd'),
  ('Stephanie Serrano'),
  ('Noelle Gordon'),
  ('Zachary Peterson'),
  ('Robert Figueroa');

create table salary(
id serial primary key,
monthly_salary int not null
);

--Таблица salary
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

INSERT INTO salary (monthly_salary)
VALUES
  (1100),
  (1200),
  (1300),
  (1400),
  (1500),
  (1600),
  (1700),
  (1800),
  (1900),
  (2000),
  (2100),
  (2200),
  (2300),
  (2400),
  (2500);
  
--Таблица employee_salary
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
 
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values 
(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(2,10),
(4,33),
(6,7),
(7,9),
(8,12),
(9,13),
(10,15),
(12,1),
(13,5),
(14,1),
(17,10),
(18,3),
(19,7),
(20,9),
(21,12),
(22,3),
(24,5),
(25,1),
(27,10),
(140,1),
(170,10),
(180,3),
(91,7),
(85,9),
(90,12),
(242,3),
(93,5),
(87,1),
(100,10);

--Таблица roles
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками

create table roles(
id serial primary key,
role_name int not null unique
);

alter table roles alter column role_name type varchar(30);

insert into roles (role_name)
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select*from roles;

--Таблица roles_employee
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками

create table roles_employees(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);

insert into roles_employees (employee_id, role_id)
values
(4,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(21,3),
(34,4),
(6,7),
(17,1),
(18,2),
(19,3),
(24,4),
(25,2),
(26,9),
(27,13),
(28,3),
(29,4),
(30,7),
(31,11),
(32,12),
(33,3),
(2,7),
(35,9),
(36,6),
(37,5),
(38,3),
(39,11),
(40,10),
(1,4),
(7,13),
(8,4),
(9,2),
(12,9),
(13,13),
(14,3),
(15,4),
(16,7);
