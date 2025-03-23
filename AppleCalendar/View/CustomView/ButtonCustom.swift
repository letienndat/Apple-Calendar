//
//  ButtonCustom.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import UIKit

@IBDesignable
class ButtonCustom: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

}
