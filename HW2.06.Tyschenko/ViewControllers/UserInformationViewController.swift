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
    
    var name: String!
    var surname: String!
    var company: String!
    var jobTitle: String!
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        surnameLabel.text = surname
        companyLabel.text = company
        jobTitleLabel.text = jobTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBiographyVC = segue.destination as? UserBiographyViewController
        userBiographyVC?.biography = biography
    }
}
