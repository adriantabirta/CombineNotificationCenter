//
//  UserNotificationCenterDelegate.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Combine
import UserNotifications

public protocol UserNotificationCenterDelegate: UNUserNotificationCenterDelegate {
    
    func willPresentNotification(use options: SystemNotificationPresentationOptions) -> AnyPublisher<Void, Never>
    
    var didReceiveResponseStream: AnyPublisher<SystemNotificationResponse, Never> { get }
}
