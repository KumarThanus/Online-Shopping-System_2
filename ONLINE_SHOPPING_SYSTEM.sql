-- Online Shopping System --
-- Tables [customer, Seller, Admin, Product, Orders, Payment, Order_Details] --

-- Create New Datase --
	CREATE DATABASE online_shopping_system;
    
-- Select online shopping system database --
	USE online_shopping_system;
    
-- create customer Table [customer_ID, customer_Name, Email, Phone, customer_Address] --
	CREATE TABLE Customer(
		customer_ID INT PRIMARY KEY,
		Customer_Name VARCHAR(100),
		Email VARCHAR(100) UNIQUE,
		Phone VARCHAR(20),
		customer_Address VARCHAR(255)
);

-- show the Customer table --
	SELECT * FROM Customer;

-- create seller tabele[ seller_ID, seller_Name, Email, Phone] --
	CREATE TABLE Seller(
		seller_ID INT PRIMARY KEY,
        Seller_Name VARCHAR(50) NOT NULL,
        Email VARCHAR(100) UNIQUE,
        Phone VARCHAR(20) NOT NULL
    );
    
    -- show the seller table --
    SELECT * FROM Seller;
    
-- create admin table [admin_ID, admin_Name, Username] --
	CREATE TABLE Admin (
		Admin_ID INT PRIMARY KEY,
		Admin_Name VARCHAR(50) NOT NULL,
		Username VARCHAR(50) UNIQUE
);

-- show the admin table --
SELECT * FROM Admin;

    DROP TABLE Product;
    
    -- CREATE PRODUCT TABLE --
	CREATE TABLE product(
		product_ID INT PRIMARY KEY,
        seller_ID INT,
        product_Name VARCHAR(100) NOT NULL,
        category VARCHAR(100) NOT NULL,
        Price DECIMAL(10,2),
        stock INT,
        -- foregin Key --
        FOREIGN KEY(seller_ID)REFERENCES Seller(seller_ID) 
    );

    -- view product table--
		SELECT * FROM Product;
	
    -- create order table --
		CREATE TABLE Orders(
			order_ID INT PRIMARY KEY,
            customer_ID INT,
            Order_Date DATE DEFAULT (CURRENT_DATE),
            Total_Amount DECIMAL(10,2),
            
            -- FOREIGN KEY --
            FOREIGN KEY(customer_ID)REFERENCES Customer(customer_ID)
        );
        
-- view orders table--
SELECT * FROM Orders;


-- create payment table --
	CREATE TABLE Payment(
		payment_ID INT PRIMARY KEY,
        order_ID INT,
        payment_Method VARCHAR(50),
        payment_status VARCHAR(30),
        
        -- FOREIGN KEY --
        FOREIGN KEY(order_ID)REFERENCES Orders(order_ID)
    );



-- view payment table--
SELECT * FROM Payment;

-- create order_details table--
	CREATE TABLE ORDER_DETAILS (
		Detail_ID INT PRIMARY KEY,
		Order_ID INT,
		Product_ID INT,
		Quantity INT,

	-- foreign key --
		FOREIGN KEY (Order_ID)REFERENCES ORDERS(Order_ID),
	-- foreign key --
		FOREIGN KEY (Product_ID)REFERENCES PRODUCT(Product_ID)
);

-- view order_details table --
SELECT * FROM ORDER_DETAILS;

