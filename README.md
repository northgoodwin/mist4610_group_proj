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

Group 5: North Goodwin, Eunsang Im, Gabriel Chaux, Calvin Liu, and Kai Chung - MIST 4610

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

Query #1: Shows the most popular coffee/food items (most sold).

This information helps managers make informed decisions on inventory management, menu adjustments, and promotional strategies to optimize sales and efficiency.

<img width="481" alt="image" src="https://github.com/user-attachments/assets/f863ac7b-4cb7-4b3a-95ba-0d54dc55228b" />
<img width="251" alt="image" src="https://github.com/user-attachments/assets/3540b6d8-98ad-4668-aa18-2a1701ddc2ae" />

Query #2: Breaks down inventory costs by showing ingredient names, available quantities, individual costs, and total costs based on quantity.

A manager can utilize this information to monitor ingredient stock levels, ingredient costs, and optimize inventory management. This can aid in replenishing inventory in a timely manner, prevent overspending, and calculate margins.


![image](https://github.com/user-attachments/assets/9eb9b5f6-f9c0-4491-8c52-d3ea0fbec87f)
![image](https://github.com/user-attachments/assets/2b89e361-e858-4409-b8e9-0cbd9374425a)

Query #3: Calculates total inventory cost by summing the product of ingredient quantities and costs per unit.​

This query can help managers track total inventory costs, allowing them to see how much capital they have invested into inventory. This data can be used to adjust prices accordingly, improve budgeting, and streamline financial planning

![image](https://github.com/user-attachments/assets/4ebd8ad7-f1b8-4925-9ca8-8ab46c166e2c)
![image](https://github.com/user-attachments/assets/61eb8eba-f50a-4c4f-89a1-d80ea43cf2a0)

Query #4: Finds which ingredients are used in the most recipes by returning the supplier, the ingredient name, and the number of times that the ingredient is used in a recipe.

This data can be utilized to understand which suppliers are critical to the cafe's operations allowing managers to strengthen relationships with these suppliers. Managers can also use this information when introducing new menu items to not overuse ingredients that already have high usage and increase the usage of other less-utilized ingredients to reduce waste.

![image](https://github.com/user-attachments/assets/8823bc4b-48fb-4897-9db0-c63b87f20162)
![image](https://github.com/user-attachments/assets/df6862b9-4ae8-4e99-ba51-231520daee31)

Query #5: Identifies what shifts have the greatest sale numbers by returning the shift date, time period, and total sales.

This information is used by managers to see which time sections generate the most service revenue, allowing them to strategically assign workers to optimize cafe operations. This ensures that the cafe has enough labor to meet sales maximizing profit.

![image](https://github.com/user-attachments/assets/56d9ff76-62da-43e7-a6fa-28c9fc61bb39)
![image](https://github.com/user-attachments/assets/0ff80c2a-81a2-48fe-b838-3dd8ff491477)

Query #6: Identifies which items underperform below average within their respective categories by showing the item, the category, and the order_qty.

This query can be used by managers to see what menu items underperform which allows them to adjust inventory orders and menu prices accordingly to drive sales and appeal.  Managers can use this data to make data-driven decisions about menu changes, promotions, and resource allocation, maximizing profit.

![image](https://github.com/user-attachments/assets/31273095-a605-45e0-8708-fb3f5f1abb56)
![image](https://github.com/user-attachments/assets/dbf5773b-fd95-49da-b8e5-3f400f15ccf1)

Query #7: Calculates each menu item's profit by summing its sales, computing total revenue, and then subtracting the combined ingredient costs.

This information helps managers spot which items generate the most profit or to spot which items are loss leaders. This data can lead to price and menu changes, maximizing profit by eliminating bad products from the cafe.

![image](https://github.com/user-attachments/assets/399cbe66-e8b1-42b6-9fd4-42c75dd753d8)

Query #8: Calculates total sales and revenue for menu items containing a specific ingredient and estimates profit by subtracting total ingredient costs from revenue. Shows supplier ID, supplier name, ingredient name, total sales, total revenue, and estimated profit.

This helps managers evaluate the profitability of menu items based on ingredient costs, identify high-margin and low-margin items, and assess supplier contributions to overall profit. This data can inform decisions on pricing, menu adjustments, and supplier negotiations.

![image](https://github.com/user-attachments/assets/7cecc7b3-2494-46a4-bd34-84ff92fca2c1)

Query #9: Identifies employees who work the most shifts compared to the average number of shifts per employee. Returns the employee ID, employee name, and the total shifts they had.

This helps managers reward high-performing employees with bonuses, identify overworked staff to prevent burnout and performance declines and optimize scheduling to balance workloads. Additionally, it can assist in reducing wage costs by minimizing unnecessary overtime pay and ensuring fair shift distribution.

![image](https://github.com/user-attachments/assets/d34b2d10-7885-416a-bd72-ef05df1b4a6e)
![image](https://github.com/user-attachments/assets/e252be4c-73b8-452c-bd4c-243039548563)

Query #10: Identifies the supplier providing ingredients for the most profitable menu items. Returns the supplier name, menu item, and the profit ratio

This helps managers by highlighting which menu items are the most profitable, allowing them to focus marketing efforts on high-margin products. It also helps identify which suppliers offer the best value, enabling more strategic supplier negotiations and cost management.

![image](https://github.com/user-attachments/assets/52618315-d059-4122-8027-13ed491ee2e7)
![image](https://github.com/user-attachments/assets/41a71431-fa28-4ff9-b1a6-4c9b80caa35e)


## Database Information:





