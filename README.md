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

<img width="118" alt="image" src="https://github.com/user-attachments/assets/84db3191-edb9-476c-89d2-0241d1569bcf" />
<img width="434" alt="image" src="https://github.com/user-attachments/assets/3f0a6dfe-9887-4f4d-8e9e-b700f2f78217" />

<img width="103" alt="image" src="https://github.com/user-attachments/assets/f2ba2f02-fe4d-4460-81bc-a774162d57d3" />
<img width="408" alt="image" src="https://github.com/user-attachments/assets/611bffa1-c63d-4a90-b72d-0d3203ca586a" />

<img width="107" alt="image" src="https://github.com/user-attachments/assets/4857343f-5080-4c67-b7f0-760be1762520" />
<img width="402" alt="image" src="https://github.com/user-attachments/assets/9f1ba3d5-14ea-41ef-ad87-255bdfb5e7c4" />

<img width="121" alt="image" src="https://github.com/user-attachments/assets/cfa89d8f-f642-4bb2-8c65-d16a0d983d82" />
<img width="419" alt="image" src="https://github.com/user-attachments/assets/513f74b8-9a6b-4c41-855f-5368f99dfec1" />

<img width="106" alt="image" src="https://github.com/user-attachments/assets/60d0e30a-1c0b-48eb-8ed5-253f91ac6b04" />
<img width="362" alt="image" src="https://github.com/user-attachments/assets/56f1b240-bcf8-473a-adf0-122907e657c3" />

<img width="106" alt="image" src="https://github.com/user-attachments/assets/07789186-32a1-41f0-9df7-2f7dc05f59a5" />
<img width="420" alt="image" src="https://github.com/user-attachments/assets/f2818db0-6d24-42c6-9232-f6bb04b0d88e" />

<img width="162" alt="image" src="https://github.com/user-attachments/assets/92d283c3-f023-487d-b9de-58c1a0254617" />
<img width="418" alt="image" src="https://github.com/user-attachments/assets/9cc57976-b6fd-4736-812f-0e57dcf38e84" />

<img width="162" alt="image" src="https://github.com/user-attachments/assets/1ff7afe3-46e5-4a17-aac1-923c04d2d1ec" />
<img width="409" alt="image" src="https://github.com/user-attachments/assets/4d2ce9f6-ad51-4181-b0eb-666ee8783f7d" />

<img width="174" alt="image" src="https://github.com/user-attachments/assets/a4975091-24ad-4fb9-9451-ddd8ee323486" />
<img width="406" alt="image" src="https://github.com/user-attachments/assets/14be1dca-969d-4995-82bb-872483f6e454" />


## Queries:


## Database Information:





