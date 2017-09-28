CREATE DATABASE shop;

USE shop;

CREATE TABLE Product(
    product_id int(10) UNSIGNED AUTO_INCREMENT,
    model varchar(255) NOT NULL,
    cost decimal(16,5) NOT NULL,
    PRIMARY KEY(product_id)    
);

CREATE TABLE Users(
    uid int(10) UNSIGNED AUTO_INCREMENT,
    name varchar(255),
    email varchar(255),
    PRIMARY KEY(uid)
);

CREATE TABLE Orders(
    order_id int(10) UNSIGNED AUTO_INCREMENT,
    product_id int(10) UNSIGNED NOT NULL,
    uid int(10) UNSIGNED NOT NULL,
    status varchar(255) NOT NULL,
    PRIMARY KEY(order_id),
    FOREIGN KEY(product_id) REFERENCES Product(product_id),
    FOREIGN KEY(uid) REFERENCES Users(uid)
);

INSERT INTO Product(model , cost) VALUES
	('modelOne' , '100'),
	('modelTwo' , '200'),
	('modelThree' , '300');

INSERT INTO Users(name , email) VALUES
	('Ivan' , 'Ivan@gmail.com'),
	('Alex' , 'Alex@gmail.com'),
	('Sven' , 'Sven@gmail.com');

INSERT INTO Orders(product_id , uid , status) VALUES
	('1' , '1' , 'completed'),
	('2' , '2' , 'in-process'),
	('3' , '3' , 'completed');

UPDATE Product SET cost = cost + 300;

SELECT name , email FROM Users WHERE uid IN(SELECT uid FROM Orders WHERE status = 'in-process');
