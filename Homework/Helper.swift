import Foundation

class Helper {
    private var userList: [User] = []
    
    func addUser(_ user: User) {
        userList.append(user)
    }
    
    func addManyUsers(_ users: [User]) {
        userList.append(contentsOf: users)
    }
    
    func getUsers() -> [User] {
        userList
    }
}

