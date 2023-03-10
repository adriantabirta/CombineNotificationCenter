//
//  RealSystemWillPresentNotificationUseCase.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Combine

public struct RealSystemWillPresentNotificationUseCase {
   
    // MARK: - Properties
    
    private let userNotificationCenterDelegate: UserNotificationCenterDelegate
    
    // MARK: - Init
    
    public init(_ userNotificationCenterDelegate: UserNotificationCenterDelegate) {
        self.userNotificationCenterDelegate = userNotificationCenterDelegate
    }
}

// MARK: - SystemWillPresentNotificationUseCase

extension RealSystemWillPresentNotificationUseCase: SystemWillPresentNotificationUseCase {
    
    public func execute(use options: SystemNotificationPresentationOptions) -> AnyPublisher<Void, Never> {
        userNotificationCenterDelegate.willPresentNotification(use: options)
    }
}
