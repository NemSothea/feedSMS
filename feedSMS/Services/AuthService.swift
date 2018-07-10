//
//  AuthService.swift
//  feedSMS
//
//  Created by SotheaNem on 7/10/18.
//  Copyright © 2018 Sothea. All rights reserved.
//

import Foundation
import Firebase
class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email:String, andPassword password: String, userCreateComplete:
        @escaping(_ status:Bool, _ error: Error?)->()){
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard let user = user else {
                userCreateComplete(false,error)
                return
            }
            
            let userData = ["provide":user.providerID,"email":user.email]
            DataService.instance.createDBUser(uid: user.uid, userData: userData)
            userCreateComplete(true,nil)
        }
    }
    
    func loginUser(withEmail email:String, andPassword password:String, loginComplete:@escaping(_ status:Bool,_ error: Error?)->()) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            
            guard let user = user else {
                loginComplete(false,error)
                return
            }
            loginComplete(true,nil)
        }
        
    }
    
}






