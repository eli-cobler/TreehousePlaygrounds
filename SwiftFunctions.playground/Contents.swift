// Swift Functions

// Area Calculation for room #2

let secondLength = 14
let secondWidth = 8

let secondArea = secondLength * secondWidth

// Area Calculation for room #1
func area(length: Int, width: Int) -> Int {
    let areaOfRoom = length * width
    
    return areaOfRoom
}

let areaOfFirstRoom = area(length: 10, width: 12)
let areaOfSecondRoomarea = area(length: 15, width: 22)

func someFuction() {}


// Argument Labels

func remove(havingValue value: String){
    print(value)
}

remove(havingValue: "A")

// Default Values

func carpetCostHaving(length: Int, width: Int, carpetCollor color:String = "tan") -> (price: Int, carpetColor: String) {
    // Gray carpet - $1/sq ft
    // Tan carpet - $2/sq ft
    // Deep Blue carpet - $4/sq ft
    
    let areaOfRoom = area(length: length, width: width)
    
    var price = 0
    
    switch color {
        case "gray": price = areaOfRoom * 1
        case "tan": price = areaOfRoom * 2
        case "blue": price = areaOfRoom * 4
        default: price = 0
    }
    
    return (price, color)
}

let result = carpetCostHaving(length: 10, width: 20)
result.price
result.carpetColor


// Scope

func arrayModifier(array: [Int]) {
    var arrayOfInts = array
    arrayOfInts.append(5)
    
    var secondArray = arrayOfInts
}

var arrayOfInts = [1, 2, 3, 4]
arrayModifier(array: arrayOfInts)
arrayOfInts

// How to make a function that doesn't have a arguement label
func someFunction(_ test: Int) {}
// instead of...
func someFunctionTest(test: Int) {}



















// Function Code Challenges

// Code Challenge #1
func temperatureInFahrenheit(temperature: Double) -> Double {
    let celcius = temperature * 9
    let fahrenheit = (celcius / 5) + 32
    return fahrenheit
}

let fahrenheitTemp = temperatureInFahrenheit(temperature: 24.0)

// Code Challenge #2
func getRemainder (value a: Int, divisor b: Int) -> Int {
    let remainder = a % b
    return remainder
}

let remainderResult = getRemainder(value: 10, divisor: 3)

// Code Challenge #3
func coordinates(for location: String) -> (Double, Double) {
/*
 Eiffel Tower - lat: 48.8582, lon: 2.2945
 Great Pyramid - lat: 29.9792, lon: 31.1344
 Sydney Opera House - lat: 33.8587, lon: 151.2140
 */
    switch location {
        case "Eiffel Tower": return(48.8582, 2.2945)
        case "Great Pyramid": return(29.9792, 31.1344)
        case "Sydney Opera House": return(33.8587, 151.2140)
        default: return(0, 0)
    }
}

let bigBen = coordinates(for: "Big Ben")
let eiffelTower = coordinates(for: "Eiffel Tower")
let greatPyramid = coordinates(for: "Great Pyramid")
let sydneyOperaHouse = coordinates(for: "Sydney Opera House")

print(bigBen)
print(eiffelTower)
print(greatPyramid)
print(sydneyOperaHouse)









