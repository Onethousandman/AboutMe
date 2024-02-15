//
//  ViewController.swift
//  HW2.06.Tyschenko
//
//  Created by Никита Тыщенко on 11.02.2024.
//

import UIKit

final class AuthorizationViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    private let user = User.getPerson()
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTF.text == user.userName, passwordTF.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeUser = user.userName
                welcomeVC.name = user.person.name
            } else if let navigationVC = viewController as? UINavigationController {
                let userInformationVC = navigationVC.topViewController
                as? UserInformationViewController
                userInformationVC?.name = user.person.name
                userInformationVC?.surname = user.person.surname
                userInformationVC?.company = user.person.company
                userInformationVC?.jobTitle = user.person.jobTitle
                userInformationVC?.biography = user.person.biography
            }
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func showForgottenUserName() {
        showAlert(withTitle: "Oops", andMessage: "Your name is \(user.userName)")
    }
    
    @IBAction func showForgottenPassword() {
        showAlert(withTitle: "Oops", andMessage: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

