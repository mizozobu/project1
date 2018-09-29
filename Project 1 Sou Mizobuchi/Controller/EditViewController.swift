//
//  EditViewController.swift
//  Project 1 Sou Mizobuchi
//
//  Created by user144546 on 9/29/18.
//  Copyright © 2018 IS543. All rights reserved.
//

import UIKit
import MessageUI

class EditViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // Mark - Outlets
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var company: UITextField!
    @IBOutlet weak var spouseFirstName: UITextField!
    @IBOutlet weak var spouseLastName: UITextField!
    @IBOutlet weak var profile: UITextView!
    @IBOutlet weak var status: UITextField!
    @IBOutlet weak var yearJoined: UITextField!
    @IBOutlet weak var homeContact: UITextField!
    @IBOutlet weak var workContact: UITextField!
    
    // Mark - Actions
    @IBAction func uploadImage(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    // Mark - Properties
    var uid: String?
    var currentPerson: Person?
    let imagePicker = UIImagePickerController()
    
    // Mark - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        findPerson()
        updateUI()
        imagePicker.delegate = self
    }
    
    // Mark - life cycle
    // FIXME there must be better way
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.uid = uid
        }
    }
    
    // Mark - Helper
    private func findPerson() {
        currentPerson = PersonDeck.people.first(where: { $0.email == uid })
    }
    
    private func updateUI() {
        image.image = UIImage(named: currentPerson!.profileImageName)
        firstName.text = currentPerson!.firstName
        lastName.text = currentPerson!.lastName
        phone.text = currentPerson!.phone
        email.text = currentPerson!.email
        company.text = currentPerson!.company
        spouseFirstName.text = currentPerson!.spouseFirstName
        spouseLastName.text = currentPerson!.spouseLastName
        profile.text = currentPerson!.businessProfile
        yearJoined.text = currentPerson!.yearJoined
        status.text = currentPerson!.status
        homeContact.text = currentPerson!.homeContact
        workContact.text = currentPerson!.workContact
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            //image.contentMode = .scaleAspectFit
            image.image = pickedImage
        }
        print("new image")
        
        dismiss(animated: true, completion: nil)
    }
}

