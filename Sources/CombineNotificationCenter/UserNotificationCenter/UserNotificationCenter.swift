//
//  UserNotificationCenter.swift
//  MyLoyalty
//
//  Created by at-plan-net on 06.03.2023.
//

import Combine
import Foundation

public protocol UserNotificationCenter {
        
    func add(_ systemLocalNotification: SystemLocalNotification) -> AnyPublisher<Void, Error>
    
    func getNotificationSettings() -> AnyPublisher<SystemNotificationAuthorizationStatus, Never>

    func requestAuthorization(options: SystemNotificationAuthorizationOptions) -> AnyPublisher<(Bool, Error?), Never>
}
