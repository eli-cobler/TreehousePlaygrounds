// FizzBuzz Challenge

import GameKit

let n = GKRandomSource.sharedRandom().nextInt(upperBound: 15)


// My Solution
if n % 3 == 0 && n % 5 == 0 {
    print("FizzBuzz")
} else if n % 3 == 0 {
    print("Fizz")
} else {
    print("Buzz")
}

// Thier If Solution
for i in 1...100 {
    if (i % 3 == 0) && (i % 5 == 0) {
        print("FizzBuzz")
    } else if (i % 3 == 0) {
        print("Fizz")
    } else if (i % 5 == 0) {
        print("Buzz")
    } else {
        print(i)
    }
}

var isAvailable = true
var isCheap = true

var status: String

if !isCheap && !isAvailable {
    status = "super rare"
} else if isCheap && isAvailable {
    status = "not rare"
} else if !isCheap && isAvailable {
    status = "somewhat rare"
} else {
    status = "common"
}

