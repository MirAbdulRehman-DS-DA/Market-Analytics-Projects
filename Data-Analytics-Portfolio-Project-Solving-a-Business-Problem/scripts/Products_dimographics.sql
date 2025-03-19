-- select * from dbo.products -- Selecting all of the features and rows from inside the table dbo.products

--*************************************************
--*************************************************

-- Querry to categorize products based on their prices

select 
ProductID,
ProductName,
--Category,
Price,

-- Categorizing each product by price category, here new feature is created as PriceCategory that stores
-- the categories (Low, Medium, High).
	Case
		when Price < 50 then 'Low'
		when Price between 50 and 200 then 'Medium'
		else 'High'
	End as PriceCategory

from dbo.products