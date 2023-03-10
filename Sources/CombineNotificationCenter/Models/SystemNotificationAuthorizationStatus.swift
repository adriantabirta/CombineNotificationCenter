//
//  SystemNotificationAuthorizationStatus.swift
//  
//
//  Created by Adrian Tabirta on 10.03.2023.
//

import Foundation

public enum SystemNotificationAuthorizationStatus: Int {
    
    case notDetermined = 0
    
    case denied = 1
    
    case authorized = 2
    
    case provisional = 3
}

// MARK: - CustomStringConvertible

extension SystemNotificationAuthorizationStatus: CustomStringConvertible {
    
    public var description: String {
        switch self {
        case .notDetermined: return "notDetermined"
        case .denied: return "denied"
        case .authorized: return "authorized"
        case .provisional: return "provisional"
        }
    }
}
