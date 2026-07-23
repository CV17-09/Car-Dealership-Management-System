# 🚗 Car Dealership Management System

> **A relational database management system built with MySQL to streamline vehicle inventory, customer management, sales transactions, and service records. Designed to simulate real-world dealership operations while demonstrating advanced SQL concepts, database design, and business analytics.**

---

# 🚀 Overview

Under Revview - The **Car Dealership Management System** is a database-driven application that models the day-to-day operations of an automotive dealership. It centralizes information about vehicles, customers, employees, sales, and service history while maintaining data integrity through relational database principles.

The project demonstrates how SQL can be used not only to store data but also to automate workflows, enforce business rules, and generate valuable business insights.

---

# 🎯 Project Goals

- Design a normalized relational database
- Manage vehicle inventory and customer information
- Record vehicle sales and service history
- Automate repetitive operations using SQL triggers and stored procedures
- Generate reports for business decision-making
- Demonstrate practical database engineering concepts

---

# 💡 Why This Project?

Under Review - Car dealerships manage large volumes of interconnected data every day. Efficient database design is essential for maintaining accurate records and supporting business operations.

This project was built to demonstrate how relational databases can:

- 🚘 Track vehicle inventory
- 👥 Manage customer information
- 💰 Process vehicle sales
- 🔧 Store maintenance records
- ⚡ Automate database workflows
- 📊 Generate operational reports

---
## 🗺️ Database ERD

This diagram shows the relationships between all major entities in the system.

![Car Dealership ERD](docs/erd.png)

# 🏗️ Database Architecture

The system consists of several interconnected entities that model a real dealership environment.

```text
            Customers
                 │
                 │
                 ▼
              Sales
             ▲     ▲
             │     │
      Vehicles   Employees
             │
             ▼
      Service Records
```

Each table is connected using **foreign keys**, ensuring:

- ✅ Data consistency
- ✅ Referential integrity
- ✅ Efficient querying
- ✅ Reduced data redundancy

---

# 📂 Database Entities

| Table | Description |
|--------|-------------|
| 🚗 Vehicles | Stores vehicle inventory, pricing, and availability |
| 👥 Customers | Stores customer contact information |
| 👨‍💼 Employees | Tracks dealership staff involved in sales |
| 💰 Sales | Records completed vehicle purchases |
| 🔧 ServiceRecords | Stores maintenance and repair history |

---

# ⚙️ Database Features

### 🚗 Vehicle Inventory Management

Maintain inventory information including:

- Make
- Model
- Year
- Price
- Availability Status

---

### 👥 Customer Management

Store customer information for:

- Purchase history
- Service appointments
- Contact information

---

### 💰 Sales Tracking

Record every completed transaction including:

- Customer
- Vehicle
- Salesperson
- Sale date
- Sale price

---

### 🔧 Service History

Track maintenance records including:

- Service type
- Service date
- Vehicle
- Customer

---

### ⚡ SQL Automation

Business logic is automated using:

- Stored Procedures
- SQL Triggers
- Views

These components reduce manual work while maintaining database consistency.

---

# 📊 Example Business Queries

## 📈 Monthly Revenue

```sql
SELECT
    MONTH(sale_date) AS month,
    SUM(sale_price) AS total_revenue
FROM Sales
GROUP BY MONTH(sale_date);
```

Example Output

| Month | Revenue |
|------:|---------:|
| January | $45,000 |
| February | $52,300 |
| March | $61,200 |

---

## 🚗 Top-Selling Vehicles

```sql
SELECT
    vehicle_id,
    COUNT(*) AS total_sales
FROM Sales
GROUP BY vehicle_id
ORDER BY total_sales DESC;
```

---

## 🔧 Customer Service History

```sql
SELECT
    c.first_name,
    c.last_name,
    s.service_type,
    s.service_date
FROM Customers c
JOIN ServiceRecords s
ON c.customer_id = s.customer_id;
```

---

# 🛠️ Technology Stack

| Technology | Purpose |
|------------|---------|
| 🗄️ MySQL | Relational database |
| 📝 SQL | Database querying |
| 🔗 Joins | Relational queries |
| 📊 Aggregate Functions | Reporting and analytics |
| ⚡ Stored Procedures | Business logic automation |
| 🔄 Triggers | Automatic database updates |
| 👁️ Views | Simplified reporting |

---

# 📁 Project Structure

```text
Car-Dealership-Management-System/
│
├── sql/
│   ├── schema.sql          # Database schema
│   ├── sample_data.sql     # Sample dataset
│   ├── queries.sql         # Business queries
│   ├── triggers.sql        # SQL triggers
│   └── procedures.sql      # Stored procedures
│
├── docs/
│   └── erd.png             # Entity Relationship Diagram
│
├── README.md
└── LICENSE
```

---

# 🚀 Getting Started

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/CV17-09/Car-Dealership-Management-System.git

cd Car-Dealership-Management-System
```

---

## 2️⃣ Open MySQL

Launch your preferred MySQL client (MySQL Workbench or the MySQL CLI).

---

## 3️⃣ Create the Database

```sql
SOURCE sql/schema.sql;
```

---

## 4️⃣ Load Sample Data *(Optional)*

```sql
SOURCE sql/sample_data.sql;
```

---

## 5️⃣ Execute Business Queries

```sql
SOURCE sql/queries.sql;
```

---

## 6️⃣ Explore Stored Procedures and Triggers

```sql
SOURCE sql/procedures.sql;

SOURCE sql/triggers.sql;
```

---

# 📊 Business Insights

The database enables analysis such as:

- 📈 Monthly sales revenue
- 🚗 Best-selling vehicles
- 👥 Customer purchasing behavior
- 🔧 Service frequency
- 💰 Revenue trends
- 🏆 Employee sales performance
- 📦 Inventory availability
- 📅 Maintenance history

---

# 🎬 Demo


---

# 🚀 Future Improvements

- 🌐 React + Node.js web application
- 🔐 User authentication and role-based permissions
- ☁️ Cloud deployment using AWS RDS or Azure Database
- 📊 Tableau or Power BI dashboards
- 📱 Mobile-friendly interface
- 📦 Inventory forecasting
- 📈 Real-time sales analytics
- 📧 Automated customer service reminders

---

# 📚 Skills Demonstrated

- Relational Database Design
- Database Normalization
- SQL Development
- Complex Joins
- Aggregate Queries
- Stored Procedures
- Database Triggers
- Views
- Business Intelligence
- Data Integrity
- Database Administration

---

# 📄 License

This project is licensed under the **MIT License**.

---

# ⭐ Support

If you found this project useful or interesting, consider giving it a **⭐ Star** on GitHub!

It helps others discover the project and supports future development.
