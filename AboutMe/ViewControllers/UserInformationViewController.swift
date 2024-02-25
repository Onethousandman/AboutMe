//
//  BiographyViewController.swift
//  HW2.06.Tyschenko
//
//  Created by Никита Тыщенко on 14.02.2024.
//

import UIKit

final class UserInformationViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        jobTitleLabel.text = user.person.jobTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBiographyVC = segue.destination as? UserBiographyViewController
        userBiographyVC?.user = user
    }
}
