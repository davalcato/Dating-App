//
//  AppSettings.swift
//  Dating Login
//
//  Created by Daval Cato on 5/11/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import Foundation
import Combine

@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T
    
    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

final class AppSettings: ObservableObject {
    private enum SettingKey: String {
         case username
    }
    
    let objectWillChange = ObservableObjectPublisher()
    
    @UserDefault(SettingKey.username.rawValue, defaultValue: "")
    var username: String {
        willSet {
            objectWillChange.send()
        }
    }
}
