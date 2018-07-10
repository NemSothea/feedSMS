//
//  AuthVC.swift
//  feedSMS
//
//  Created by SotheaNem on 7/10/18.
//  Copyright © 2018 Sothea. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func facebookSignInBtnwasPressed(_ sender: Any) {
        
    }
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func signInWithEmailWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
}
