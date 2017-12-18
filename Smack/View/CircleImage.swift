//
//  CircleImage.swift
//  Smack
//
//  Created by Kunal Tyagi on 06/12/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    override func awakeFromNib() {
        self.setUpView()
    }
    
    func setUpView()
    {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
}
