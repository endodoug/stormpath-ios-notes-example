//
//  LoginViewController.swift
//  Stormpath Notes
//
//  Created by Edward Jiang on 3/11/16.
//  Copyright © 2016 Stormpath. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func login(sender: AnyObject) {
        // Code when someone presses the login button
        openNotes()
        
    }
    
    @IBAction func loginWithFacebook(sender: AnyObject) {
        // Code when someone presses the login with Facebook button
        
    }
    
    @IBAction func loginWithGoogle(sender: AnyObject) {
        // Code when someone presses the login with Google button
        
    }

    @IBAction func resetPassword(sender: AnyObject) {
        // Code when someone presses the reset password button
        
    }
    
    func openNotes() {
        performSegueWithIdentifier("login", sender: self)
    }
}

// Helper extension to display alerts easily.
extension UIViewController {
    func showAlert(withTitle title: String, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}