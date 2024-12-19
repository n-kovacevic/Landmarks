//
//  Profile.swift
//  Landmarks
//
//  Created by Nikola Kovacevic on 19.12.24..
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "n_kovacevic")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌺"
        case summer = "☀️"
        case autumn = "🍁"
        case winter = "❄️"
        
        var id: String { self.rawValue }
    }
}
