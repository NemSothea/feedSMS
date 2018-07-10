//
//  ShadowView.swift
//  feedSMS
//
//  Created by SotheaNem on 7/10/18.
//  Copyright © 2018 Sothea. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }
}
