![image](https://github.com/user-attachments/assets/d87f2346-21a2-4c2b-8825-201eaf014e9a)# cafe_efficiency_
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

Contributors

Group 5: North Goodwin, Eunsang Im, Gabriel Chaux, Calvin Liu and Kai Chung - MIST 4610

License

This project is for educational purposes and follows an open-source license.

-------------------------------------------------------------------------------------------------

# MIST4610 Project_1 Group_5
## Group Name and Members:
71552 MIST4610
1. Goodwin, North
2. Im, Eunsang
3. Chaux, Gabriel
4. Liu, Calvin
5. Chung, Kai

# Scenario Description:
We wanted to analyze the efficiency of coffee shops from both the customer experience and operational perspectives. The food industry contributes approximately 5.5% of the U.S. GDP, generating around $1.537 trillion annually. 

Coffee shops represent a significant sector within this industry, serving millions of customers daily. Given their prominence, we sought to study their operations to identify strategies that optimize functionality, streamline processes, and improve overall performance.

## Data Model:


## Data Dictionary:


## Queries:


## Database Information:





