//
//  AppContext.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import Foundation
import SwiftyUserDefaults

class AppContext {
    static let shared = AppContext()
    
    private(set) var isFirstLaunch: Bool
    
    required init() {
        isFirstLaunch = Defaults[\.isFirstLaunch]
    }
    
    func setIsFirstLaunch(isFirstLaunch: Bool) {
        self.isFirstLaunch = isFirstLaunch
        Defaults[\.isFirstLaunch] = isFirstLaunch
    }
}
