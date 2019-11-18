//
//  BillAmountTextField.swift
//  tipcalculator
//
//  Created by Mac on 16/11/19.
//  Copyright © 2019 mean. All rights reserved.
//

import Foundation

import UIKit

class BillAmountTextField: UITextField {
    
    // MARK: -Properties
    
    var calculateButtonAction: (() -> Void)?
    
    // MARK: -View Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let toolbar: UIToolbar = UIToolbar()
        
        let leadingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trailingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let calculateButton = UIBarButtonItem(title: "Calculate Tip", style: .done, target: self, action: #selector(calculateButtonTapped))
        toolbar.items = [leadingFlex, calculateButton, trailingFlex]
        // resize toolbar
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
    @objc private func calculateButtonTapped(_ sender: UIBarButtonItem) {
        
        calculateButtonAction?()
    }

}
