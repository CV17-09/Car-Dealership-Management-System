USE CarDealershipDB;

INSERT INTO Vehicles (make, model, year, color, price, mileage, status)
VALUES
('Toyota', 'Camry', 2022, 'White', 24000.00, 15000, 'Available'),
('Honda', 'Civic', 2021, 'Black', 22000.00, 18000, 'Available'),
('Ford', 'F-150', 2023, 'Blue', 35000.00, 8000, 'Available'),
('Chevrolet', 'Malibu', 2020, 'Silver', 19000.00, 25000, 'Available'),
('Nissan', 'Altima', 2022, 'Gray', 23000.00, 12000, 'Available');

INSERT INTO Customers (first_name, last_name, phone, email, address)
VALUES
('John', 'Doe', '7131112222', 'john@email.com', 'Houston, TX'),
('Maria', 'Lopez', '7133334444', 'maria@email.com', 'Pasadena, TX'),
('David', 'Smith', '8325551111', 'david@email.com', 'Pearland, TX'),
('Sofia', 'Martinez', '2817779999', 'sofia@email.com', 'Sugar Land, TX');

INSERT INTO Employees (first_name, last_name, role, phone, hire_date)
VALUES
('Anna', 'Smith', 'Sales Associate', '7135551111', '2024-05-10'),
('Carlos', 'Reyes', 'Manager', '7135552222', '2023-09-01'),
('Emily', 'Johnson', 'Sales Associate', '8325554444', '2025-01-15');

INSERT INTO Sales (vehicle_id, customer_id, employee_id, sale_date, sale_price)
VALUES
(1, 1, 1, '2026-03-01', 23500),
(2, 2, 1, '2026-03-05', 21500);

INSERT INTO ServiceRecords (vehicle_id, customer_id, service_date, description, cost)
VALUES
(1, 1, '2026-03-10', 'Oil change', 120),
(2, 2, '2026-03-12', 'Brake replacement', 450);