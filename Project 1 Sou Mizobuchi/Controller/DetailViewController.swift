//
//  DetailViewController.swift
//  Project 1 Sou Mizobuchi
//
//  Created by user144546 on 9/22/18.
//  Copyright © 2018 IS543. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    // Mark - Outlets
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var spouse: UILabel!
    @IBOutlet weak var profile: UILabel!
    
    // Mark - Properties
    var uid: String?
    
    // Mark - Life Cycle
    override func viewDidLoad() {
        updateUI()
    }
    
    // Mark - Helper
    private func updateUI() {
        let currentPerson = PersonDeck.people.first(where: { $0.email == uid })
        image.image = UIImage(named: currentPerson!.profileImageName)
        name.text = "\(currentPerson!.firstName) \(currentPerson!.lastName)"
        phone.text = currentPerson!.phone
        email.text = currentPerson!.email
        company.text = currentPerson!.company
        spouse.text = "\(currentPerson!.spouseFirstName ?? "") \(currentPerson!.spouseLastName ?? "")"
        profile.text = currentPerson!.businessProfile
    }
    
    // Mark - Segue
    @IBAction func showContactDetail(_ segue: UIStoryboardSegue) {
        //??
    }
}
