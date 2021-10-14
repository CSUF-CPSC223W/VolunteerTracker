//
//  ViewVolunteersViewController.swift
//  VolunteerTracker
//
//  Created by Paul Inventado on 10/14/21.
//

import UIKit

/* ViewController class for the ViewVolunteersController view.
 
 Created by selecting: File > New > File > Cocoa Touch Class > Subclass of: UIViewController
 
 On the Main storyboard, make sure the ViewVolunteer ViewController's Custom class is assigned to this
 ViewController.
 
 */
class ViewVolunteersViewController: UIViewController {
    
    // Property is assigned a value when the ViewController's prepare method is called
    var volunteerTracker: VolunteerTracker!
    
    @IBOutlet weak var volunteerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Retrieve all volunteer objects and store them into a String
        var volunteerString = ""
        for volunteer in volunteerTracker.list {
            volunteerString += "\(volunteer.name): \(volunteer.address)\n"
        }
        // Update the label to show the String of volunteers.
        volunteerLabel.text = volunteerString
    }
}
