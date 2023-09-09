import mysql.connector

def get_data():
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="YadoDB"
    )

    cursor = connection.cursor()
    query = "SELECT Populations.Id, CONCAT(Populations.Name, ', ', Countries.Name) AS CombinedNames FROM Populations INNER JOIN Countries ON Populations.CountryCode = Countries.Code;"
    cursor.execute(query)
    results = cursor.fetchall()

    cursor.close()
    connection.close()

    data = []
    for row in results:
        data.append(row)

    return data
