//
//  SignupVC.swift
//  StyLoe
//
//  Created by Rifqi Alfaizi on 14/01/19.
//  Copyright © 2019 Rifqi Alfaizi. All rights reserved.
//

import UIKit
import Firebase

class SignupVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


    @IBAction func signupBtnWasPressed(_ sender: Any) {
        
        guard let username = usernameTF.text,
        username != "",
        let email = emailTF.text,
        email != "",
        let password = passwordTF.text,
        password != ""
            else {
                AlertController.showAlert(self, title: "missing info", message: "please fill out all fields")
                return
        }
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
            
            guard error == nil else {
                AlertController.showAlert(self, title: "Error", message: error!.localizedDescription)
                return
            }
            guard let user = user else { return }
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = username
                changeRequest?.commitChanges{ error in
                    guard error == nil else {
                        AlertController.showAlert(self, title: "Error", message: (error?.localizedDescription)!)
                        return
                    }
                    self.performSegue(withIdentifier: "signUpSegue", sender: nil)
                }
            }
    )}
    
}
