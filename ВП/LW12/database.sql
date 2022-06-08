CREATE DATABASE university;
USE university;

CREATE TABLE faculty
(
	id              INT AUTO_INCREMENT 	NOT NULL,
	name 			VARCHAR(255)		NOT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB
;

CREATE TABLE class  /* group -  резерв*/
(
	id 				INT AUTO_INCREMENT 	NOT NULL,
	name 			VARCHAR(255)		NOT NULL,
    faculty_id		INT,
    FOREIGN KEY (faculty_id) REFERENCES faculty(id),
	PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB
;

CREATE TABLE student
(
	id 				INT AUTO_INCREMENT 	NOT NULL,
	surname 		VARCHAR(255)		NOT NULL,
    name 			VARCHAR(255)		NOT NULL,
    patronymic		VARCHAR(255)		NOT NULL,
    age				INT					NOT NULL,
    class_id		INT,
    FOREIGN KEY (class_id) REFERENCES class(id),
	PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB
;

INSERT INTO faculty (name)
VALUES 
	('ФИВТ'),
	('ФУП'),
	('ИЛП')
;

INSERT INTO class (name, faculty_id)
VALUES
	('А-1', 1),
    ('А-2', 1),
    ('А-3', 1),
    ('Б-1', 2),
    ('Б-2', 2),
    ('Б-3', 2),
    ('В-1', 3),
    ('В-2', 3),
    ('В-3', 3)
;

INSERT INTO student (surname, name, patronymic, age, class_id)
VALUES
	('Чернядьев', 		'Максим', 		'Владимирович', 	19, 1),
	('Кармазанов', 		'Роман', 		'Сергеевич', 		19, 1),
	('Осокин', 			'Владислав', 	'Михайлович', 		20, 1),
	('Аламбаев', 		'Даниил', 		'Алексеевич', 		19, 1),
	('Александров', 	'Дмитрий', 		'Владимирович', 	19, 1),
	('Безносюк', 		'Олег', 		'Николаевич', 		20, 2),
	('Петухов', 		'Дмитрий', 		'Игоревич', 		21, 2),
	('Москвин', 		'Алексей', 		'Евгеньевич', 		20, 2),
	('Каплунова', 		'Анастасия', 	'Владимировна', 	19, 2),
	('Бусыгин', 		'Алексей', 		'Александрович', 	19, 2),
	('Иванов', 			'Дмитрий', 		'Юрьевич', 			19, 3),
	('Попов', 			'Михаил', 		'Дмитриевич', 		20, 3),
	('Данилов',			'Павел', 		'Андреевич', 		19, 3),
	('Колдырев', 		'Даниил', 		'Сергеевич', 		19, 3),
	('Смирнов', 		'Роман', 		'Дмитриевич', 		21, 3),
	('Подоплелов', 		'Дмитрий', 		'Алексеевич', 		19, 4),
	('Иванов', 			'Артем', 		'Александрович', 	19, 4),
	('Клочко', 			'Александр', 	'Александрович', 	20, 4),
	('Белов', 			'Никита', 		'Васильевич', 		19, 4),
	('Игнатьев', 		'Владислав', 	'Дмитриевич', 		19, 4),
	('Крюков', 			'Дмитрий', 		'Александрович', 	22, 5),
	('Пащенко', 		'Дарья', 		'Дмитриевна', 		19, 5),
	('Волков', 			'Семен', 		'Александрович', 	18, 5),
	('Горник', 			'Мария', 		'Юрьевна', 			19, 5),
	('Романова', 		'Анна', 		'Андреевна', 		20, 5),
	('Мыза', 			'Артём', 		'Александрович', 	19, 6),
	('Чухланцев', 		'Павел', 		'Андреевич', 		19, 6),
	('Михайлов', 		'Александр', 	'Сергеевич', 		19, 6),
	('Комиссарова', 	'Арина', 		'Григорьевна', 		19, 6),
	('Видякин', 		'Егор', 		'Викторович', 		22, 6),
	('Таныгин',			'Вадим', 		'Викторович', 		19, 7),
	('Васильева', 		'Ольга', 		'Александровна', 	19, 7),
	('Петухов', 		'Фёдор', 		'Александрович', 	18, 7),
	('Яковлев', 		'Кирилл', 		'Игоревич',			25, 7),
	('Петров', 			'Михаил', 		'Владимирович', 	18, 7),
	('Платонова', 		'Дарья', 		'Александровна',	19, 8),
	('Пирогова', 		'Светлана', 	'Павловна', 		20, 8),
	('Петухов', 		'Максим', 		'Анатольевич', 		19, 8),
	('Ильдюков', 		'Дмитрий', 		'Юрьевич', 			20, 8),
	('Ткаченко', 		'Святослав',	'Андреевич', 		19, 8),
	('Кашин', 			'Владислав', 	'Сергеевич', 		19, 9),
	('Кузнецов', 		'Вадим', 		'Алексеевич', 		20, 9),
	('Данилов', 		'Владимир', 	'Владимирович', 	19, 9),
	('Журавлёва', 		'Татьяна',		'Олеговна', 		19, 9),
	('Арсибеков', 		'Артем', 		'Артурович', 		18, 9)
;

SELECT /*19 лет*/
	s.surname AS Фамилия,
    s.name AS Имя,
    s.patronymic AS Отчество,
    s.age AS Возраст,
    c.name AS Группа
FROM 
	student s
    INNER JOIN class c ON s.class_id = c.id
WHERE
	s.age = 19;
    
SELECT  /* конкретная группа.*/
	s.surname AS Фамилия,
    s.name AS Имя,
    s.patronymic AS Отчество,
    c.name AS Группа
FROM 
	student s
    INNER JOIN class c ON s.class_id = c.id
WHERE
	c.name = 'В-1';
    
SELECT  /*конкретный факультет*/
	s.surname AS Фамилия,
    s.name AS Имя,
    s.patronymic AS Отчество,
    f.name AS Факультет
FROM 
	student s
    INNER JOIN class c ON s.class_id = c.id
    INNER JOIN faculty f ON f.id = c.faculty_id
WHERE
	f.name = 'ФИВТ';
    
SELECT  /*Для получения факультета и группы конкретного студента*/
	s.id,
	s.surname AS Фамилия,
    s.name AS Имя,
    s.patronymic AS Отчество,
    c.name AS Группа,
    f.name AS Факультет
FROM 
	student s
    INNER JOIN class c ON s.class_id = c.id
    INNER JOIN faculty f ON f.id = c.faculty_id
WHERE
	s.id = '36';