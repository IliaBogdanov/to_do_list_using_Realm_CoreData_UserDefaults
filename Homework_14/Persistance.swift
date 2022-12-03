//
//  Persistance.swift
//  Homework_14
//
//  Created by Илья Богданов on 30.11.2022.
//

import Foundation

class Persistance {
    static let shared = Persistance()
    private let userNameKey = "PersistanceUserNameKey"
    private let userSurnameKey = "PersistanceUserSurnameKey"
    
    var userName: String? {
        set {UserDefaults.standard.set(newValue, forKey: userNameKey)}
        get {return UserDefaults.standard.string(forKey: userNameKey)
        }
    }
    var userSurname: String? {
        set {UserDefaults.standard.set(newValue, forKey: userSurnameKey)}
        get {return UserDefaults.standard.string(forKey: userSurnameKey)
        }
    }
}
