CREATE DATABASE Products
GO

CREATE TABLE Product (
    ProductID int,
    ProductName varchar(255),
);
GO

INSERT INTO Product (ProductID, ProductName)
VALUES 
(4, 'Chef Anton''s Cajun Seasoning'),
(5, 'Chef Anton''s Gumbo Mix'),
(6, 'Grandma''s Boysenberry Spread'),
(7, 'Uncle Bob''s Organic Dried Pears'),
(8, 'Northwoods Cranberry Sauce'),
(9, 'Mishi Kobe Niku'),
(10, 'Ikura'),
(11, 'Queso Cabrales'),
(12, 'Queso Manchego La Pastora'),
(13, 'Konbu'),
(14, 'Tofu'),
(15, 'Genen Shouyu'),
(16, 'Pavlova'),
(17, 'Alice Mutton'),
(18, 'Carnarvon Tigers'),
(19, 'Teatime Chocolate Biscuits'),
(20, 'Sir Rodney''s Marmalade')
GO
