//
//  SystemNotificationPresentationOptions.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Foundation

public struct SystemNotificationPresentationOptions: OptionSet {
  
    public let rawValue: UInt
    
    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }
    
    public static let badge = SystemNotificationPresentationOptions(rawValue: 1 << 0)

    public static let sound = SystemNotificationPresentationOptions(rawValue: 1 << 1)

    public static let alert = SystemNotificationPresentationOptions(rawValue: 1 << 2)

    public static let list = SystemNotificationPresentationOptions(rawValue: 1 << 3)

    public static let banner = SystemNotificationPresentationOptions(rawValue: 1 << 4)
}
