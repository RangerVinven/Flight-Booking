from utils.database_connector import cursor, db
from random import randint
class Customer():

    def __init__(self):
        self.customerID = self.generateCustomerID()
        self.firstName = input("First name: ")
        self.lastName = input("Last name: ")
        self.street = input("Street: ")
        self.town = input("Town: ")
        self.postcode = input("Postcode: ")

        self.createCustomer()

    # Generates the customerID
    def generateCustomerID(self):
        # Gets the alphabet, lowercase and capital
        alphabet = "abcdefghijklmnopqrstufwxyz"
        alphabet = alphabet + alphabet.capitalize()

        # Randomly adds 8 characters to the customerID
        customerID = ""
        for i in range(8):
            customerID = customerID + alphabet[randint(0, len(alphabet))]

        return customerID

    # Adds a customer to the database
    def createCustomer(self):
        cursor.execute(f"INSERT INTO Customer(customerID, forename, surname, street, town, postcode) VALUES (%s, %s, %s, %s, %s, %s);", (self.customerID, self.firstName, self.lastName, self.street, self.town, self.postcode))
        db.commit()

    # Finds a customer based off the inputs
    def findCustomer():
        # Gets the user's search parameters
        firstName = input("First name: ") or "" 
        lastName = input("Last name: ") or ""
        street = input("Street: ") or ""
        town = input("Town: ") or ""
        postcode = input("Postcode: ") or ""

        query = "SELECT * FROM Customer WHERE 1=1 "
        variables = []

        # Adds the search parameters to the query
        if firstName:
            query = query + " AND forename=%s"
            variables.append(firstName)

        if lastName:
            query = query + " AND surname=%s"
            variables.append(lastName)

        if street:
            query = query + " AND street=%s"
            variables.append(street)

        if town:
            query = query + " AND town=%s"
            variables.append(town)

        if postcode:
            query = query + " AND postcode=%s"
            variables.append(postcode)

        query = query + ";"

        cursor.execute(query, tuple(variables))
        results = cursor.fetchall()

        print(results)

    # Updates the customer's details
    @staticmethod
    def updateCustomer(customerID):
        # Gets the user's search parameters
        firstName = input("First name: ") or "" 
        lastName = input("Last name: ") or ""
        street = input("Street: ") or ""
        town = input("Town: ") or ""
        postcode = input("Postcode: ") or ""

        query = "UPDATE Customer SET customerID=%s"
        variables = [customerID]

        # Adds the columns the user wants to update to the query
        if firstName:
            query = query + ", forename=%s"
            variables.append(firstName)

        if lastName:
            query = query + ", surname=%s"
            variables.append(lastName)

        if street:
            query = query + ", street=%s"
            variables.append(street)

        if town:
            query = query + ", town=%s"
            variables.append(town)

        if postcode:
            query = query + ", postcode=%s"
            variables.append(postcode)

        query = query + " WHERE customerID=%s;"
        variables.append(customerID)

        cursor.execute(query, tuple(variables))

        

    # Deletes the customer
    @staticmethod
    def deleteCustomer(customerID):
        cursor.execute("DELETE FROM Customer WHERE customerID=%s", (customerID,))
        db.commit()


    # def getSearchParameters():
    #     # Gets the user's search parameters
    #     firstName = input("First name: ") or "" 
    #     lastName = input("Last name: ") or ""
    #     street = input("Street: ") or ""
    #     town = input("Town: ") or ""
    #     postcode = input("Postcode: ") or ""

    #     return firstName, lastName, street, town, postcode
