let week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

func dayType(for day: String) -> String {
    switch day {
        case "Saturday", "Sunday" : return "Weekend"
        case "Monday","Tuesday", "Wednesday", "Thursday", "Friday" : return "Weekday"
        default: return "This isn't a valid day in the Western Calendar"
    }
}

func isNottificationMuted (on day: String) -> Bool {
    if day == "Weekend" {
        return true
    } else {
        return false
    }
}

//let result = dayType(for: "Sartuday")
//let isMuted = isNottificationMuted(on: result)

enum Day: Int {
    case sunday	= 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Day.friday.rawValue

enum DayType {
    case weekday
    case weekend
}

func dayType(for day: Day) -> DayType {
    switch day {
    case .saturday, .sunday: return .weekend
    default: return .weekday
    }
}

func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekend: return true
    case .weekday: return false
    }
}


let type = dayType(for: .saturday)
let isMuted = isNotificationMuted(on: type)

import UIKit

enum ColorComponent {
    case rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha) :
            return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha) :
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

ColorComponent.rgb(red: 61.0, green: 120.0, blue: 198.0, alpha:     1.0).color()

// Raw Values

enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}

let coins: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double {
    var total: Double = 0
    
    for coin in coins {
        total += coin.rawValue
    }
    
    return total
}

sum(having: coins)

enum HTTP: String {
    case post
    case get
    case put
    case delete
}

HTTP.delete.rawValue

enum HTTPStatusCode: Int {
    case success = 200
    case forbidden = 403
    case unauthorized = 401
    case notFound = 404
}

let statusCode = 200

if let httpStatusCode = HTTPStatusCode(rawValue: statusCode){
    print(httpStatusCode)
}

enum Compass: Int {
    case north = 1
    case south
    case east
    case west
}

let direction = Compass(rawValue: 2)





























