import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Aman@080797"
)

print(mydb)

mycursor = mydb.cursor()

mycursor.execute("CREATE DATABASE mydatabase")