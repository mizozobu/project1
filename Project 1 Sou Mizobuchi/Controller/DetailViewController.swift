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
    @IBOutlet weak var email: UILabel!
    
    // Mark - Properties
    var uid: String?
    
    // Mark - Life Cycle
    override func viewDidLoad() {
        updateUI()
    }
    
    // Mark - Helper
    private func updateUI() {
        let currentPerson = PersonDeck.people.first(where: { $0.email == uid })
        email.text = currentPerson!.email
    }
    
    // Mark - Segue
    @IBAction func showContactDetail(_ segue: UIStoryboardSegue) {
        //??
    }
}
