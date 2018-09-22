//
//  ContactsViewController.swift
//  Project 1 Sou Mizobuchi
//
//  Created by user144546 on 9/22/18.
//  Copyright © 2018 IS543. All rights reserved.
//

import UIKit

class ContactsViewController: UITableViewController {
    // Mark - Storyboard
    private struct Storyboard {
        static let ContactIdentifier = "ContactCell"
    }
    
    // Mark - Data
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersonDeck.people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.ContactIdentifier, for: indexPath)
        
        cell.textLabel?.text = PersonDeck.people[indexPath.row].preferredName
        
        return cell
    }
}

