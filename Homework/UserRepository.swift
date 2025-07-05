import UIKit

class UserRepository {
    
    
    func getUsers(names: [(String,String)]) -> [User] {
        var userList: [User] = []
        for (name, surname) in names {
            userList.append(User(login: "User", password: "123", personalData: Person(name: name, surname: surname)))
        }
        return userList
    }
}