--- INSERT RECORDS ON CUSTOMER TABLE--
	INSERT INTO Customer VALUES
		(1,'John','john@gmail.com','0711113111','Colombo'),
		(2,'Sara','sara@gmail.com','0722262222','Kandy'),
		(3,'David','david@gmail.com','0738333333','Jaffna'),
		(4,'Nimal','nimal@gmail.com','0744844444','Galle'),
		(5,'Anu','anu@gmail.com','0755565555','Batticaloa'),
		(6,'Johnsan','john01@gmail.com','0711411111','Colombo'),
		(7,'Sarasan','sara1@gmail.com','0727222222','Kandy'),
		(8,'Davidkar','david0@gmail.com','0733533333','Jaffna'),
		(9,'Nimalraj','nimal01@gmail.com','0744494444','Galle'),
		(10,'Anuraj','anu01@gmail.com','0785555555','Batticaloa'),
		(11,'Henry','john11@gmail.com','0711811111','Colombo'),
		(12,'Saraly','sara11@gmail.com','0722226222','Kandy'),
		(13,'Davidkumar','david11@gmail.com','0732333333','Jaffna'),
		(14,'Nimalraja','nimal21@gmail.com','0744445444','Galle'),
		(15,'Anuja','anu12@gmail.com','0755556555','Batticaloa');
	
    -- view customer table--
    SELECT * FROM Customer;
    
    -- inser recors on seller table --
		INSERT INTO Seller VALUES
			(101,'Tech Store','tech@gmail.com','0771111111'),
			(102,'Fashion Hub','fashion@gmail.com','0772222222'),
			(103,'Book World','book@gmail.com','0773333333'),
			(104,'Mobile House','mobile@gmail.com','0774444444'),
			(105,'Home Mart','home@gmail.com','0775555555'),
			(106,'Sports Zone','sports@gmail.com','0776666666'),
			(107,'Beauty Care','beauty@gmail.com','0777777777'),
			(108,'Toy World','toy@gmail.com','0778888888'),
			(109,'Laptop Center','laptop@gmail.com','0779999999'),
			(110,'Daily Needs','daily@gmail.com','0701111111'),
			(111,'Fresh Market','fresh@gmail.com','0702222222'),
			(112,'Game Shop','game@gmail.com','0703333333'),
			(113,'Fashion Plus','fashionplus@gmail.com','0704444444'),
			(114,'Tech World','techworld@gmail.com','0705555555'),
			(115,'Mega Store','mega@gmail.com','0706666666');
		
-- view seller table --

SELECT * FROM Seller;

-- insert record admin--
INSERT INTO Admin VALUES
		(1,'Admin1','admin1'),
		(2,'Admin2','admin2'),
		(3,'Admin3','admin3'),
		(4,'Admin4','admin4'),
		(5,'Admin5','admin5'),
		(6,'Admin6','admin6'),
		(7,'Admin7','admin7'),
		(8,'Admin8','admin8'),
		(9,'Admin9','admin9'),
		(10,'Admin10','admin10'),
		(11,'Admin11','admin11'),
		(12,'Admin12','admin12'),
		(13,'Admin13','admin13'),
		(14,'Admin14','admin14'),
		(15,'Admin15','admin15');

-- VIEW ADMIN TABLE-- 
	SELECT * FROM Admin;

-- INSERT RECORS PRODUCT--
	INSERT INTO Product VALUES
		(201,101,'Laptop','Electronics',250000,20),
		(202,102,'T-Shirt','Clothing',3500,50),
		(203,103,'Book','Education',2000,30),
		(204,104,'Phone','Electronics',150000,25),
		(205,105,'Table','Furniture',12000,10),
		(206,106,'Football','Sports',4500,15),
		(207,107,'Cream','Beauty',2500,40),
		(208,108,'Toy Car','Kids',1800,60),
		(209,109,'Gaming Laptop','Electronics',350000,8),
		(210,110,'Rice','Food',2500,70),
		(211,111,'Milk','Food',3000,50),
		(212,112,'Game Console','Gaming',200000,6),
		(213,113,'Shoes','Footwear',8500,20),
		(214,114,'Keyboard','Electronics',5000,35),
		(215,115,'Monitor','Electronics',45000,18);
        
-- VIEW PRODECT TABLE --
	SELECT * FROM Product;
    
-- INSERTS ORDERS RECORS --
	INSERT INTO Orders VALUES
		(301,1,'2026-06-01',250000),
		(302,2,'2026-06-02',3500),
		(303,3,'2026-06-03',2000),
		(304,4,'2026-06-04',150000),
		(305,5,'2026-06-05',12000),
		(306,6,'2026-06-06',4500),
		(307,7,'2026-06-07',2500),
		(308,8,'2026-06-08',1800),
		(309,9,'2026-06-09',350000),
		(310,10,'2026-06-10',2500),
		(311,11,'2026-06-11',3000),
		(312,12,'2026-06-12',200000),
		(313,13,'2026-06-13',8500),
		(314,14,'2026-06-14',5000),
		(315,15,'2026-06-15',45000);
        
