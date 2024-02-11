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
    
    private let userName = "User"
    private let password = "1"
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.welcomeUser = "Welcome, \(userName)!"
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func showForgottenUserName() {
        showAlert(withTitle: "Oops", andMessage: "Your name is \(userName)")
    }
    
    @IBAction func showForgottenPassword() {
        showAlert(withTitle: "Oops", andMessage: "Your password is \(password)")
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

