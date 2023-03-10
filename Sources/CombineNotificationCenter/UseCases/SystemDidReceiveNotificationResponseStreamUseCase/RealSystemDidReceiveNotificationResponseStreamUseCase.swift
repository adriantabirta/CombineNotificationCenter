//
//  RealSystemDidReceiveNotificationResponseStreamUseCase.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Combine

public struct RealSystemDidReceiveNotificationResponseStreamUseCase {
    
    // MARK: - Properties
    
    private let userNotificationCenterDelegate: UserNotificationCenterDelegate
    
    // MARK: - Init
    
    public init(_ userNotificationCenterDelegate: UserNotificationCenterDelegate) {
        self.userNotificationCenterDelegate = userNotificationCenterDelegate
    }
}

// MARK: - SystemDidReceiveNotificationResponseStreamUseCase

extension RealSystemDidReceiveNotificationResponseStreamUseCase: SystemDidReceiveNotificationResponseStreamUseCase {
    
    public func execute() -> AnyPublisher<SystemNotificationResponse, Never> {
        userNotificationCenterDelegate.didReceiveResponseStream
    }
}
