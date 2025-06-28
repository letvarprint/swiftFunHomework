import Foundation

class Helper {
    private var userList: [User] = []
    
    func addUser(_ user: User) {
        userList.append(user)
    }
    
    func getUsers() -> [User] {
        userList
    }
}

