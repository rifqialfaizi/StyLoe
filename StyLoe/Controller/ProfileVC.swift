//
//  LogOutVC.swift
//  StyLoe
//
//  Created by Rifqi Alfaizi on 14/01/19.
//  Copyright © 2019 Rifqi Alfaizi. All rights reserved.
//

import UIKit
import Firebase

class ProfileVC: UIViewController {
    
    @IBOutlet weak var congratulationsLbl: UILabel!
    @IBOutlet weak var signoutBtn: UIButton!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       guard let username = Auth.auth().currentUser?.displayName else {return}
        
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.userEmail.text = Auth.auth().currentUser?.email
    }

    
    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "signOutSegue", sender: nil)
        }catch {
            print(error)
        }
    }
    

    }

