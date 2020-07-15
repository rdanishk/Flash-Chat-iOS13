//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Danish Khalid on 21/10/2019.
//  Copyright © 2019 Danish Khalid. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    
}

//MARK: - Segue to ChatViewController
extension LoginViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
