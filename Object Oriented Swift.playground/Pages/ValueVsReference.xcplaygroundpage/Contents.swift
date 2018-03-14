struct User {
    var fullname: String
    var email: String
    var age: Int
}

var someUser = User(fullname: "Eli Cobler", email: "ecobler11@gmail.com", age: 23)

var anotherUser = someUser
anotherUser.email

someUser.email = "eli_cobler@yahoo.com"
anotherUser.email
someUser.email

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int){
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Tim Cook", email: "tim.cook@apple.com", age: 54)
var anotherPerson = somePerson

somePerson.email = "tcook@apple.com"
anotherPerson.email



























































