import UIKit

class ViewController: UIViewController {
    
    private let names = [("Alex", "Brixencov"), ("John", "Doe"), ("Jane", "Smith")]
    let helper = Helper()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNames()
        printNames()
    }
    
    private func addNames() {
        for (name, surname) in names {
            helper.addUser(User(login: "User", password: "123", personalData: Person(name: name, surname: surname)))
        }
    }
    private func printNames() {
        let usersFullName = helper.getUsers().map {$0.personalData.fullName}
        for name in usersFullName {
            print(name)
        }
    }
    
}
