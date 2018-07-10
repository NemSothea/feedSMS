//
//  InsetTextField.swift
//  feedSMS
//
//  Created by SotheaNem on 7/10/18.
//  Copyright © 2018 Sothea. All rights reserved.
//

import UIKit

class InsetTextField:UITextField {
    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    func setupView() {
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor:#colorLiteral(red: 0.5607843137, green: 0.8117647059, blue: 0.3058823529, alpha: 1)])
        self.attributedPlaceholder = placeholder
    }
}
