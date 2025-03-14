# cafe_efficiency_
SQL Project 1 - Cafe Efficiency Database

Project Overview

This project was created to understand how to increase efficiency in daily operations for store front cafes. This database involves designing and implementing a cafe efficiency database using SQL. The database includes tables related to cafe menus, food items, customer orders, employees, inventory, suppliers, shifts, and other relevant entities. The goal is to practice SQL queries, database management, and data analysis.

Repository Structure

sql_project1/
│-- cafe_efficiency_sql   # SQL script to create and populate the database
│-- queries.sql     # Common SQL queries for data retrieval and analysis
│-- README.md       # Project documentation

Getting Started

Prerequisites

To run this project, ensure you have the following installed:

MySQL or PostgreSQL (or any other SQL database system of your choice)

A SQL client (e.g., MySQL Workbench, DBeaver, or pgAdmin)

A command-line interface (CLI) for executing SQL scripts

Installation & Setup

Clone this repository:

git clone https://github.com/kaichung862/mist4610_project1_group5.git
cd sql_project1

Open your SQL database and create a new schema (if required).

Execute the cafe_efficiency_sql script to create tables and populate them with sample data:

mysql -u your_user -p your_database < cafe_efficiency_sql

Verify the database structure using:

SHOW TABLES;

Database Schema

The database consists of the following tables:

menu_items: Stores menu item details (e.g., name, category, price).

employee: Records employee details (e.g., name, position, hire date).

orders: Stores customer order details and links to employees who processed the orders.

inventory: Manages ingredient details, costs, and amounts.

supplier: Links suppliers to inventory items.

shifts: Manages employee shift schedules.

shift_assignment: Assigns employees to shifts.

completed_order: Tracks which menu items were included in each order.

recipe_ingredients: Links ingredients to menu items.

Usage

You can use the database to perform various queries, such as:

Retrieving cafe menu items:

SELECT * FROM menu_items;

Finding customer orders and corresponding employees:

SELECT o.order_id, o.order_date, e.f_name, e.l_name 
FROM orders o 
JOIN employee e ON o.employee_id = e.employee_id;

Checking inventory for low stock items:

SELECT ingredient_name, ingredient_amount 
FROM inventory 
WHERE ingredient_amount < 10;

Finding shift assignments for employees:

SELECT s.shift_date, s.start_time, s.end_time, e.f_name, e.l_name 
FROM shift_assignment sa 
JOIN shifts s ON sa.shift_id = s.shift_id 
JOIN employee e ON sa.employee_id = e.employee_id;

Calculating total revenue from orders:

SELECT SUM(total_amount) FROM orders;

Contributors

Group 5: North Goodwin, Eunsang Im, Gabriel Chaux, Calvin Liu and Kai Chung - MIST 4610

License

This project is for educational purposes and follows an open-source license.



