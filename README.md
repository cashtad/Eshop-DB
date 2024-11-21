E-shop
Course: KIV/DB1 – Semester Project
Student: Leonid Malakhov
Personal ID: A22B0387P
Email: malakhov@students.zcu.cz
Date: December 18, 2023

# Task Description
As part of an independent semester project, the student is required to create a simple database application based on a chosen theme. The task scope requires a minimum of five tables in the relational database schema, excluding enumeration-type tables. The project must also include a report with a structure adhering to conceptual modeling standards. The report consists of:

A task description outlining the target audience or role for which the application is intended.
A data model, typically derived from the modeling tool used, accompanied by descriptions of fields whose purpose or possible values are not evident from their names.
Implementation of at least two database views, including their descriptions, corresponding SQL code, and relevant outputs based on stored test data.
Scenarios verifying the correctness of the proposed data model and views.
A conclusion evaluating the project, particularly emphasizing any simplifications made and the reasons why the solution might not be viable in a real-world context.
# Tables
The “E-shop” database consists of the following tables:

Category: Contains product categories, including their names and descriptions.
Item: Stores product details such as ID, name, description, price, availability, and category ID.
Items_List: Maintains quantities of individual products.
Order_table: Contains information about orders, including ID, generation date, status, user, and total price.
Review: Stores customer comments on products, including ratings and text.
User: Contains user information such as name, email, address, registration date, and password.
# Conclusion
Over this semester, I personally conducted an extensive analysis, design, and implementation of a database for an e-commerce platform. During the creation of the data model, I focused on defining relationships between tables to enable efficient data storage and manipulation. Additionally, I wrote scripts to create the database, populated it with test data, and created views that provide valuable insights into orders and user preferences.

During implementation, I faced various challenges, particularly with foreign key management and query optimization to ensure accurate results. Nevertheless, I successfully overcame these obstacles and developed an efficient and reliable solution for data management in an e-commerce environment.

This project provided me with a deeper understanding of relational database concepts and practical aspects of database system design and implementation. I believe the resulting database serves as a solid foundation for future extensions and optimizations, ensuring it can effectively support the growing needs of the e-commerce platform and enhance user experience.
