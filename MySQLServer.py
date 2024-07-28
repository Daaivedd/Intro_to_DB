import mysql.connector

def create_database(host, user, password, database_name):
  """
  Creates the database 'database_name' if it doesn't exist.

  Args:
      host (str): Hostname of the MySQL server.
      user (str): Username for connecting to the MySQL server.
      password (str): Password for connecting to the MySQL server.
      database_name (str): Name of the database to create.

  Prints success message if created, error message otherwise.
  """
  try:
    mydb = mysql.connector.connect(
      host=host,
      user=user,
      password=password
    )
    mycursor = mydb.cursor()

    mycursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
    print(f"Database '{database_name}' created successfully!")

  except mysql.connector.Error as err:
    print(f"Failed to create database: {err}")

  finally:
    if mydb:
      mycursor.close()
      mydb.close()

if __name__ == "__main__":
  # Replace with your actual credentials
  host = "localhost"
  user = "root"
  password = "@nonna1806"
  database_name = "alx_book_store"

  create_database(host, user, password, database_name)
