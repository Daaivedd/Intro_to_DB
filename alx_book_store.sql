import mysql.connector
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="@nonna1806",
    database="alx_book_store"
 )

mycursor = mydb.cursor()

mycursor.execute ("""
CREATE TABLE IF NOT EXISTS Books (
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE
)
""")

mycursor.execute ("""                 
CREATE TABLE IF NOT EXISTS Authors (
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215)                
 )
""")                 

mycursor.execute ("""
CREATE TABLE IF NOT EXISTS Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
)
""")

mycursor.execute ("""
CREATE TABLE IF NOT EXISTS Orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE
)
""")

mycursor.execute ("""
CREATE TABLE IF NOT EXISTS Orders_Details (    
orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE
)                                            
""")

print("Table created successfully!")

