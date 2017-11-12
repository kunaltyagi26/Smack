//
//  LoginVC.swift
//  Smack
//
//  Created by Kunal Tyagi on 12/11/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var closePressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closePressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton)
    {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
