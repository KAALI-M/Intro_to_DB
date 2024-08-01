import mysql.connector
try :
    mydb = mysql.connector.connect(
       host="localhost",
        user ="alxuser",
        password="alxbackend2024"
    )
    print(f"Connection to database successful")

except mysql.connector.Error :
    print ("Connection to database failed")

cursor = mydb.cursor()
try :
   cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
   mydb.commit()
   print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as e:
    print(f"Error Occured : {e}")
    mydb.rollback()
finally:
    # Close the cursor and connection
    cursor.close()
    mydb.close()
