//
//  RealSystemScheduleImmediateLocalNotificationUseCase.swift
//  MyLoyalty
//
//  Created by at-plan-net on 06.03.2023.
//

import Combine

public struct RealSystemScheduleImmediateLocalNotificationUseCase {
    
    // MARK: - Properties
    
    private let userNotificationCenter: UserNotificationCenter
    
    // MARK: - Init
    
    public init(_ userNotificationCenter: UserNotificationCenter) {
        self.userNotificationCenter = userNotificationCenter
    }
}

// MARK: - SystemScheduleImmediateLocalNotificationUseCase

extension RealSystemScheduleImmediateLocalNotificationUseCase: SystemScheduleImmediateLocalNotificationUseCase {
    
    public func execute(_ systemLocalNotification: SystemLocalNotification) -> AnyPublisher<Void, Error> {
        userNotificationCenter.add(systemLocalNotification)
    }
}
