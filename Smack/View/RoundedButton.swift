//
//  RoundedButton.swift
//  Smack
//
//  Created by Kunal Tyagi on 21/11/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 3.0
    {
        didSet
        {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView()
    {
        self.layer.cornerRadius = cornerRadius
    }
}
