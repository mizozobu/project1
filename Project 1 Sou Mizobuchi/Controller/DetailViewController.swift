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
    @IBOutlet weak var yearJoined: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var homeContact: UILabel!
    @IBOutlet weak var workContact: UILabel!
    
    // Mark - Properties
    var uid: String?
    var currentPerson: Person?
    
    // Mark - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        findPerson()
        self.title = currentPerson!.getFullName()
        updateUI()
    }
    
    // Mark - Helper
    private func findPerson() {
        currentPerson = PersonDeck.people.first(where: { $0.email == uid })
    }
    
    private func updateUI() {
        image.image = UIImage(named: currentPerson!.profileImageName)
        name.text = currentPerson!.getFullName()
        phone.text = currentPerson!.phone
        email.text = currentPerson!.email
        company.text = currentPerson!.company
        spouse.text = currentPerson!.getSpouseFullName()
        profile.text = currentPerson!.businessProfile
        yearJoined.text = currentPerson!.yearJoined
        status.text = currentPerson!.status
        homeContact.text = currentPerson!.homeContact
        workContact.text = currentPerson!.workContact
        
        profile.contentMode = .scaleToFill
        profile.numberOfLines = 0
    }
    
    // Mark - Segue
    @IBAction func showContactDetail(_ segue: UIStoryboardSegue) {
        //??
    }
}
