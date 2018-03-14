// Colllections and Control Flow

// Arrays

var todo: [String] = ["Finish collections course", "Buy groceries", "Respond to emails"]

// Add new item to end of array using append method
todo.append("Pick up dry cleaning")

// Concatenating two arrays

[1,2,3] + [4]

// Concatenat array containing string literal to todo
todo + ["Order book online"]
todo // the value we added to todo array isn't stored using this method
todo = todo + ["Order book online"] // unless you do 1 of the following
// Performing the same operation using the unary addition operator
todo += ["Order book online"]

// Immutable Arrays 

let secondTaskList = ["Mow the lawn"]

//secondTaskList.append("Pay bills") Error!!
//secondTaskList += ["someValue"] Error!

// Reading From Arrays 

let firstTask = todo[0]
let thirdTask = todo[2]

// Modifying Existing Values in an Array
// AKA (Mutating an array)

todo[4] = "Brush teeth"
todo[0] = "Watch Treehouse content"

// Insert Using Indexes

todo.insert("Watch TV", at: 2)

// Removing Items from Arrays

todo.remove(at: 2)

todo.count

//Dealing with Non Existent Data

todo[0]
todo[5]
// todo[6] CRASH!! Do not use an index value that equals the number of items in the array!!


// Dictionaries

/*

        Airpost Code (Key)      Airport Name (Value)
        
        LGA                     La Guardia
        LHR                     Heathrow
        CDG                     Charles de Gaulle
        HKG                     Hong Kong International
        DXB                     Dubai International

*/

var airportCodes = [
    "LGA": "La Guardia",
    "LHR": "Heathrow",
    "CDG": "Charles deGaulle",
    "HKG": "Hong Kong International",
    "DXB":"Dubai Internetional"
]


let currentWeather = ["temp": 75.0]

// Reading from a dictionary

airportCodes["LGA"]
airportCodes["HKG"]

// Inserting Key Value Pairs

airportCodes["SYD"] = "Sydney Airport"
airportCodes["LGA"] = "La Guardia International Airport"

airportCodes.updateValue("Dublin Airport", forKey: "DUB")


// Removing Key Value Pairs

airportCodes["DXB"] = nil
airportCodes.removeValue(forKey: "CDG")

// Dealing with Non Existent Data

let newYorkAirport = airportCodes["LGA"]
let orlandorAirport = airportCodes["MCO"]









































