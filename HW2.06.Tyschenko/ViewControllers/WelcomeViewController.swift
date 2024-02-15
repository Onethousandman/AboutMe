//
//  WelcomeViewController.swift
//  HW2.06.Tyschenko
//
//  Created by Никита Тыщенко on 11.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var welcomeUser: String!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(welcomeUser ?? "")"
        nameLabel.text = "My name is \(name ?? "")"
    }
}
