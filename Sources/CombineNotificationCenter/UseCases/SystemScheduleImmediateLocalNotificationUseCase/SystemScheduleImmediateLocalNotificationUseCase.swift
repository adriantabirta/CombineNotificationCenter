//
//  SystemScheduleImmediateLocalNotificationUseCase.swift
//  MyLoyalty
//
//  Created by at-plan-net on 06.03.2023.
//

import Combine

public protocol SystemScheduleImmediateLocalNotificationUseCase {
    
    func execute(_ systemLocalNotification: SystemLocalNotification) -> AnyPublisher<Void, Error>
}
