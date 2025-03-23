//
//  UITableView+Ext.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import Foundation
import UIKit

extension UITableViewCell {
    static var nib: UINib {
        UINib(nibName: String(describing: self), bundle: nil)
    }

    static var reuseIdentifier: String {
        String(describing: self)
    }
}
