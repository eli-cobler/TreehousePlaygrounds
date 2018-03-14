struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Eli", middleName: nil, lastName: "Cobler")
me.fullName()

//Optional Binding Using If Let

let airportCodes = ["CDG" : "Charles De Gaulle"]
let newYorkAirport = airportCodes["JFK"]

if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("Whoops! That key does not exist!")
}

let weatherDictionary: [String: [String: String]] = [
    "curretnly": ["temperature": "22.3"],
    "daily": ["temperature": "22.3"],
    "weekly": ["temperature": "22.3"]
]

if let dailyWeather = weatherDictionary["daily"] {
    if let highTemp = dailyWeather["temperature"] {
        print(highTemp)
    }
}

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

// Downsides of using If Let

struct Friend {
    let name: String
    let age: String
    let address: String?
}

func new(friendDictionary: [String : String ]) -> Friend? {
    if let name = friendDictionary["name"], let age = friendDictionary["age"] {
        let address = friendDictionary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}

// Early Exit

func newFreind(friendDictionary: [String : String ]) -> Friend? {
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    
    let address = friendDictionary["address"]
    
    return Friend(name: name, age: age, address: address)
}













































































