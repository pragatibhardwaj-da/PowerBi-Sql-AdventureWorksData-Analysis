CREATE VIEW vw_SalesAnalysis AS
SELECT
    s.OrderDate,
    s.StockDate,
    s.OrderNumber,
    s.OrderLineItem,
    s.OrderQuantity,
    s.ProductKey,
    s.CustomerKey,
    s.TerritoryKey,

    p.ProductName,
    p.ModelName,
    p.ProductColor,
    p.ProductCost,
    p.ProductPrice,

    ps.SubcategoryName,
    pc.CategoryName,

    c.Gender,
    c.Occupation,
    c.EducationLevel,
    c.HomeOwner,

    t.Region,
    t.Country,
    t.Continent
FROM Sales AS s
LEFT JOIN Products AS p
    ON s.ProductKey = p.ProductKey
LEFT JOIN ProductSubcategories AS ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN ProductCategories AS pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
LEFT JOIN Customers AS c
    ON s.CustomerKey = c.CustomerKey
LEFT JOIN Territories AS t
    ON s.TerritoryKey = t.SalesTerritoryKey;
