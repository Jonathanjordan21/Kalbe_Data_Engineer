import mysql.connector
import pandas as pd

df = pd.read_csv('Dataset Final Project KN-DE - No 5.csv')
conn = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "",
    database = "KALBE"
)

cursor = conn.cursor()

try :
    for _, row in df.iterrows():
        insert_query = f"INSERT INTO Customer VALUES (%s, %s, %s, %s, %s)"
        values = (
            row['order_no']+1000, row['purchase_amount'], row['order_date'], 
            row['customer_id'], row['salesman_id']
        )

        cursor.execute(insert_query, values)
        conn.commit()

    print("Berhasil menginput data!")

except Exception as e :
    print("Gagal menginput data!")
    print(e)
    conn.close()

cursor.execute(
    """
    select * from customer 
    where 
    purchase_amount < 100
    or NOT
    (order_date >= '2022-08-25' and customer_id > 2001);
    """
)
result = cursor.fetchall()
for row in result:
    print(row)

# conn.commit()

conn.close()