import mysql.connector
import pandas as pd

df = pd.read_csv('Dataset Final Project KN-DE - No 4.csv')
conn = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "",
    database = "KALBE"
)

cursor = conn.cursor()

try :
    for _, row in df.iterrows():
        insert_query = f"INSERT INTO Inventory VALUES (%s, %s, %s, %s)"
        values = (row['Item_code']+1000, row['Item_name'], row['Item_price'], row['Item_total'])
        
        cursor.execute(insert_query, values)
    
    conn.commit()

    print("Berhasil menginput data!")

except Exception as e :
    print("Gagal menginput data!")
    print(e)
finally:
    conn.close()


