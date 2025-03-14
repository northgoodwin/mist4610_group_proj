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

<img width="782" alt="image" src="https://github.com/user-attachments/assets/1773aa5b-7f62-4cce-9dbd-e9eee20e3de2" />



## Data Dictionary:

![group project 1 menu_items table](https://github.com/user-attachments/assets/3103548d-936f-484f-bc0c-e78aa3cba59c)
![group project 1 orders table](https://github.com/user-attachments/assets/49a2bbec-3ac3-4d89-aefd-d6c31f4a6972)
![group project 1 employees table](https://github.com/user-attachments/assets/9dd448da-c527-4daa-9463-fc12ebb56f35)
![image](https://github.com/user-attachments/assets/0077d08c-0931-4c4d-8e4b-36301f58fea7)
![image](https://github.com/user-attachments/assets/b06e67e8-f3d8-4d4d-b4ae-0681891d4349)
![image](https://github.com/user-attachments/assets/b9b63f13-5fec-4b2d-ac0d-6cde03a8c5e3)
![image](https://github.com/user-attachments/assets/1efe80aa-d5b6-43c2-bcc6-dfef92c15d36)
![image](https://github.com/user-attachments/assets/1994e444-ed97-4e20-a5eb-c307f4a0db12)
![image](https://github.com/user-attachments/assets/9443ce79-e9d9-490f-b71f-e0a4ac73fea5)

## Queries:

Query #1: Shows the most popular coffee/popular food items (most sold).
This information helps managers make informed decisions on inventory management, menu adjustments, and promotional strategies to optimize sales and efficiency.

<img width="481" alt="image" src="https://github.com/user-attachments/assets/f863ac7b-4cb7-4b3a-95ba-0d54dc55228b" />

<img width="251" alt="image" src="https://github.com/user-attachments/assets/3540b6d8-98ad-4668-aa18-2a1701ddc2ae" />

Query #2: 


![image](https://github.com/user-attachments/assets/9eb9b5f6-f9c0-4491-8c52-d3ea0fbec87f)

![image](https://github.com/user-attachments/assets/2b89e361-e858-4409-b8e9-0cbd9374425a)



## Database Information:





