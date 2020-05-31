//
//  LoginAndPassword.swift
//  AuthorizationScreenApp
//
//  Created by Egor Ukolov on 31.05.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import Foundation

struct User {
    
    let login: String
    let password: String
    
}
      
extension User {
    static func getLogin() -> [User] {
        return [User(login: "user", password: "qwerty")]
    }
}
    
    
    

