//
//  LoginResponse.swift
//  On The Map
//
//  Created by Jimit Raval on 23/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation

struct LoginResponse: Codable {
    let account: Account
    let session: Session
}

struct Account: Codable {
    let registered: Bool
    let key: String
}
