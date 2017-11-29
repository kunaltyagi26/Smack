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
    
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
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
        guard let name = userNameTxt.text, userNameTxt.text != "" else { return }
        guard let email = emailTxt.text, emailTxt.text != "" else { return }
        guard let password = passTxt.text, passTxt.text != "" else { return }
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success
            {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success
                    {
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success
                            {
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                })
            }
        }
    }
    
    @IBAction func pickBGColorPressed(_ sender: UIButton) {
    }
    
}
