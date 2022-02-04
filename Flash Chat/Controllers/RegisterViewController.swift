//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
//import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.titleName
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
//        if let email = emailTextfield.text , let password = passwordTextfield.text{
//            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
//                if let e = error {
//                    // Alert =============================>>>>>>>>>>>>
//                    let alert = UIAlertController(title: "Alert", message: e.localizedDescription, preferredStyle: UIAlertController.Style.alert)
//                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                    self.present(alert, animated: true, completion: nil)
//                    // ________________________________<<<<<<<<<<<<<<<<
//                    
//                }
//                else{
//                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
//                }
//            }
//        }
    }
    
}
