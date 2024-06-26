import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Aman@080797"
)

print(mydb)

mycursor = mydb.cursor()

#create a database
#mycursor.execute("CREATE DATABASE mydatabase")

#show all the databases
mycursor.execute("SHOW DATABASES")

for x in mycursor:
    print(x)