//
//  Volunteer.swift
//  VolunteerTracker
//
//  Created by Paul Inventado on 10/14/21.
//

import Foundation

/* Class that stores volunteer information. We use a class that contains an Array of Volunteers instead
 of just an Array of Volunteers because Arrays are structs. We need classes so that we pass around
 references to and not copies of the data.
 */
class VolunteerTracker {
    var name: String
    var list: [Volunteer]
    
    init(name: String) {
        self.name = name
        self.list = []
    }
}

class Volunteer {
    var name: String
    var address: String
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}
