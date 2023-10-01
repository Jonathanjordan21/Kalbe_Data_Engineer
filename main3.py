import mysql.connector

conn = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "",
    database = "Universitas"

)

cursor = conn.cursor()

insert_sql = (
    "INSERT INTO mahasiswa (NIM, NAMA, IPK) "+
    "VALUES (%s, %s, %s)"
)

values = ("50420616", "Jonathan Jordan", "3.88")

try :
    #Eksesuki SQL Command
    cursor.execute(insert_sql, values)

    #Melakukan perubahan (commit) pada DB
    conn.commit()

    print("Berhasil Melakukan Insert Data!")
except Exception as e:
    #Roll Back apabila ada issue
    conn.rollback()
    
    print("Insert Data Error!")
    print(e)

finally :
    conn.close()