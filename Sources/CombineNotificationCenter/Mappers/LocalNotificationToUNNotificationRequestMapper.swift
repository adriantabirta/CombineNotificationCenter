//
//  LocalNotificationToUNNotificationRequestMapper.swift
//  
//
//  Created by Adrian Tabirta on 10.03.2023.
//

import NotificationCenter

struct LocalNotificationToUNNotificationRequestMapper {
    
    func map(from model: SystemLocalNotification) -> UNNotificationRequest {
        .init(
            identifier: UUID().uuidString,
            content: buildNotificationContent(from: model),
            trigger: nil
        )
    }
    
    private func buildNotificationContent(from systemLocalNotification: SystemLocalNotification) -> UNMutableNotificationContent {
        let content = UNMutableNotificationContent()
        content.userInfo = systemLocalNotification.userInfo
        content.title = systemLocalNotification.title
        content.subtitle = systemLocalNotification.subtitle
        content.body = systemLocalNotification.body
        content.sound = .default
        return content
    }
}
