create database KALBE;

use KALBE;

create table Inventory(
	Item_code INT PRIMARY KEY,
    Item_name VARCHAR(50),
    Item_price INT,
    Item_total INT
);

INSERT INTO Inventory VALUES 
(2341,'Promag Tablet',3000,100),
(2342,'Hydro Coco 250ML',7000,20),
(2343,'Nutrive Benecol 100ML',20000,30),
(2344,'Blackmores Vit C 500Mg',95000,45),
(2345,'Entrasol Gold 370G',90000,120);

select * from inventory;