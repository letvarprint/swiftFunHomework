import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private let button: UIButton = {
       let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        addUsers()
        printNames()
    }
    
    private func addUsers() {
        let userList = userRepository.getUsers()
        helper.addManyUsers(userList)
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(button)
    }
    
    private func printNames() {
        let usersFullName = helper.getUsers().map {$0.personalData.fullName}
        for name in usersFullName {
            print(name)
        }
    }
    
    private func setupLabel() {
        if let text = helper.getUsers().randomElement()?.personalData.fullName {
            textLabel.text = text
        }
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
}
