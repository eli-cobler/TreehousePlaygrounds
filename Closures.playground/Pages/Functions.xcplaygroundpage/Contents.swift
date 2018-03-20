// Closures

func printString(_ string: String) {
    print("Printing the string: \(string)")
}

printString("Hi, my name is Eli.")

let stringPrinterFunction = printString
stringPrinterFunction("Hi, look at me!")

func sum(_ a: Int, _ b: Int) -> Int{
    return a + b
}

let addTwoNumbers = sum
addTwoNumbers(1,2)

// Functions as Parmeters

func displayString(usingFunction function: (String) -> Void) {
    function("I am a function inside of a function")
}

displayString(usingFunction: printString)

extension Int {
    func applyOperaton(_ operation: (Int) -> Int) -> Int {
        return operation(self)
    }
}

func double(_ value: Int) -> Int  {
    return value * 2
}

10.applyOperaton(double)

func closestMultipleOfSix(_ value: Int) -> Int {
    for x in 1...100 {
        let multiple = x * 6
        
        if multiple - value < 6 && multiple > value {
            return multiple
        } else if multiple == value {
            return value
        }
    }
    
    return 0
}

32.applyOperaton(closestMultipleOfSix)
12.applyOperaton(closestMultipleOfSix)
200.applyOperaton(closestMultipleOfSix)

typealias IntergerFunction = (Int) -> Void

func gameCounter() -> IntergerFunction {
    
    var localCounter = 0
    
    func increment(_ i: Int) {
        localCounter += i
        print("Local counter value: \(localCounter)")
    }
    
    return increment
}

let counter = gameCounter()
counter(1)
counter(1)
counter(45)

let anotherCounter = gameCounter()
print("*******")
anotherCounter(1)
anotherCounter(10)
anotherCounter(60)






























