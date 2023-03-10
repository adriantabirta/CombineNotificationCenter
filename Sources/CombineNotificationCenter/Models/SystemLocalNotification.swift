//
//  SystemLocalNotification.swift
//  
//
//  Created by Adrian Tabirta on 10.03.2023.
//

public struct SystemLocalNotification: Codable, Equatable {
    
    public let title: String
    
    public let subtitle: String
    
    public let body: String
    
    public let userInfo: [String: String]
    
    public let deeplink: String
    
    public init(title: String, subtitle: String, body: String, userInfo: [String : String], deeplink: String) {
        self.title = title
        self.subtitle = subtitle
        self.body = body
        self.userInfo = userInfo
        self.deeplink = deeplink
    }
}
