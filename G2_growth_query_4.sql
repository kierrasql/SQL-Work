SELECT Year, Product, SUM(Quantity), SUM(OrderTotal)
FROM
(
SELECT Product, Region, '2012' AS Year, Month, Quantity, OrderTotal FROM 2012_data
UNION ALL
SELECT Product, Region, '2013' AS Year, Month, (`Quantity1` + `Quantity2`) AS `Quantity`, ((`Quantity1` + `Quantity2`) * `PerUnitPrice`) AS `OrderTotal` FROM 2013_data
UNION ALL
SELECT Product, Region, '2014' AS Year, Month, Quantity, (`OrderSubTotal` - `QuantityDiscount`) AS `OrderTotal` FROM 2014_data
)
AS ordertotals

WHERE Product='Blue Rock Candy' OR Product='Crocodile Tears' OR Product='Pink Bubble Gum' OR Product='Purple Pain' OR Product='Red Hot Chili Peppers'

GROUP BY Product, Year
ORDER BY Product, Year;