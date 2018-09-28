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
    
    // Mark - Actions
    @IBAction func makeCall(_ sender: Any) {
        let phoneNumber = currentPerson!.phone.replacingOccurrences(of: "-", with: "")
        if let number = URL(string: "tel://\(phoneNumber)") {
            UIApplication.shared.open(number)
            print(number)
        }
    }
    
    @IBAction func writeEmail(_ sender: Any) {
        if let email = URL(string: "mailto:\(currentPerson!.email)") {
            UIApplication.shared.open(email)
        }
    }
    
    // Mark - Properties
    var uid: String?
    var currentPerson: Person?
    
    // Mark - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        findPerson()
        enableEdit()
        self.title = currentPerson!.getFullName()
        updateUI()
    }
    
    // Mark - Helper
    private func findPerson() {
        currentPerson = PersonDeck.people.first(where: { $0.email == uid })
    }
    
    private func enableEdit() {
        if uid == "chewie@gmail.com" {
            let editBtn = UIButton(type: .custom)
            //editBtn.setImage(UIImage(named: "founder1.png"), for: .normal)
            editBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            //editBtn.addTarget(self, action: #selector(Class.Methodname), for: .touchUpInside)
            editBtn.setTitle("Edit", for: [])
            let item1 = UIBarButtonItem(customView: editBtn)
            item1.title = "Edit"
            
            self.navigationItem.setRightBarButtonItems([item1], animated: false)
        }
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
