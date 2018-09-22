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
        static let ShowDetailSegueIdentifier = "ShowDetail"
        static let ContactIdentifier = "ContactCell"
    }
    
    // Mark - Properties
    var selectedContactEmail: String? // uique identifier is email for now
    
    // Mark - Data
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersonDeck.people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.ContactIdentifier, for: indexPath)
        
        cell.textLabel?.text = PersonDeck.people[indexPath.row].preferredName
        
        return cell
    }
    
    // Mark - life cycle
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        print(segue.destination)
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.uid = selectedContactEmail
        }
    }
    
    // Mark - delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedContactEmail = PersonDeck.people[indexPath.row].email
        performSegue(withIdentifier: Storyboard.ShowDetailSegueIdentifier, sender: self)
    }
}

