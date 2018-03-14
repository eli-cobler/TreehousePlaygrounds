protocol FullNameable {
    var fullName: String { get }
}

//struct User: FullNameable {
//    var fullName: String
//}

//let user = User(fullName: "John Smith")

struct Friend: FullNameable {
    let firstName: String
    let middleName: String
    let lastName:String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "John", middleName: "Jo", lastName: "Smith")
friend.fullName

import Foundation

enum EmployeeType {
    case manager
    case traditional
}

protocol Payable {
    func pay() -> Paycheck
}

struct Paycheck {
    let base: Double
    let benefites: Double
    let deductions: Double
    let vacation: Double
}

class Employee {
    let name: String
    let address: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType) {
        self.name = name
        self.address = address
        self.startDate = startDate
        self.type = type
    }
}

class HourlyEmployee: Employee, Payable {
    var hourlyWage = 15.00
    var hoursWorked = 0.0
    var vacation = 0
    
    func pay() -> Paycheck {
        let base = hoursWorked * hourlyWage
        return Paycheck(base: base, benefites: 0, deductions: 0, vacation: 0)
    }
}

class SalariedEmployee: Employee, Payable {
    var salary = 50000.00
    var benefites = 1000.00
    var deductions = 0.0
    var vacation = 2.0
    
    func pay() -> Paycheck {
        let monthly = salary/12
        return Paycheck(base: monthly, benefites: benefites, deductions: deductions, vacation: vacation)
    }
}

func pay(employee: Payable) {
    employee.pay()
}

let employee = HourlyEmployee(name: "Pasan", address: "someAddress", startDate: Date(), type: .traditional)
pay(employee: employee)

// Loosely Related Types

protocol Blendable {
    func blend()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func blend() {
    print("I'm mush!")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend() {
        print("I haven't changed at all! I'm still milk!")
    }
}

func makeSmoothie(with ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "Cheddar")
let chocolateMilk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocolateMilk]

makeSmoothie(with: ingredients)

// Random Number Generator

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom/m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
d6.roll()

// Protocol Inheritance

protocol Printable {
    func description() -> String
}

protocol PrettyPrintable: Printable {
    func prettyDesciption() -> String
}

struct User: PrettyPrintable, Equatable  {
    let name: String
    let age: Int
    let address:String
    
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    
    func prettyDesciption() -> String {
        return "name: \(name)\nage: \(age)\naddress: \(address)"
    }
    
    static func  ==(lhs: User, rhs: User) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age && lhs.address == rhs.address
    }
}

let user = User(name: "Eli", age: 23, address: "someAdress")
user.description()
print(user.prettyDesciption())

let anotherUser = User(name: "Eli", age: 23, address: "someAdress")

user == anotherUser




































// Protocol Code Challenge #2

protocol User1 {
    var name: String { get }
    var age: Int { get set }
}

struct Person: User1 {
    var name: String
    var age: Int
}

let somePerson = Person(name: "Eli", age: 23)
somePerson.age
somePerson.name


// Protocol Challenege #4
// Declare protocol here
protocol ColorSwitchable {
    func switchColor(_ color :Color)
}

enum LightState {
    case on, off
}

enum Color {
    case rgb(Double, Double, Double, Double)
    case hsb(Double, Double, Double, Double)
}

class WifiLamp: ColorSwitchable {
    let state: LightState
    var color: Color
    
    func switchColor(_ color: Color) {
        self.color = color
    }
    
    init() {
        self.state = .on
        self.color = .rgb(0,0,0,0)
    }
}





























































