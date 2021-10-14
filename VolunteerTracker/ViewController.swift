//
//  ViewController.swift
//  VolunteerTracker
//
//  Created by Paul Inventado on 10/14/21.
//

import UIKit

/* ViewController for the main page */
class ViewController: UIViewController {
    
    // We create a property that we promise to assign a value later
    var volunteerTracker: VolunteerTracker!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Create the VolunteerTracker object used across the application.
        volunteerTracker = VolunteerTracker(name: "Titan hall")
    }
    
    /* Function called whenever we initiate a segue.
     
       Take note that we created an add seque by ctrl + clicking from the "Add volunteer" button
       to the AddVolunteer view and a view segue by ctrl + clicking from the "View volunteer"
       button to the ViewVolunteer view.
     
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Checks whether the segue leads to an AddVolunteerViewController
        if let addVolunteer = segue.destination as? AddVolunteerViewController {
            /* Create a reference form this class' volunteertracker to the AddViewController's
               volunteerTracker property.
             */
            addVolunteer.volunteerTracker = volunteerTracker
        } // Checks whether the segue leads to a ViewVolunteersViewController
          else if let viewVolunteer = segue.destination as? ViewVolunteersViewController {
            /* Create a reference form this class' volunteertracker to the ViewVolunteersViewController's
               volunteerTracker property.
             */
            viewVolunteer.volunteerTracker = volunteerTracker
        }
    }

    /* Required function so the AddVolunteerViewController can exit when the Add
     Volunteer button is clicked. */
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {

    }

}

