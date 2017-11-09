//
//  ChannelVC.swift
//  Smack
//
//  Created by Kunal Tyagi on 10/11/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
