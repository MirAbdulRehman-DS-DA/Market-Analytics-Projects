--select * from dbo.customers -- selecting all features and rows from the table dbo.customers
--select * from dbo.geography -- selecting all features and rows from the table dbo.geography

select
c.CustomerID,
c.CustomerName,
c.Gender,
c.Age,
g.Country, 
g.City

-- Creating a left joint on the GeographyID from both tables
from dbo.customers as c

left join -- Returns all of the record from the left table and matching records form the right.

dbo.geography as g

on -- Identifies which columns are used as the key on which the joint is being applied on.

c.GeographyID = g.GeographyID