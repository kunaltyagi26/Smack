//
//  GradientView.swift
//  Smack
//
//  Created by Kunal Tyagi on 10/11/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
 
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1)
        {
            didSet
            {
                self.setNeedsLayout()
            }
        }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1)
    {
        didSet
        {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews()
    { 
        let gradientColor = CAGradientLayer()
        gradientColor.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientColor.startPoint = CGPoint(x: 0, y: 0)
        gradientColor.endPoint = CGPoint(x: 1, y: 1)
        gradientColor.frame = self.bounds
        self.layer.insertSublayer(gradientColor, at: 0)
    }
    
}
