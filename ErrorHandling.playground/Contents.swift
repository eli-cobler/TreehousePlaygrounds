struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData(description: String)
    case someError
}

func friend(from dict: [String: String]) throws -> Friend {
    guard let name = dict["name"] else {
        throw FriendError.invalidData(description: "Invaild name value")
    }
    
    guard  let age = dict["age"]  else {
        throw FriendError.invalidData(description: "Invaild age value")
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

func send(message: String, to friend: Friend) {}

let response = ["name": "Eli", "ag": "23", "address": "someAddress"]

do {
    let myFriend = try friend(from: response)
    send(message: "Test", to: myFriend)
} catch FriendError.invalidData(let description) {
    // Inform the user that they passed in invalidData
    print(description)
} catch FriendError.someError {
    
}
















































