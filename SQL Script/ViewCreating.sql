USE AdventureWorksProject;
GO

CREATE VIEW dbo.vw_SalesAnalysis AS
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

FROM dbo.Sales AS s

LEFT JOIN dbo.Products_Corrected AS p
    ON s.ProductKey = p.ProductKey

LEFT JOIN dbo.Product_Subcategories AS ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey

LEFT JOIN dbo.Product_Categories AS pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey

LEFT JOIN dbo.Customers AS c
    ON s.CustomerKey = c.CustomerKey

LEFT JOIN dbo.Territories AS t
    ON s.TerritoryKey = t.SalesTerritoryKey;
GO
