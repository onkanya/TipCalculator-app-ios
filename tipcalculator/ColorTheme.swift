//
//  ColorTheme.swift
//  tipcalculator
//
//  Created by Mac on 16/11/19.
//  Copyright © 2019 mean. All rights reserved.
//

import Foundation

import UIKit

struct ColorTheme {
    
    // MARK: - Instance Vars
    
    let isDefaultStatusBar: Bool
    let viewControllerBackgroundColor: UIColor
    
    let primaryColor: UIColor
    let primaryTextColor: UIColor
    
    let secondaryColor: UIColor
    
    let accentColor: UIColor
    let outputTextColor: UIColor
    
    // MARK: - Class Vars

    static let light = ColorTheme(isDefaultStatusBar: true,
                                  viewControllerBackgroundColor: .init(red:0.80, green:0.80, blue:0.80, alpha:1.0),
                                  primaryColor: .white,
                                  primaryTextColor: .lightGray,
                                  secondaryColor: .init(red:0.00, green:0.00, blue:0.20, alpha:1.0),
                                  accentColor: .init(red:1.00, green:0.20, blue:0.40, alpha:1.0),
                                  outputTextColor: .darkGray)

    static let dark = ColorTheme(isDefaultStatusBar: false,
                                 viewControllerBackgroundColor: .black,
                                 primaryColor: .init(red:0.20, green:0.20, blue:0.20, alpha:1.0),
                                 primaryTextColor: .white,
                                 secondaryColor: .init(red:0.40, green:0.40, blue:0.40, alpha:1.0),
                                 accentColor: .init(red:0.00, green:0.80, blue:0.80, alpha:1.0),
                                 outputTextColor: .white)
}
