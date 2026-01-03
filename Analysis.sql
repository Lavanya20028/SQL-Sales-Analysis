SELECT *
FROM SalesOrders;

WITH MonthlyRevenue AS (
    SELECT 
        MONTH(OrderDate) AS OrderMonth,
        SUM(TotalAmount) AS Revenue
    FROM SalesOrders
    GROUP BY MONTH(OrderDate)
)
SELECT 
    OrderMonth,
    Revenue,
    LAG(Revenue) OVER (ORDER BY OrderMonth) AS PreviousMonthRevenue,
    (Revenue - LAG(Revenue) OVER (ORDER BY OrderMonth)) / LAG(Revenue) OVER (ORDER BY OrderMonth) * 100 AS GrowthPercentage
FROM MonthlyRevenue;