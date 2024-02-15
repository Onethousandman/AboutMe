//
//  UserBiographyViewController.swift
//  HW2.06.Tyschenko
//
//  Created by Никита Тыщенко on 15.02.2024.
//

import UIKit

final class UserBiographyViewController: UIViewController {

    @IBOutlet var biographyLabel: UILabel!
    
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = biography
    }
}
