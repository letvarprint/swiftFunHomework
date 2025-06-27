import UIKit

class ViewController: UIViewController {
    
    let names = [("Alex", "Brixencov"), ("John", "Doe"), ("Jane", "Smith")]
    let helper = Helper()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNames()
        helper.getUsersFullName()
    }
    
    private func addNames() {
        for (name, surname) in names {
            helper.addUser(User(login: "User", password: "123", personalData: Person(name: name, surname: surname)))
        }
    }
    
}
