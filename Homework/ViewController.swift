import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.alpha = 0.9
        addUsers()
        printNames()
    }
    
    private func addUsers() {
        let userList = userRepository.getUsers()
        helper.addManyUsers(userList)
    }
    
    private func printNames() {
        let usersFullName = helper.getUsers().map {$0.personalData.fullName}
        for name in usersFullName {
            print(name)
        }
    }
}
