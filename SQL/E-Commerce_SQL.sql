select *
from [dbo].[cleaned_data$]


SELECT 
    FORMAT(InvoiceDate, 'yyyy-MM') AS OrderMonth,
    SUM(Quantity * UnitPrice) AS TotalRevenue
FROM [dbo].[cleaned_data$]
GROUP BY FORMAT(InvoiceDate, 'yyyy-MM')
ORDER BY OrderMonth;


SELECT 
    FORMAT(InvoiceDate, 'yyyy-MM') AS OrderMonth,
    COUNT(DISTINCT(InvoiceNo)) AS TotalOrders
FROM [dbo].[cleaned_data$]
GROUP BY FORMAT(InvoiceDate, 'yyyy-MM')
ORDER BY OrderMonth;


SELECT 
    FORMAT(InvoiceDate, 'yyyy-MM') AS OrderMonth,
    COUNT(DISTINCT(CustomerID)) AS TotalCustomers
FROM [dbo].[cleaned_data$]
GROUP BY FORMAT(InvoiceDate, 'yyyy-MM')
ORDER BY OrderMonth;


SELECT TOP 10 
    Description AS Product,
    SUM(Quantity) AS UnitsSold,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM [dbo].[cleaned_data$]
GROUP BY Description
ORDER BY TotalSales DESC;


SELECT TOP 10 
    Country,
    SUM(Quantity) AS UnitsSold,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM [dbo].[cleaned_data$]
GROUP BY Country
ORDER BY TotalSales DESC;


SELECT 
    FORMAT(InvoiceDate, 'yyyy-MM') AS Month,
    SUM(Quantity * UnitPrice) OVER (
        ORDER BY FORMAT(InvoiceDate, 'yyyy-MM')
        ROWS BETWEEN 11 PRECEDING AND CURRENT ROW
    ) AS RollingRevenue
FROM [dbo].[cleaned_data$]
