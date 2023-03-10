//
//  SystemNotificationResponse.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Foundation

public struct SystemNotificationResponse {
    
    // MARK: - Properties
    
    public let userInfo: [AnyHashable: Any]
    
    // MARK: - Init
    
    public init(userInfo: [AnyHashable : Any]) {
        self.userInfo = userInfo
    }
}
