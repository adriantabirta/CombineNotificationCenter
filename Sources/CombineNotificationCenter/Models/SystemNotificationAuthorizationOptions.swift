//
//  SystemNotificationAuthorizationOptions.swift
//  
//
//  Created by Adrian Tabirta on 10.03.2023.
//

import Foundation

public struct SystemNotificationAuthorizationOptions: OptionSet {
   
    public let rawValue: UInt
    
    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }

    public static let badge = SystemNotificationAuthorizationOptions(rawValue: 1 << 0)

    public static let sound = SystemNotificationAuthorizationOptions(rawValue: 1 << 1)
    
    public static let alert = SystemNotificationAuthorizationOptions(rawValue: 1 << 2)
    
    public static let carPlay = SystemNotificationAuthorizationOptions(rawValue: 1 << 3)
  
    public static let criticalAlert = SystemNotificationAuthorizationOptions(rawValue: 1 << 4)
   
    public static let providesAppNotificationSettings = SystemNotificationAuthorizationOptions(rawValue: 1 << 5)

    public static let provisional = SystemNotificationAuthorizationOptions(rawValue: 1 << 6)

    public static let announcement = SystemNotificationAuthorizationOptions(rawValue: 1 << 7)
  
    public static let timeSensitive = SystemNotificationAuthorizationOptions(rawValue: 1 << 8)
}
