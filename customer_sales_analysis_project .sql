-- Customer & Sales Analysis Using SQL
-- Project 2
-- Database: SQLite

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Products;

CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    region TEXT NOT NULL
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL
);

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    quantity INTEGER NOT NULL,
    sales REAL NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers VALUES
(1,'John Okafor','Lagos'),
(2,'Mary Adeyemi','Abuja'),
(3,'David Bello','Kano'),
(4,'Sarah Ibrahim','Lagos'),
(5,'Daniel Eze','Port Harcourt'),
(6,'Grace Williams','Ibadan'),
(7,'Michael Musa','Abuja'),
(8,'Esther Johnson','Lagos'),
(9,'Peter Obi','Kano'),
(10,'Ruth Okoro','Port Harcourt');

INSERT INTO Products VALUES
(1,'Laptop','Electronics',350000),
(2,'Smartphone','Electronics',200000),
(3,'Tablet','Electronics',150000),
(4,'Office Chair','Furniture',100000),
(5,'Desk','Furniture',140000),
(6,'Printer','Office Equipment',180000),
(7,'Monitor','Electronics',130000),
(8,'Keyboard','Accessories',30000),
(9,'Mouse','Accessories',18000),
(10,'Headset','Accessories',35000);

INSERT INTO Orders VALUES
(1001,1,1,'2026-01-05',2,700000),
(1002,2,2,'2026-01-08',3,600000),
(1003,3,9,'2026-01-12',5,90000),
(1004,4,3,'2026-01-18',2,300000),
(1005,5,6,'2026-01-25',1,180000),
(1006,6,4,'2026-02-03',2,200000),
(1007,7,7,'2026-02-10',3,390000),
(1008,8,1,'2026-02-15',1,350000),
(1009,9,5,'2026-02-22',2,280000),
(1010,10,8,'2026-03-02',4,120000),
(1011,1,2,'2026-03-08',2,400000),
(1012,2,1,'2026-03-15',1,350000),
(1013,3,10,'2026-03-20',3,105000),
(1014,4,6,'2026-04-04',2,360000),
(1015,5,3,'2026-04-12',3,450000),
(1016,6,9,'2026-04-20',6,108000),
(1017,7,4,'2026-05-05',1,100000),
(1018,8,2,'2026-05-14',2,400000),
(1019,9,7,'2026-06-03',2,260000),
(1020,10,1,'2026-06-18',2,700000),
(1021,1,5,'2026-07-02',2,280000),
(1022,2,6,'2026-07-10',1,180000),
(1023,3,8,'2026-07-21',5,150000),
(1024,4,1,'2026-08-03',1,350000),
(1025,5,2,'2026-08-12',2,400000),
(1026,6,7,'2026-08-20',1,130000),
(1027,7,3,'2026-08-25',2,300000),
(1028,8,6,'2026-08-27',1,180000),
(1029,9,10,'2026-08-28',4,140000),
(1030,10,4,'2026-08-30',2,200000);
