//
//  LoginViewController.swift
//  Spark2
//
//  Created by Jasmine Jahan on 11/2/22.
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
    
    @IBAction func signUp(_ sender: Any) {
                let user = PFUser()
        
                user.username = usernameField.text
                user.password = passwordField.text
                
                user.signUpInBackground{ (success, error) in
                    if success{
                    self.performSegue(withIdentifier: "loginSegue", sender: nil)
                    } else {
                        print("Error: \(String(describing: error?.localizedDescription))")
                    }
                }
    }
    
    @IBAction func signIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
                
                PFUser.logInWithUsername(inBackground: username, password: password){
                    (user, error) in if user != nil{
                        self.performSegue(withIdentifier: "loginSegue", sender: nil)
                    } else{
                        print("Error: \(String(describing: error?.localizedDescription))")

                    }
                }
    }
    

}
