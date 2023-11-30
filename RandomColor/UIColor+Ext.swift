//
//  UIColor+Ext.swift
//  RandomColor
//
//  Created by Hari Rait on 30.11.23.
//

import UIKit

extension UIColor {
    
    // Hier kreieren wir eine zufällige Farbe. In einem neuen File damit es reusable ist
    static func random() -> UIColor {
        
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
