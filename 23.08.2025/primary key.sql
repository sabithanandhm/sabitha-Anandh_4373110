show databases;
create database foodapp;
use foodapp;
CREATE TABLE Orders (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)  
);
INSERT INTO Orders (OrderID, ProductID, Quantity)
VALUES (1, 200, 300);
ALTER TABLE Orders
DROP PRIMARY KEY;
ALTER TABLE Orders
ADD CONSTRAINT pk_orders PRIMARY KEY (OrderID);
SHOW INDEXES FROM Orders;
select*from Orders;
drop table Orders;
