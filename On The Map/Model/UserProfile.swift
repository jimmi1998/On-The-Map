//
//  UserProfile.swift
//  On The Map
//
//  Created by Jimit Raval on 23/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation

struct UserProfile: Codable {
    let firstName: String
    let lastName: String
    let nickname: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case nickname
    }
}
