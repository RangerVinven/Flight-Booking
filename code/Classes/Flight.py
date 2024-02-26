from random import randrange
from utils.database_connector import db, cursor

class Flight():

    def __init__(self):
        self.flightID = self.generateFlightID()
        self.departureDate = input("What's the departure date: ") or "24/03/2024"
        self.departureTime = input("What's the departure time: ") or "10:00:00"
        self.arrivalDate = input("What's the arrival date: ") or "25/03/2024"
        self.arrivalTime = input("What's the arrival time: ") or "12:00:00"
        self.capactiy = input("What's the flight's capacity: ") or "314"
        self.routeID = input("What's the routeID: ") or 1234

        self.createFlight()

    # Generates a flight ID (i.e, DY123)
    def generateFlightID(self):
        alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        numbers = "1234567890"

        # Generates the 2 letters and the 3 numbers in the ID (i.e, DY123)
        IDLetters = alphabet[randrange(0, len(alphabet))] + alphabet[randrange(0, len(alphabet))]
        IDNumbers = numbers[randrange(0, len(numbers))] + numbers[randrange(0, len(numbers))] + numbers[randrange(0, len(numbers))]

        return IDLetters + IDNumbers

    # Creates the flight
    def createFlight(self):
        cursor.execute("INSERT INTO Flight(flightID, departureDate, departureTime, arrivalDate, arrivalTime, capacity, routeID) VALUES (%s, %s, %s, %s, %s, %s, %s);", (self.flightID, self.departureDate, self.departureTime, self.arrivalDate, self.arrivalTime, self.capactiy, self.routeID))
        db.commit()

    @staticmethod
    def listFlights():
        cursor.execute("SELECT * FROM Flight;")
        flights = cursor.fetchall()

        for flight in flights:
            print(flight)

    # Searches for flights based off the user's input
    @staticmethod
    def searchFlight():

        # Gets the user's search parameters
        flightID = input("What's the flightID: ")
        departureDate = input("What's the departure date: ") or "24/03/2024"
        departureTime = input("What's the departure time: ") or "10:00:00"
        arrivalDate = input("What's the arrival date: ") or "25/03/2024"
        arrivalTime = input("What's the arrival time: ") or "12:00:00"
        capactiy = input("What's the flight's capacity: ") or "314"
        routeID = input("What's the routeID: ") or 1234

        query = "SELECT * FROM Flight WHERE 1=1 "
        variables = []

        # Adds the search parameters to the query
        if flightID:
            query = query + " AND flightID=%s"
            variables.append(flightID)

        if departureDate:
            query = query + " AND departureDate=%s"
            variables.append(departureDate)

        if departureTime:
            query = query + " AND departureTime=%s"
            variables.append(departureTime)

        if arrivalDate:
            query = query + " AND arrivalDate=%s"
            variables.append(arrivalDate)

        if arrivalTime:
            query = query + " AND arrivalTime=%s"
            variables.append(arrivalTime)        

        if capactiy:
            query = query + " AND capacity=%s"
            variables.append(capactiy)

        if routeID:
            query = query + " AND routeID=%s"
            variables.append(routeID)
        
        query = query + ";"

        cursor.execute(query, tuple(variables))
        results = cursor.fetchall()

        print(results)
        
    @staticmethod
    def deleteFlight():
        flightID = input("What's the flightID of the flight you want to delete: ")
        cursor.execute("DELETE FROM Flight WHERE flightID=%s;", (flightID,))
        db.commit()

    @staticmethod
    def updateFlight():
        flightID = input("What's the flightID of the flight you want to update: ")
        departureDate = input("What's the departure date: ") or "24/03/2024"
        departureTime = input("What's the departure time: ") or "10:00:00"
        arrivalDate = input("What's the arrival date: ") or "25/03/2024"
        arrivalTime = input("What's the arrival time: ") or "12:00:00"
        capactiy = input("What's the flight's capacity: ") or "314"
        routeID = input("What's the routeID: ") or 1234

        query = "UPDATE Flight SET flightID=%s"
        variables = [flightID]

        if departureDate:
            query = query + ", departureDate=%s"
            variables.append(departureDate)

        if departureTime:
            query = query + ", departureTime=%s"
            variables.append(departureTime)

        if arrivalDate:
            query = query + ", arrivalDate=%s"
            variables.append(arrivalDate)

        if arrivalTime:
            query = query + ", arrivalTime=%s"
            variables.append(arrivalTime)        

        if capactiy:
            query = query + ", capacity=%s"
            variables.append(capactiy)

        if routeID:
            query = query + ", routeID=%s"
            variables.append(routeID)
        
        query = query + " WHERE flightID=%s;"
        variables.append(flightID)

        cursor.execute(query, tuple(variables))
        db.commit()