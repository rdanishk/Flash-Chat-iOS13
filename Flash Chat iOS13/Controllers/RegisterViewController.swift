//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Danish Khalid on 21/10/2019.
//  Copyright © 2019 Danish Khalid. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    print(err.localizedDescription) //set up alert here
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
}


//MARK: - Segue to ChatViewController
extension RegisterViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
