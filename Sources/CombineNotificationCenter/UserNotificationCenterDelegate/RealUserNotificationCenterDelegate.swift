//
//  RealUserNotificationCenterDelegate.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Combine
import NotificationCenter

class RealUserNotificationCenterDelegate: NSObject {
    
    // MARK: - Properties
    
    private var notificationPresentationOptions: SystemNotificationPresentationOptions = []
    
    private let willPresentNotificationPassthroughSubject = PassthroughSubject<Void, Never>()
    
    private let didReceivePassthroughSubject = PassthroughSubject<SystemNotificationResponse, Never>()
}

// MARK: - UserNotificationCenterDelegate

extension RealUserNotificationCenterDelegate: UserNotificationCenterDelegate {
    
    func willPresentNotification(use options: SystemNotificationPresentationOptions) -> AnyPublisher<Void, Never> {
        notificationPresentationOptions = options
        return willPresentNotificationPassthroughSubject.eraseToAnyPublisher()
    }
    
    var didReceiveResponseStream: AnyPublisher<SystemNotificationResponse, Never> {
        didReceivePassthroughSubject.eraseToAnyPublisher()
    }
}

// MARK: - UNUserNotificationCenterDelegate

extension RealUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler(.init(rawValue: notificationPresentationOptions.rawValue))
        willPresentNotificationPassthroughSubject.send(())
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        didReceivePassthroughSubject.send(SystemNotificationResponse(userInfo: response.notification.request.content.userInfo))
        completionHandler()
    }
}

