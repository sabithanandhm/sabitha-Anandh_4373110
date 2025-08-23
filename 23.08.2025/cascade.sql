show databases;
create database shops;
use shops;
create table category(
categoryID int PRIMARY KEY,
categoryname varchar(50));
insert into category (categoryID,categoryname)
values(1001,'electronics'),
(1002,'furniture');
CREATE TABLE product (
    pID INT PRIMARY KEY,
    Pname VARCHAR(50),
    categoryID INT,
    FOREIGN KEY (categoryID) REFERENCES category(categoryID)
    ON DELETE CASCADE
	ON UPDATE CASCADE
);
insert into product values(10003,'chair',1001);
select*from category;
select*from product;
UPDATE product SET Pname = 'Office Chair' WHERE pID = 10003;
DELETE FROM product WHERE categoryID = 1001;
ALTER TABLE product
ADD CONSTRAINT fk_category
FOREIGN KEY (categoryID) REFERENCES category(categoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;
