//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Shayan ansari on 21/05/18.
//  Copyright © 2018 Shayan ansari. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
