//
//  WelcomeViewModel.swift
//  AppleCalendar
//
//  Created by Lê Tiến Đạt on 23/3/25.
//

import Foundation

final class WelcomeViewModel {
    let listWhatNew: [ItemWhatNew] = [
        ItemWhatNew(iconString: "icon-mail-what-new", title: "Found Events", content: "Siri suggests events found in Mail, Messages, and Safari, so you can add them easily, such as flight reservations and hotel bookings."),
        ItemWhatNew(iconString: "icon-clock-what-new", title: "Time to Leave", content: "Calendar uses Apple Maps to look up locations, traffic conditions, and transit options to tell vou when it’s time to leave."),
        ItemWhatNew(iconString: "icon-location-what-new", title: "Location Suggestions", content: "Calendar suggests locations based on your past events and significant locations."),
    ]
}
