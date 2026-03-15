USE CarDealershipDB;

-- Monthly revenue report
SELECT
    YEAR(sale_date) AS sale_year,
    MONTH(sale_date) AS sale_month,
    COUNT(*) AS total_sales,
    SUM(sale_price) AS total_revenue
FROM Sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY sale_year, sale_month;

-- Top-selling vehicles
SELECT
    v.make,
    v.model,
    v.year,
    COUNT(s.sale_id) AS times_sold
FROM Sales s
JOIN Vehicles v ON s.vehicle_id = v.vehicle_id
GROUP BY v.make, v.model, v.year
ORDER BY times_sold DESC;

-- Customer service history
SELECT
    c.first_name,
    c.last_name,
    v.make,
    v.model,
    sr.service_date,
    sr.description,
    sr.cost
FROM ServiceRecords sr
LEFT JOIN Customers c ON sr.customer_id = c.customer_id
JOIN Vehicles v ON sr.vehicle_id = v.vehicle_id
ORDER BY sr.service_date DESC;

-- Employee sales performance
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    COUNT(s.sale_id) AS vehicles_sold,
    COALESCE(SUM(s.sale_price), 0) AS total_revenue_generated
FROM Employees e
LEFT JOIN Sales s ON e.employee_id = s.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name
ORDER BY total_revenue_generated DESC;

-- Inventory status report
SELECT
    status,
    COUNT(*) AS total_vehicles
FROM Vehicles
GROUP BY status;

-- Average vehicle sale price
SELECT
    AVG(sale_price) AS average_sale_price
FROM Sales;