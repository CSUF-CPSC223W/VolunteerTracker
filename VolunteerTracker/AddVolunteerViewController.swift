//
//  AddVolunteerViewController.swift
//  VolunteerTracker
//
//  Created by Paul Inventado on 10/14/21.
//

import UIKit

/* ViewController class for the AddVolunteerController view.
 
 Created by selecting: File > New > File > Cocoa Touch Class > Subclass of: UIViewController
 
 On the Main storyboard, make sure the AddVolunteer ViewController's Custom class is assigned to this
 ViewController.
 
 Take note that we ctrl+ckicked the "Add Volunteer" button to the Exit icon (top bar of the layout)
 to give the effect of unwinding/going back to main.
 */
class AddVolunteerViewController: UIViewController {
    
    // Property is assigned a value when the ViewController's prepare method is called
    var volunteerTracker: VolunteerTracker!

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    
    @IBAction func addVolunteer(_ sender: Any) {
        /* We add an element to the list of Volunteers using the reference to the ViewController's
           VolunteerTracker object. */
        let vol = Volunteer(name: name.text!, address: address.text!)
        volunteerTracker.list.append(vol)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
