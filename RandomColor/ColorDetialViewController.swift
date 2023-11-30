//
//  ColorDatialViewController.swift
//  RandomColor
//
//  Created by Hari Rait on 30.11.23.
//

import UIKit

class ColorDetialViewController: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
}
