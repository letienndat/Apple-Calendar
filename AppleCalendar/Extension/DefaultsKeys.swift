//
//  DefaultsKeys.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import Foundation
import SwiftyUserDefaults

extension DefaultsKeys {
    var isFirstLaunch: DefaultsKey<Bool> { .init("isFirstLaunch", defaultValue: true) }
}
