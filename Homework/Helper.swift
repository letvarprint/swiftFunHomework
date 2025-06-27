import Foundation

class Helper {
    private var userList: [User] = []
    
    func addUser(_ user: User) {
        userList.append(user)
    }
    
    func getUsersFullName() {
        for user in userList {
            print(user.personalData.fullName)
        }
    }
}
