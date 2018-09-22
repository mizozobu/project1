//
//  Person.swift
//  Project 1 Sou Mizobuchi
//
//  Created by user144546 on 9/21/18.
//  Copyright © 2018 IS543. All rights reserved.
//

import Foundation

class Person {
    // Mark - Properties
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
    var company: String
    var profileImageName: String
    
    // Mark - Optional Properties
    var preferredName: String?
    var spouseFirstName: String?
    var spouseLastName: String?
    var businessProfile: String?
    var homeContact: String?
    var workContact: String?
    var yearJoined: String?
    var address: String?
    var status: String? //FIXME enum (Bronze, Silver, Gold, Platinum, Diamond)
    
    // Mark - Init
    init(firstName: String, lastName: String, phone: String, email: String, company: String, profileImageName: String, preferredName: String? = nil, spouseFirstName: String? = nil,
         spouseLastName: String? = nil, businessProfile: String? = nil, homeContact: String? = nil, workContact: String? = nil, yearJoined: String? = nil, address: String? = nil, status: String? = nil ) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.company = company
        self.profileImageName = profileImageName
        self.preferredName = preferredName
        self.spouseFirstName = spouseFirstName
        self.spouseLastName = spouseLastName
        self.businessProfile = businessProfile
        self.homeContact = homeContact
        self.workContact = workContact
        self.yearJoined = yearJoined
        self.address = address
        self.status = status
    }
}
