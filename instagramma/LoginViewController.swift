//
//  LoginViewController.swift
//  instagramma
//
//  Created by Eric Zim on 3/1/16.
//  Copyright © 2016 ez. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

	@IBOutlet weak var usernameField: UITextField!
	@IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	@IBAction func onLogin(sender: AnyObject) {
	}

	@IBAction func onSignup(sender: AnyObject) {
		let newUser = PFUser()
		
		newUser.username = usernameField.text
		newUser.password = passwordField.text
		
		newUser.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
			if success {
				print("user creation success")
			} else {
				print("error: \(error?.localizedDescription)")
			}
		}
	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
