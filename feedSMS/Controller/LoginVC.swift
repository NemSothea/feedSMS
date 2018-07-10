//
//  LoginVC.swift
//  feedSMS
//
//  Created by SotheaNem on 7/10/18.
//  Copyright © 2018 Sothea. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var email: InsetTextField!
    @IBOutlet weak var password: InsetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.email.delegate = self
        self.password.delegate = self
    }
    
    @IBAction func signInWasPressed(_ sender: Any) {
        if email.text != nil && password.text != nil {
            AuthService.instance.loginUser(withEmail: email.text!, andPassword: password.text!) { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                }else {
                    print(String(describing: loginError?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.email.text!, andPassword: self.password.text!, userCreateComplete: { (success, registrationError) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.email.text!, andPassword: self.password.text!, loginComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("Sucessfully register")
                        })
                    }else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                    
                })
            }
        }
      
    }

    @IBAction func closeView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
extension LoginVC:UITextFieldDelegate {
    
}
