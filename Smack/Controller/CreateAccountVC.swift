//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Kunal Tyagi on 12/11/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton)
    {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func pickAvatarPressed(_ sender: UIButton) {
    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        guard let email = emailTxt.text, emailTxt.text != "" else { return }
        guard let password = passTxt.text, passTxt.text != "" else { return }
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success
            {
                print("Registered User!")
            }
        }
    }
    
    @IBAction func pickBGColorPressed(_ sender: UIButton) {
    }
    
}
