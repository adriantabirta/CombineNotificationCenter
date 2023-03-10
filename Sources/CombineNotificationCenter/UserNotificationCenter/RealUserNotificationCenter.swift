//
//  RealUserNotificationCenter.swift
//  MyLoyalty
//
//  Created by at-plan-net on 06.03.2023.
//

import Combine
import UserNotifications

public struct RealUserNotificationCenter {
    
    // MARK: - Properties
    
    private let userNotificationCenter = UNUserNotificationCenter.current()
    
    private let userNotificationCenterDelegate: UserNotificationCenterDelegate
    
    public init(_ userNotificationCenterDelegate: UserNotificationCenterDelegate) {
        self.userNotificationCenterDelegate = userNotificationCenterDelegate
    }
}

// MARK: - UserNotificationCenter

extension RealUserNotificationCenter: UserNotificationCenter {
    
    public func add(_ systemLocalNotification: SystemLocalNotification) -> AnyPublisher<Void, Error> {
        Future { promise in
            let notification = LocalNotificationToUNNotificationRequestMapper().map(from: systemLocalNotification)
            userNotificationCenter.add(notification, withCompletionHandler: { error in
                if let error = error {
                    promise(.failure(error))
                } else {
                    promise(.success(Void()))
                }
            })
        }.eraseToAnyPublisher()
    }
    
    public func getNotificationSettings() -> AnyPublisher<SystemNotificationAuthorizationStatus, Never> {
        Future { promise in
            userNotificationCenter.getNotificationSettings { settings in
                guard let status = SystemNotificationAuthorizationStatus(rawValue: settings.authorizationStatus.rawValue) else { return }
                promise(.success(status))
            }
        }.eraseToAnyPublisher()
    }
    
    public func requestAuthorization(options: SystemNotificationAuthorizationOptions) -> AnyPublisher<(Bool, Error?), Never> {
        Future { promise in
            userNotificationCenter.requestAuthorization(options: UNAuthorizationOptions(rawValue: options.rawValue)) { status, error in
                promise(.success((status, error)))
            }
        }.eraseToAnyPublisher()
    }
}
