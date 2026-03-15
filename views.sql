USE CarDealershipDB;

-- Sales summary view
CREATE OR REPLACE VIEW SalesSummary AS
SELECT
    s.sale_id,
    s.sale_date,
    v.make,
    v.model,
    v.year,
    s.sale_price,
    c.first_name AS customer_first,
    c.last_name AS customer_last,
    e.first_name AS employee_first,
    e.last_name AS employee_last
FROM Sales s
JOIN Vehicles v ON s.vehicle_id = v.vehicle_id
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Employees e ON s.employee_id = e.employee_id;

-- Customer service history
CREATE OR REPLACE VIEW CustomerServiceHistory AS
SELECT
    sr.service_id,
    c.first_name,
    c.last_name,
    v.make,
    v.model,
    sr.service_date,
    sr.description,
    sr.cost
FROM ServiceRecords sr
LEFT JOIN Customers c ON sr.customer_id = c.customer_id
JOIN Vehicles v ON sr.vehicle_id = v.vehicle_id;