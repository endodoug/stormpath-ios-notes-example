//
//  NotesViewController.swift
//  Stormpath Notes
//
//  Created by Edward Jiang on 3/11/16.
//  Copyright © 2016 Stormpath. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // Place code to load data here
        
    }
    
    @IBAction func logout(sender: AnyObject) {
        // Code when someone presses the logout button
        dismissViewControllerAnimated(false, completion: nil)
        
    }
}

extension NotesViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(textView: UITextView) {
        // Add a "Save" button to the navigation bar when we start editing the 
        // text field.
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: "stopEditing")
    }
    
    func stopEditing() {
        // Remove the "Save" button, and close the keyboard.
        navigationItem.rightBarButtonItem = nil
        notesTextView.resignFirstResponder()
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        // Code when someone exits out of the text field
        
    }
}