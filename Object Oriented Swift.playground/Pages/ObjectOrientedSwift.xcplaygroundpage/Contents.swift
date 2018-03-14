let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0,0)
coordinate1.x

struct Point {
    let x: Int
    let y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        var results = [Point]()
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
}

//let coordinatePoint = Point(x: 0, y: 0)
//
//coordinatePoint.x
//coordinatePoint.points()

// Enemies
class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
    }
}

class SuperEnemy: Enemy {
    
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}


// Towers
class Tower {
    let posititon: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int){
        self.posititon = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Gotcha")
        } else {
            print("Damn it! Out of range!")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = posititon.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        
        return false
    }
}

class LaserTower: Tower {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        
        print("Enemy destroyed!")
    }
}

let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)
let superEnemy = SuperEnemy(x: 1, y: 1)
let laserTower = LaserTower(x: 2, y: 2)

tower.fire(at: enemy)
tower.fire(at: superEnemy)
laserTower.fire(at: enemy)
laserTower.fire(at: superEnemy)


































// Code Challenges


// Struct Code Challenge
struct Person {
    let firstName: String
    let lastName: String
    
    /// Returns the full name for Person
    func fullName() -> String {
        let personsFullName = "\(firstName) \(lastName)"
        return personsFullName
    }
}

let aPerson = Person.init(firstName: "Eli", lastName: "Cobler")
let myFullName = aPerson.fullName()


// Class Code Challenge #1
class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
}

let someShape = Shape(numberOfSides: 3)


// Class Code Challenge #2
struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = Location(latitude: latitude, longitude: longitude)
    }
}

let someBusiness = Business.init(name: "Business", latitude: 42.6, longitude: 20.0)


// Subclass Code Challenge #1
class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

// Enter your code below
class Car: Vehicle {
    var numberOfSeats: Int = 4
    
    override init(withDoors doors: Int, andWheels wheels: Int) {
        super.init(withDoors: doors, andWheels: wheels)
    }
}

let someCar = Car.init(withDoors: 4, andWheels: 4)


// Subclass Code Challenge #2
class Person2 {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Enter your code below
class Doctor: Person2 {
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: "Dr.", lastName: lastName)
        func fullName() -> String {
            let personsFullName = "Dr. \(lastName)"
            return personsFullName
        }
    }
}

let someDoctor = Doctor.init(firstName: "Sam", lastName: "Smith")
let dr = someDoctor.fullName()



// FunFacts Struct Code Challenge
struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    var tag: Tag
    
    func description() -> String {
        let postDescription = "\(title) by \(author). Filed under \(tag.name)"
        return postDescription
    }
}

//let firstPost = Post.init(title: "iOS Development", author: "Apple", tag: Tag(name: "swift"))
let firstPost = Post(title: "iOS Development", author: "Apple", tag: Tag(name: "swift"))
let postDescription = firstPost.description()


// FunFacts SubClass Code Challenge
class Point2 {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Machine {
    var location: Point2
    
    init() {
        self.location = Point2(x: 0, y: 0)
    }
    
    func move(_ direction: String) {
        print("Do nothing! I am a machine!")
    }
}

// Enter your code below
class Robot: Machine {
        override func move(_ direction: String) {
            switch direction {
            case "Up": location.y += 1
            case "Down": location.y -= 1
            case "Right": location.x += 1
            case "Left": location.x -= 1
            default: break
            }
        }
}


