-- VIEW ORDERS TABLE --
	SELECT * FROM Orders;
    
-- INSER PAYMENT RECORDS --
	INSERT INTO Payment VALUES
		(401,301,'Card','Completed'),
		(402,302,'Cash','Completed'),
		(403,303,'Bank','Pending'),
		(404,304,'Card','Completed'),
		(405,305,'Cash','Completed'),
		(406,306,'Card','Completed'),
		(407,307,'Bank','Pending'),
		(408,308,'Card','Completed'),
		(409,309,'Card','Completed'),
		(410,310,'Cash','Completed'),
		(411,311,'Bank','Completed'),
		(412,312,'Card','Pending'),
		(413,313,'Cash','Completed'),
		(414,314,'Card','Completed'),
		(415,315,'Bank','Completed');

-- VIEW PAYMENT TABLE
	SELECT * FROM Payment;
    
-- INSERT ORDER_DETAILS RECORDS --
	INSERT INTO Order_Details VALUES
		(501,301,201,1),
		(502,302,202,2),
		(503,303,203,1),
		(504,304,204,1),
		(505,305,205,2),
		(506,306,206,1),
		(507,307,207,1),
		(508,308,208,3),
		(509,309,209,1),
		(510,310,210,2),
		(511,311,211,1),
		(512,312,212,1),
		(513,313,213,1),
		(514,314,214,2),
		(515,315,215,1);
        
-- VIEW ORDER_DETAILS TABLE --
	SELECT * FROM Order_Details;

-- DISPLAY PRODUCT NAME AND PRICE --
	SELECT Product_Name, Price FROM Product;
    
-- PRODUCT WITH PRICE GREATER THAN 5000 --
	SELECT * FROM Product WHERE Price > 5000;
    
-- SORT PRODUCTS BY HIGHEST PRICE --
	SELECT * FROM Product ORDER BY Price DESC;
    
-- CUSTOMER NAME STARTING WITH S --
	SELECT * FROM Customer WHERE Customer_Name LIKE 'S%';
    


-- INNER JOIN --
	SELECT Customer.Customer_Name, Orders.Order_ID
    FROM Customer INNER JOIN Orders ON Customer.Customer_ID = Orders.Customer_ID;
    
-- LEFT JOIN --
	SELECT Customer.Customer_Name, Orders.Order_ID 
    FROM Customer LEFT JOIN Orders ON Customer.Customer_ID = Orders.Customer_ID;
    
-- RIGHT JOIN --
	SELECT Product.Product_Name, Seller.Seller_Name 
    FROM Product RIGHT JOIN Seller ON Product.Seller_ID = Seller.Seller_ID;
    
-- GROUP BY --
	SELECT Category, COUNT(*) AS Total_Product FROM Product GROUP BY Category;
    
-- COUNT --
	SELECT COUNT(*) AS Total_Orders FROM Orders;		
    
    
-- TOTAL CUSTOMERS --
	SELECT COUNT(*) AS Total_Customers FROM Customer;
    
-- TOTAL ORDERS --
	SELECT COUNT(*) AS Total_Orders FROM Orders;
    
-- HIGHEST PRODUCT PRICE --
	SELECT MAX(Price) AS Highest_Product_Price FROM Product;
    
-- TOTAL SALES --
	SELECT SUM(Total_Amount) AS Total_Sales FROM Orders;
    
-- MOST ORDRED PRODUCT --
	SELECT Product_ID, SUM(Quantity) AS Ordered_Quantity 
    FROM Order_Details GROUP BY Product_ID;
    
-- ITS MY ONLINE SHOPPING SYSTEM DATABASE FOR MY ASSIGNMENT --
-- THANK YOU --
