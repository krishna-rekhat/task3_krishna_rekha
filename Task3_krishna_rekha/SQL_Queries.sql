1. Total Number of Orders

SELECT COUNT(*) AS TotalOrders
FROM ecommerce;

2. Product Analysis

SELECT c4 AS Product, COUNT(*) AS Orders
FROM ecommerce
GROUP BY c4
ORDER BY Orders DESC;

3. Payment Method Analysis

SELECT c8 AS PaymentMethod,
       COUNT(*) AS Orders
FROM ecommerce
GROUP BY c8
ORDER BY Orders DESC;

4. Order Status Analysis

SELECT c9 AS OrderStatus,
       COUNT(*) AS Orders
FROM ecommerce
GROUP BY c9
ORDER BY Orders DESC;

5. Referral Source Analysis

SELECT c13 AS ReferralSource,
       COUNT(*) AS Orders
FROM ecommerce
GROUP BY c13
ORDER BY Orders DESC;
6. Average Order Value

SELECT AVG(c14) AS AverageOrderValue
FROM ecommerce;

7. Highest Order Value

SELECT MAX(c14) AS HighestOrderValue
FROM ecommerce;

8. Lowest Order Value

SELECT MIN(c14) AS LowestOrderValue
FROM ecommerce;

9. Total Revenue

SELECT SUM(c14) AS TotalRevenue
FROM ecommerce;

10. Product-wise Revenue

SELECT c4 AS Product,
SUM(c14) AS Revenue
FROM ecommerce
GROUP BY c4
ORDER BY Revenue DESC;

11. Quantity Sold by Product

SELECT c4 AS Product, SUM(c5) AS TotalQuantity FROM ecommerce GROUP BY c4 ORDER BY TotalQuantity DESC;

12. Orders by Coupon Code

SELECT c12 AS CouponCode,COUNT(*) AS Orders FROM ecommerce GROUP BY c12 ORDER BY Orders DESC;

13. Average Revenue by Payment Method

SELECT c8 AS PaymentMethod, AVG(c14) AS AvgRevenue FROM ecommerce GROUP BY c8 ORDER BY AvgRevenue DESC;

14. Revenue by Order Status

SELECT c9 AS OrderStatus, SUM(c14) AS Revenue FROM ecommerce GROUP BY c9 ORDER BY Revenue DESC;

15. Top 10 Highest Value Orders

SELECT c1 AS OrderID, c4 AS Product, c14 AS TotalPrice FROM ecommerce ORDER BY c14 DESC LIMIT 10;