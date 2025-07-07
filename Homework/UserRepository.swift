import UIKit

class UserRepository {
    
    func getUsers() -> [User] {[
        User(
            login: "User",
            password: "123",
            personalData: Person(name: "Alex", surname: "Brixencov")),
        User(
            login: "User",
            password: "123",
            personalData: Person(name: "John", surname: "Doe")),
        User(
            login: "User",
            password: "123",
            personalData: Person(name: "Jane", surname: "Smith"))
    ]}
}
